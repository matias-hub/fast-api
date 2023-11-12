"""
User ORM.
"""

from sqlalchemy import Column, Integer, String
from app.database.database import base, custom_session


session = custom_session("user")

class Users(base):
    """
    User table ORM database.
    """

    __bind_key__ = "users"
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True, nullable=False, unique=True, autoincrement=True)
    wallet_id = Column("wallet_id", String(45), nullable=False, unique=True)
    email = Column("email", String(45), nullable=False, unique=True)
    name = Column("name", String(45), nullable=False)
    last_name = Column("last_name", String(45), nullable=False)
    sex_type = Column("sex_type", String(45), nullable=False)
    dni = Column("dni", String(45), nullable=False)
    birth_date = Column("birth_date", String(45), nullable=False)
    created_at = Column("created_at", String(45), nullable=False)

    @classmethod
    def get_user_by_id(cls, user_id: int):
        """
        Retrieve a user by their ID.
        Parameters:
        - user_id (int): The ID of the user to retrieve.
        """

        return session.query(cls).filter(cls.id == user_id).first()