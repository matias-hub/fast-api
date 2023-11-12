import json

from fastapi.testclient import TestClient

from main import app

client = TestClient(app)

def test_get_single_user():
    response = client.get("/users/1")
    assert response.status_code == 200
    assert type(response.json()) == dict

def test_get_multiple_users():
    response = client.get("/users")
    assert response.status_code == 200
    assert len(response.json()) >= 100   


def test_create_and_delete_user():
    user_info = {
    "wallet_id": "7b989385-555b-4d99-89b2-8f23eb1020e7",
    "email": "Rhea_Waters@hotmail.com",
    "name": "MATI",
    "last_name": "Legros",
    "sex_type": "male",
    "dni": "13283407",
    "birth_date": "1987-06-02T13:30:49.942Z",
    "created_at": "2022-10-16T16:22:07.441Z"
    }

    new_user = client.post("/users", json=user_info)
    new_user_id = new_user.json()["id"]
    user_info["id"] = new_user_id

    response = client.get(f"/users/{new_user_id}")
    assert response.status_code == 200
    assert response.json() == user_info

    response = client.delete(f"/users/{new_user_id}")
    assert response.status_code == 200
    response = client.get(f"/users/{new_user_id}")
    assert response.status_code == 404

def test_update_user():
    user_info = {
    "wallet_id": "7b989385-555b-4d99-89b2-8f23eb1020e7",
    "email": "Rhea_Waters@hotmail.com",
    "name": "MATI",
    "last_name": "Legros",
    "sex_type": "male",
    "dni": "13283407",
    "birth_date": "1987-06-02T13:30:49.942Z",
    "created_at": "2022-10-16T16:22:07.441Z"
    }

    new_user = client.post("/users", json=user_info)
    new_user_id = new_user.json()["id"]
    user_info["id"] = new_user_id
    user_info["sex_type"] = "female"
    user_info_json = json.dumps(user_info)

    response = client.put(f"/users/{new_user_id}", data=user_info_json)
    assert response.status_code == 200
    assert response.json() == user_info

    response = client.delete(f"/users/{new_user_id}")
    assert response.status_code == 200
    response = client.get(f"/users/{new_user_id}")
    assert response.status_code == 404

def test_create_invalid_user():
    user_info = {
    "wallet_id": "7b989385-555b-4d99-89b2-8f23eb1020e7",
    "email": "Rhea_Waters@hotmail.com",
    "name": "MATI",
    "last_name": "Legros",
    "sex_type": 10,
    "dni": "13283407",
    "birth_date": "1987-06-02T13:30:49.942Z",
    "created_at": "2022-10-16T16:22:07.441Z"
    }

    response = client.post("/users", json=user_info)
    assert response.status_code == 422

def test_delete_invalid_user():
    response = client.delete("/users/-1")
    assert response.status_code == 404

def test_get_nonexistent_user():
    response = client.get("/users/999999")
    assert response.status_code == 404

def test_update_nonexistent_user():
    user_info = {
        "wallet_id": "7b989385-555b-4d99-89b2-8f23eb1020e7",
        "email": "Nonexistent_User@example.com",
        "name": "Nonexistent",
        "last_name": "User",
        "sex_type": "male",
        "dni": "98765432",
        "birth_date": "1990-01-01T00:00:00.000Z",
        "created_at": "2022-10-16T16:22:07.441Z"
    }
    response = client.put("/users/999999", json=user_info)
    assert response.status_code == 404

def test_create_user_with_missing_required_fields():
    user_info = {
        "email": "Missing_Fields_User@example.com",
        "sex_type": "female",
        "dni": "12345678",
        "birth_date": "1995-05-05T12:34:56.789Z",
    }
    response = client.post("/users", json=user_info)
    assert response.status_code == 422

def test_get_users_with_pagination():
    response = client.get("/users?page=10&limit=5")
    assert response.status_code == 200
    assert len(response.json()) == 5

def test_search_users_by_name():
    response = client.get("/users?name=John")
    assert response.status_code == 200
    for user in response.json():
        assert "John" in user["name"]

def test_search_users_by_email_domain():
    response = client.get("/users?email_domain=example.com")
    assert response.status_code == 200
    for user in response.json():
        assert "example.com" in user["email"]
