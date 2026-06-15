import csv
import os
from unittest.mock import Mock

import pytest

from services.employee_service import EmployeeService
from models.employee_model import Employee


def load_test_data():
    csv_file = os.path.join(
        os.path.dirname(__file__),
        "data",
        "test_update_employee.csv"
    )
    with open(csv_file, newline="", encoding="utf-8") as file:
        return list(csv.DictReader(file))


@pytest.mark.parametrize("row", load_test_data())
def test_update_employee(row):
    # Mock repository
    repo = Mock()

    # Fake database độc lập cho từng testcase
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

    # 1. Mock get_by_id
    repo.get_by_id.side_effect = lambda emp_id: fake_db.get(emp_id)

    # 2. FIX: Mock email_exists dựa trên email hiện tại trong fake_db
    # Trả về True nếu tìm thấy bất kỳ ai (khác employee hiện tại nếu logic chuẩn) có email này
    repo.email_exists.side_effect = lambda email: any(
        emp.email == email for emp in fake_db.values()
    )

    # 3. Mock update
    def fake_update(emp_id, employee):
        fake_db[emp_id] = employee
        return employee

    repo.update.side_effect = fake_update

    # Inject mock repo
    service = EmployeeService()
    service.repo = repo

    # Ép kiểu dữ liệu từ CSV
    employee_id = int(row["employee_id"]) if row["employee_id"] else None
    expected_error = row["expected_error"]

    employee = Employee(
        employee_id=employee_id,
        full_name=row["full_name"],
        email=row["email"],
        date_of_birth=row["date_of_birth"]
    )

    print("\n" + "=" * 60)
    print(f"Employee ID : {employee_id}")
    print(f"Full Name   : {employee.full_name}")
    print(f"Email       : {employee.email}")
    print(f"DOB         : {employee.date_of_birth}")
    print(f"Expected    : {expected_error}")

    # Nhánh test các kịch bản lỗi (Exception)
    if expected_error:
        with pytest.raises(ValueError) as exc_info:
            service.update_employee(employee_id, employee)

        actual_error = str(exc_info.value)
        print(f"Actual      : {actual_error}")

        assert actual_error == expected_error, (
            f"\nExpected: {expected_error}"
            f"\nActual  : {actual_error}"
        )

    # Nhánh test kịch bản thành công (Happy Path)
    else:
        result = service.update_employee(employee_id, employee)

        # Kiểm tra kết quả trả về đúng object mong muốn
        assert result == employee

        # Xác minh các hàm Mock bên trong đã được gọi đúng chuẩn
        repo.get_by_id.assert_called_with(employee_id)
        repo.update.assert_called_with(employee_id, employee)

        # Xác minh dữ liệu trong "database giả" thực sự đã bị thay đổi
        assert fake_db[employee_id] == employee
        print("Update successful -> Pass Basic Path 10!")