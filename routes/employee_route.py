from flask import Blueprint
from controllers.employee_controller import EmployeeController

employee_bp = Blueprint("employee_bp", __name__)

@employee_bp.route("/employees", methods=["GET"])
def get_all():
    return EmployeeController.get_all()

@employee_bp.route("/employee/<int:id>", methods=["GET"])
def get_one(id):
    return EmployeeController.get_one(id)

@employee_bp.route("/employees", methods=["POST"])
def create():
    return EmployeeController.create()

@employee_bp.route("/employees/<int:id>", methods=["PUT"])
def update(id):
    return EmployeeController.update(id)

@employee_bp.route("/employees/<int:id>", methods=["DELETE"])
def delete(id):
    return EmployeeController.delete(id)