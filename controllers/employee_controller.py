from flask import request, jsonify

from services.employee_service import EmployeeService
from models.employee_model import Employee

service = EmployeeService()


class EmployeeController:

    @staticmethod
    def get_all():
        try:
            employees = service.get_all_employees()

            return jsonify({
                "message": "Success",
                "data": [
                    employee.to_dict()
                    for employee in employees
                ]
            }), 200

        except Exception as e:
            return jsonify({
                "message": "Error",
                "error": str(e)
            }), 500

    @staticmethod
    def get_one(employee_id):
        try:
            employee = service.get_employee_by_id(employee_id)

            if not employee:
                return jsonify({
                    "message": "Not Found"
                }), 404

            return jsonify({
                "message": "Successfully",
                "data": employee.to_dict()
            }), 200

        except ValueError as e:
            return jsonify({
                "message": str(e)
            }), 400

        except Exception as e:
            return jsonify({
                "message": "Error",
                "error": str(e)
            }), 500

    @staticmethod
    def create():
        try:
            data = request.get_json()

            employee = Employee(
                full_name=data.get("FullName"),
                email=data.get("Email"),
                phone_number=data.get("PhoneNumber"),
                gender=data.get("Gender"),
                date_of_birth=data.get("DateOfBirth"),
                department_id=data.get("DepartmentID"),
                hire_date=data.get("HireDate"),
                position_id=data.get("PositionID"),
                status=data.get("Status")
            )

            service.create_employee(employee)

            return jsonify({
                "message": "Employee created successfully"
            }), 201

        except ValueError as e:
            return jsonify({
                "message": str(e)
            }), 400

        except Exception as e:
            return jsonify({
                "message": "Error",
                "error": str(e)
            }), 500

    @staticmethod
    def update(employee_id):
        try:
            data = request.get_json()

            employee = Employee(
                full_name=data.get("FullName"),
                email=data.get("Email"),
                phone_number=data.get("PhoneNumber"),
                gender=data.get("Gender"),
                date_of_birth=data.get("DateOfBirth"),
                department_id=data.get("DepartmentID"),
                position_id=data.get("PositionID")
            )

            service.update_employee(employee_id, employee)

            return jsonify({
                "message": "Employee updated successfully"
            }), 200

        except ValueError as e:
            return jsonify({
                "message": str(e)
            }), 400

        except Exception as e:
            return jsonify({
                "message": "Error",
                "error": str(e)
            }), 500

    @staticmethod
    def delete(employee_id):
        try:
            service.delete_employee(employee_id)

            return jsonify({
                "message": "Employee deleted successfully"
            }), 200

        except ValueError as e:
            return jsonify({
                "message": str(e)
            }), 404

        except Exception as e:
            return jsonify({
                "message": "Error",
                "error": str(e)
            }), 500