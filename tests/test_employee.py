import csv
import pytest
import requests
import os

API_URL = "http://127.0.0.1:5000/api/employee"


def load_test_data():
    base_dir = os.path.dirname(__file__)
    csv_path = os.path.join(base_dir, "data/test_employee.csv")

    with open(csv_path, encoding="utf-8-sig") as f:
        reader = csv.DictReader(f)

        return [
            (
                row["ID"],
                row["Description"],
                row["EmployeeID"],
                row["ExpectedStatus"],
                row["ExpectedMessage"]
            )
            for row in reader
        ]


TEST_DATA = load_test_data()


@pytest.mark.parametrize(
    "tc_id,desc,emp_id,expected_status,expected_message",
    TEST_DATA,
    ids=[row[0] for row in TEST_DATA]
)
def test_get_employee(tc_id, desc, emp_id, expected_status, expected_message):

    response = requests.get(f"{API_URL}/{emp_id}")

    # ❗ chống crash JSON
    try:
        json_data = response.json()
    except Exception:
        pytest.fail(f"""
        API không trả JSON!
        Status: {response.status_code}
        Response: {response.text}
        """)

    # check status
    assert response.status_code == int(expected_status)

    # check message
    assert json_data["message"] == expected_message

    # check data nếu success
    if response.status_code == 200:
        assert json_data["data"]["EmployeeID"] == int(emp_id)
        
        
    print("STATUS:", response.status_code)
    print("JSON:", json_data)