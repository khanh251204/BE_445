from config.human import get_connection
from models.employee_model import Employee


def map_row_to_employee(row, columns):
    data = dict(zip(columns, row))

    return Employee(
        employee_id=data.get("EmployeeID"),
        full_name=data.get("FullName"),
        email=data.get("Email"),
        phone_number=data.get("PhoneNumber"),
        gender=data.get("Gender"),
        date_of_birth=data.get("DateOfBirth"),
        department_id=data.get("DepartmentID"),
        position_id=data.get("PositionID"),
        status=data.get("Status"),
        created_at=data.get("CreatedAt"),
        updated_at=data.get("UpdatedAt")
    )


class EmployeeRepository:

    def get_all(self):
        conn = get_connection()

        try:
            cursor = conn.cursor()

            cursor.execute("SELECT * FROM Employees")

            columns = [col[0] for col in cursor.description]
            rows = cursor.fetchall()

            return [map_row_to_employee(row, columns) for row in rows]

        finally:
            conn.close()

    def get_by_id(self, employee_id):
        conn = get_connection()

        try:
            cursor = conn.cursor()

            cursor.execute(
                "SELECT * FROM Employees WHERE EmployeeID = ?",
                (employee_id,)
            )

            row = cursor.fetchone()

            if not row:
                return None

            columns = [col[0] for col in cursor.description]

            return map_row_to_employee(row, columns)

        finally:
            conn.close()

    def create(self, employee: Employee):
        conn = get_connection()

        try:
            cursor = conn.cursor()

            cursor.execute("""
                INSERT INTO Employees
                (
                    FullName,
                    Email,
                    PhoneNumber,
                    Gender,
                    DateOfBirth,
                    DepartmentID,
                    PositionID,
                    Status
                )
                VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            """, (
                employee.full_name,
                employee.email,
                employee.phone_number,
                employee.gender,
                employee.date_of_birth,
                employee.department_id,
                employee.position_id,
                "active"
            ))

            conn.commit()

            return cursor.rowcount > 0

        finally:
            conn.close()

    def update(self, employee_id, employee: Employee):
        conn = get_connection()

        try:
            cursor = conn.cursor()

            cursor.execute("""
                UPDATE Employees
                SET
                    FullName = ?,
                    Email = ?,
                    PhoneNumber = ?,
                    Gender = ?,
                    DateOfBirth = ?,
                    DepartmentID = ?,
                    PositionID = ?
                WHERE EmployeeID = ?
            """, (
                employee.full_name,
                employee.email,
                employee.phone_number,
                employee.gender,
                employee.date_of_birth,
                employee.department_id,
                employee.position_id,
                employee_id
            ))

            conn.commit()

            return cursor.rowcount > 0

        finally:
            conn.close()

    def delete(self, employee_id):
        conn = get_connection()

        try:
            cursor = conn.cursor()

            cursor.execute(
                "DELETE FROM Employees WHERE EmployeeID = ?",
                (employee_id,)
            )

            conn.commit()

            return cursor.rowcount > 0

        finally:
            conn.close()