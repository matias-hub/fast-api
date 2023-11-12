import traceback
from typing import Optional

from app.entities.user import User
from app.database.user import Users

def get_user(user_id) -> Optional[User]:
    """
    Gets a user from the database by user_id.
    """

    try:
        db_user: Users = Users.get_user_by_id(user_id=user_id)

        if db_user is None:
            return None

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

        return user

    except Exception:
        traceback.print_exc()

        return None