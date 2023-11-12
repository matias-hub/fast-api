from pydantic import BaseModel

class User(BaseModel):
    id : int
    wallet_id : str
    email : str
    name :str
    last_name : str
    sex_type : str
    dni : str
    birth_date : str
    created_at : str

class UserCreate(BaseModel):
    wallet_id : str
    email : str
    name :str
    last_name : str
    sex_type : str
    dni : str
    birth_date : str
    created_at : str
    # TODO: add email regex validation

class UserUpdate(BaseModel):
    wallet_id : str
    email : str
    name :str
    last_name : str
    sex_type : str
    dni : str
    birth_date : str
    created_at : str
    # TODO: add email regex validation