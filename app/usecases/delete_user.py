import traceback
from typing import Optional

from app.entities.user import User
from app.database.user import Users
import app.database.session as database_session

def delete_user(user_id) -> Optional[int]:
    """
    Delete a user from the database by user_id.
    """

    try:
        db_user: Users = Users.get_user_by_id(user_id=user_id)

        if db_user is None:
            return None

        database_session.delete(db_user)

        return user_id

    except Exception:
        traceback.print_exc()
        return None