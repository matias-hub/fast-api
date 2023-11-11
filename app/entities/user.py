from pydantic import BaseModel

class User(BaseModel):
    id: int
    username: str
    email: str
    full_name: str
    age: int

class UserCreate(BaseModel):
    username: str
    email: str
    full_name: str

class UserUpdate(BaseModel):
    username: str
    email: str
    full_name: str
    age: int