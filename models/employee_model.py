class Employee:

    def __init__(self,
                 employee_id=None,
                 full_name=None,
                 email=None,
                 phone_number=None,
                 gender=None,
                 date_of_birth=None,
                 department_id=None,
                 position_id=None,
                 status=None,
                 created_at=None,
                 updated_at=None):

        self.employee_id = employee_id
        self.full_name = full_name
        self.email = email
        self.phone_number = phone_number
        self.gender = gender
        self.date_of_birth = date_of_birth
        self.department_id = department_id
        self.position_id = position_id
        self.status = status
        self.created_at = created_at
        self.updated_at = updated_at
        
    def to_dict(self):
        return {
            "EmployeeID": self.employee_id,
            "FullName": self.full_name,
            "Email": self.email,
            "PhoneNumber": self.phone_number,
            "Gender": self.gender,
            "DateOfBirth": self.date_of_birth,
            "DepartmentID": self.department_id,
            "PositionID": self.position_id,
            "Status": self.status,
            "CreatedAt": self.created_at,
            "UpdatedAt": self.updated_at
        }