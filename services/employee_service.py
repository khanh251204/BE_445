from datetime import date, datetime
import re

from repositories.employee_repository import EmployeeRepository
from models.employee_model import Employee


class EmployeeService:

    def __init__(self):
        self.repo = EmployeeRepository()

    def get_all_employees(self):
        return self.repo.get_all()

    def get_employee_by_id(self, employee_id):

        existing_employee = self.repo.get_by_id(employee_id)
        return existing_employee

    def create_employee(self, employee: Employee):

        # Kiem tra full name
        if not employee.full_name:
            raise ValueError("Full name is required")
        
        # Kiem tra full name
        if len(employee.full_name) > 100:
            raise ValueError("Full name cannot exceed 100 characters")
        
        # Kiem tra email
        if not employee.email:
            raise ValueError("Email is required")
        
        # Kiem tra email lớn hơn 100 kí tự
        if len(employee.email) > 100:
            raise ValueError("Email cannot exceed 100 characters")
        
        # Kiểm tra xem đúng định dang email chưa 
        if not re.match(r"^[^@]+@[^@]+\.[^@]+$", employee.email):
            raise ValueError("Invalid email format")
        # Kiểm tra email đã tồn tại chưa
        if self.repo.email_exists(employee.email):
            raise ValueError("Email already exists")
        
        dob = datetime.strptime(
            employee.date_of_birth,
            "%Y-%m-%d"
        ).date()
        today = date.today()
        # Không nhập ngày tương lai
        if dob and dob > today:
            raise ValueError("Date of birth cannot be in the future")
        
        age = today.year - dob.year - ((today.month, today.day) < (dob.month, dob.day))
        # Nhân viên phải từ 18 đến 65 tuổi
        if age < 18 or age > 65:
            raise ValueError("Employee must be between 18 and 65 years old")

        return self.repo.create(employee)

    def update_employee(self, employee_id, employee: Employee):
        
        if not employee_id:
            raise ValueError("Employee ID is required")
        
        if not employee.full_name:
            raise ValueError("Full name is required")
        
        if not employee.email:
            raise ValueError("Email is required")
        
        if not re.match(r"^[^@]+@[^@]+\.[^@]+$", employee.email):
            raise ValueError("Invalid email format")
        
        dob = employee.date_of_birth
        today = date.today()
        if dob and dob > today:
            raise ValueError("Date of birth cannot be in the future")
        
        age = today.year - dob.year - ((today.month, today.day) < (dob.month, dob.day))
        if age < 18 or age > 65:
            raise ValueError("Employee must be between 18 and 65 years old")

        existing_employee = self.repo.get_by_id(employee_id)

        if not existing_employee:
            raise ValueError("Employee not found")

        return self.repo.update(employee_id, employee)

    def delete_employee(self, employee_id):
        
        if not employee_id:
            raise ValueError("Employee ID is required")

        existing_employee = self.repo.get_by_id(employee_id)

        if not existing_employee:
            raise ValueError("Employee not found")

        return self.repo.delete(employee_id)