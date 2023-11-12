from typing import Optional, List, Dict

from fastapi import APIRouter, HTTPException, Query

from app.entities.user import User, UserCreate, UserUpdate
from app.usecases import create_user, get_user, delete_user, update_user, get_all_users


router = APIRouter()

@router.post("/users/", response_model=Optional[User])
async def create_new_user(user_data: UserCreate):
    user = create_user.create_user(user_data)
    if user is None:
        raise HTTPException(status_code=400, detail="Failed to create user")
    return user

@router.get("/users/{user_id}", response_model=Optional[User])
async def get_single_user(user_id: int):
    user = get_user.get_user(user_id)
    if user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return user

@router.get("/users/", response_model=Optional[List[User]])
async def get_users(page: int = None, limit: int = None, sort_by: str = None, 
                    sort_direction: str = None):
    user = get_all_users.get_all_users(page, limit, sort_by, sort_direction)
    if user is None:
        raise HTTPException(status_code=404, detail="Users not found")
    return user

@router.put("/users/{user_id}", response_model=Optional[User])
async def update_existing_user(user_id: int, update_request: UserUpdate):
    user = update_user.update_user(user_id, update_request)
    if user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return user

@router.delete("/users/{user_id}", response_model=Optional[dict])
async def delete_existing_user(user_id: int):
    user_id = delete_user.delete_user(user_id)
    if user_id is None:
        raise HTTPException(status_code=404, detail="User not found")
    return {"status_code":200, 'user': user_id, "message": "User deleted"}
