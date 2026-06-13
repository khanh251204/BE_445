from repositories.employee_repository import EmployeeRepository
from models.employee_model import Employee


class EmployeeService:

    def __init__(self):
        self.repo = EmployeeRepository()

    def get_all_employees(self):
        return self.repo.get_all()

    def get_employee_by_id(self, employee_id):

        if employee_id <= 0:
            raise ValueError("Employee ID must be greater than 0")

        return self.repo.get_by_id(employee_id)

    def create_employee(self, employee: Employee):

        if not employee.full_name:
            raise ValueError("Full name is required")

        if not employee.email:
            raise ValueError("Email is required")

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