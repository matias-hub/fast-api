import traceback
from typing import Optional, List

from app.entities.user import User
from app.database.user import Users

def get_all_users(page: int, limit: int, sort_by: str, sort_direction: str) -> Optional[List[User]]:
    """
    Gets a user from the database by user_id.
    """
    print( page, limit, sort_by, sort_direction)

    try:

        if sort_by and sort_direction and page and limit:
            print("sort_by and sort_direction and page and limit:")
            db_user_users: Users = Users.get_users_sorted_and_paginated(sort_by= sort_by, sort_direction = sort_direction ,page = page, limit = limit)
        if sort_by and sort_direction:
            print("if sort_by and sort_direction:")
            db_user_users: Users = Users.get_users_sorted(sort_by= sort_by, sort_direction = sort_direction)
        if page and limit:
            print("if page and limit:")
            db_user_users: Users = Users.get_users_paginated(page= page, limit = limit)
        else:
            db_user_users: Users = Users.get_all_users()

        print(db_user_users)
        
        if db_user_users is None:
            return None
        
        list_of_users: List[User] = []
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
            list_of_users.append(user)

        return list_of_users

    except Exception:
        traceback.print_exc()
        return None