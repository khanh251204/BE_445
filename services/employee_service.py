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

        if not existing_employee:
            raise ValueError("Employee not found")
        return existing_employee

    def create_employee(self, employee: Employee):

        if not employee.full_name:
            raise ValueError("Full name is required")

        if not employee.email:
            raise ValueError("Email is required")
        
        # Kiểm tra xem đúng định dang email chưa 
        if not re.match(r"^[^@]+@[^@]+\.[^@]+$", employee.email):
            raise ValueError("Invalid email format")
        
        if self.repo.email_exists(employee.email):
            raise ValueError("Email already exists")

        return self.repo.create(employee)

    def update_employee(self, employee_id, employee: Employee):

        existing_employee = self.repo.get_by_id(employee_id)

        if not existing_employee:
            raise ValueError("Employee not found")

        return self.repo.update(employee_id, employee)

    def delete_employee(self, employee_id):

        existing_employee = self.repo.get_by_id(employee_id)

        if not existing_employee:
            raise ValueError("Employee not found")

        return self.repo.delete(employee_id)