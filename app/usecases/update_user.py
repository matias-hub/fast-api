import traceback
from typing import Optional

from app.entities.user import User, UserUpdate
from app.database.user import Users
import app.database.session as database_session

def update_user(user_id, update_request: UserUpdate) -> Optional[User]:
    """
    Updates a user from the database by user_id.
    """

    try:
        db_user: Users = Users.get_user_by_id(user_id=user_id)

        if db_user is None:
            return None
        
        db_user.wallet_id = update_request.wallet_id
        db_user.email = update_request.email
        db_user.name = update_request.name
        db_user.last_name = update_request.last_name
        db_user.sex_type = update_request.sex_type
        db_user.dni = update_request.dni
        db_user.birth_date = update_request.birth_date
        db_user.created_at = update_request.created_at

        database_session.commit(db_user)

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
        database_session.rollback(Users)
        database_session.close(Users)
        return None