from config.human import get_connection

class EmployeeService:

    # GET ALL
    def get_employees(self):
        conn = get_connection()
        cursor = conn.cursor()

        cursor.execute("SELECT * FROM Employees")

        columns = [col[0] for col in cursor.description]
        rows = cursor.fetchall()

        conn.close()

        return [dict(zip(columns, row)) for row in rows]

    # GET ONE
    def get_employee(self, employee_id):
        conn = get_connection()
        cursor = conn.cursor()

        cursor.execute(
            "SELECT * FROM Employees WHERE id = ?",
            employee_id
        )

        row = cursor.fetchone()
        columns = [col[0] for col in cursor.description]

        conn.close()

        return dict(zip(columns, row)) if row else None

    # CREATE
    def create_employee(self, data):
        conn = get_connection()
        cursor = conn.cursor()

        cursor.execute("""
            INSERT INTO Employees (name, email, phone, status)
            VALUES (?, ?, ?, ?)
        """, data["name"], data["email"], data["phone"], "active")

        conn.commit()
        conn.close()

        return True

    # UPDATE
    def update_employee(self, employee_id, data):
        conn = get_connection()
        cursor = conn.cursor()

        cursor.execute("""
            UPDATE Employees
            SET name = ?, email = ?, phone = ?
            WHERE id = ?
        """, data["name"], data["email"], data["phone"], employee_id)

        conn.commit()
        conn.close()

        return True

    # DELETE
    def delete_employee(self, employee_id):
        conn = get_connection()
        cursor = conn.cursor()

        cursor.execute(
            "DELETE FROM Employees WHERE id = ?",
            employee_id
        )

        conn.commit()
        conn.close()

        return True