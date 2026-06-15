import csv
import os
from unittest.mock import Mock

import pytest

from services.employee_service import EmployeeService
from models.employee_model import Employee


def load_create_test_data():
    # Chỉ đường dẫn tới file CSV test của chức năng Create
    csv_file = os.path.join(
        os.path.dirname(__file__),
        "data",
        "test_create_employee.csv"
    )
    with open(csv_file, newline="", encoding="utf-8") as file:
        return list(csv.DictReader(file))


@pytest.mark.parametrize("row", load_create_test_data())
def test_create_employee(row):
    # Mock repository
    repo = Mock()

    # Fake database ban đầu (chứa các nhân viên đã có sẵn trong hệ thống)
    fake_db = {
        1: Employee(
            employee_id=1,
            full_name="Nguyen Van A",
            email="an.nguyen@company.vn",
            date_of_birth="1995-05-10"
        ),
        2: Employee(
            employee_id=2,
            full_name="Tran Van B",
            email="b@gmail.com",
            date_of_birth="1999-05-10"
        )
    }

    # 1. Mock email_exists: Vẫn cần để check xem email chuẩn bị tạo mới có bị trùng không
    repo.email_exists.side_effect = lambda email: any(
        emp.email == email for emp in fake_db.values()
    )

    # 2. TÁI CẤU TRÚC MOCK CHO HÀM CREATE (Thay vì hàm Update)
    def fake_create(employee_to_create):
        # Tự động sinh ID tiếp theo (ví dụ: max id + 1)
        next_id = max(fake_db.keys(), default=0) + 1
        
        # Gán ID mới cho object nhân viên
        employee_to_create.employee_id = next_id
        
        # Lưu vào database giả lập
        fake_db[next_id] = employee_to_create
        return employee_to_create

    # Giả định hàm lưu trong Repo của bạn tên là 'create' hoặc 'save'
    repo.create.side_effect = fake_create

    # Inject mock repo vào service
    service = EmployeeService()
    service.repo = repo

    expected_error = row["expected_error"]

    # Đối với Create: Object gửi từ Client lên SẼ KHÔNG CÓ ID (employee_id=None)
    employee_input = Employee(
        employee_id=None, 
        full_name=row["full_name"],
        email=row["email"],
        date_of_birth=row["date_of_birth"]
    )

    print("\n" + "=" * 60)
    print(f"Full Name   : {employee_input.full_name}")
    print(f"Email       : {employee_input.email}")
    print(f"DOB         : {employee_input.date_of_birth}")
    print(f"Expected    : {expected_error}")

    # Nhánh 1: Test các kịch bản lỗi khi Create (Trống tên, sai email, trùng email...)
    if expected_error:
        with pytest.raises(ValueError) as exc_info:
            service.create_employee(employee_input)

        actual_error = str(exc_info.value)
        print(f"Actual      : {actual_error}")

        assert actual_error == expected_error, (
            f"\nExpected: {expected_error}"
            f"\nActual  : {actual_error}"
        )

    # Nhánh 2: Test kịch bản Tạo mới Thành công (Happy Path)
    else:
        # Thực thi hàm tạo mới
        result = service.create_employee(employee_input)

        # XÁC MINH KẾT QUẢ CHO CREATE:
        # 1. Kết quả trả về phải là một Object Employee
        assert result is not None
        
        # 2. Hệ thống phải tự động cấp phát ID mới (ID = 3 vì db ban đầu có 1 và 2)
        assert result.employee_id == 3
        
        # 3. Kiểm tra xem dữ liệu trong database giả thực sự đã tăng lên 3 bản ghi chưa
        assert 3 in fake_db
        assert fake_db[3].full_name == employee_input.full_name
        assert fake_db[3].email == employee_input.email

        # 4. Xác minh hàm repo.create đã được gọi trúng
        repo.create.assert_called_once_with(employee_input)
        
        print(f"Create successful -> New Employee ID assigned: {result.employee_id}")