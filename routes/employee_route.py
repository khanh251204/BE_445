from flask import Blueprint
from controllers.employee_controller import EmployeeController

employee_bp = Blueprint("employee_bp", __name__)

@employee_bp.route("/employees", methods=["GET"])
def get_all():
    return EmployeeController.get_all()

@employee_bp.route("/employee/<int:id>", methods=["GET"])
def get_one(id):
    return EmployeeController.get_one(id)

@employee_bp.route("/employee", methods=["POST"])
def create():
    return EmployeeController.create()

@employee_bp.route("/employee/<int:id>", methods=["PUT"])
def update(id):
    return EmployeeController.update(id)

@employee_bp.route("/employee/<int:id>", methods=["DELETE"])
def delete(id):
    return EmployeeController.delete(id)


from config.human import get_connection
import traceback
@employee_bp.route("/health/db")
def health_db():
    try:
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT DB_NAME()")
        db = cursor.fetchone()

        return {
            "status": "ok",
            "db": str(db)
        }

    except Exception as e:
        print("DB ERROR:", e)
        print(traceback.format_exc())
        return {
            "status": "fail",
            "error": str(e)
        }, 500