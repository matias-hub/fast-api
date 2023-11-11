from fastapi import APIRouter, HTTPException

from app.entities.user import User, UserCreate, UserUpdate
from app.usecases import create_user, get_user, delete_user, update_user


router = APIRouter()

@router.post("/users/", response_model=User)
async def create_new_user(user_data: UserCreate):
    user = create_user(user_data)
    if user is None:
        raise HTTPException(status_code=400, detail="Failed to create user")
    return user

@router.get("/users/{user_id}", response_model=User)
async def get_single_user(user_id: int):
    user = get_user.get_user(user_id)
    if user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return user

@router.put("/users/{user_id}", response_model=User)
async def update_existing_user(user_id: int, updated_data: UserUpdate):
    user = update_user(user_id, updated_data)
    if user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return user

@router.delete("/users/{user_id}", response_model=User)
async def delete_existing_user(user_id: int):
    user = delete_user(user_id)
    if user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return user
