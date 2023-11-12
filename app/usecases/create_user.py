import traceback
from typing import Optional

from app.entities.user import User, UserCreate
from app.database.user import Users
import app.database.session as database_session

def create_user(create_request: UserCreate) -> Optional[User]:
    """
    Creates a user in the database by user_id.
    """

    try:
        db_user= Users(
            wallet_id = create_request.wallet_id,
            email = create_request.email,
            name = create_request.name,            
            last_name = create_request.last_name,
            sex_type = create_request.sex_type,
            dni = create_request.dni,
            birth_date = create_request.birth_date,
            created_at = create_request.created_at,
        )

        database_session.add(db_user)
        database_session.flush(db_user)

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