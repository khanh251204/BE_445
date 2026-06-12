from flask import request, jsonify
from services.employee_service import EmployeeService

service = EmployeeService()

class EmployeeController:

    @staticmethod
    def get_all():
        data = service.get_employees()
        return jsonify(data), 200

    @staticmethod
    def get_one(id):
        data = service.get_employee(id)

        if not data:
            return jsonify({"message": "Not found"}), 404

        return jsonify(data), 200

    @staticmethod
    def create():
        data = request.json
        service.create_employee(data)
        return jsonify({"message": "Created"}), 201

    @staticmethod
    def update(id):
        data = request.json
        service.update_employee(id, data)
        return jsonify({"message": "Updated"}), 200

    @staticmethod
    def delete(id):
        service.delete_employee(id)
        return jsonify({"message": "Deleted"}), 200