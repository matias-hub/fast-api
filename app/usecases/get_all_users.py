import traceback
from typing import Optional, List

from app.entities.user import User
from app.database.user import Users

def get_all_users(page: int, limit: int, sort_by: str, sort_direction: str) -> Optional[List[User]]:
    """
    Gets a user from the database by user_id.
    """
    try:
        if sort_by and sort_direction:
            db_user_users: Users = Users.get_users_sorted(sort_by= sort_by, sort_direction = sort_direction)
        if page and limit:
            db_user_users: Users = Users.get_users_paginated(page= page, limit = limit)
        else:
            db_user_users: Users = Users.get_all_users()
        if db_user_users is None:
            return None
        
        users: List[User] = []
        for db_user in db_user_users:

            user = User(
                id = db_user.id,
                wallet_id = db_user.wallet_id,
                email = db_user.email,
                name = db_user.name,            
                last_name = db_user.last_name,
                sex_type = db_user.sex_type,
                dni = db_user.dni,
                birth_date = db_user.birth_date,
                created_at = db_user.created_at,
            )
            users.append(user)
        metadata = {"page": page, "limit": limit}
        response = {"metadata": metadata, "users": users}
        return response

    except Exception:
        traceback.print_exc()
        return None