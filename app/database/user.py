"""
User ORM.
"""

from sqlalchemy import Column, Integer, String, desc, asc
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
    
    @classmethod
    def get_all_users(cls):
        """
        Retrieve all user.
        """

        return session.query(cls).all()

    @classmethod
    def get_users_paginated(cls, page: int, limit: int):
        """
        Retrieve users with pagination.
        Parameters:
        - page (int): The page number.
        - limit (int): The number of users per page.
        """
        offset = (page - 1) * limit
        return session.query(cls).offset(offset).limit(limit).all()

    @classmethod
    def get_users_sorted(cls, sort_by: str, sort_direction: str):
        """
        Retrieve users with sorting.
        Parameters:
        - sort_by (str): The column to sort by.
        - sort_direction (str): The direction of sorting (either 'ascending' or 'descending').
        """
        if sort_direction.lower() == 'ascending':
            sort_func = asc
        elif sort_direction.lower() == 'descending':
            sort_func = desc
        else:
            raise ValueError("Invalid sort direction. Use 'ascending' or 'descending'.")

        if hasattr(cls, sort_by):
            sort_column = getattr(cls, sort_by)
            return session.query(cls).order_by(sort_func(sort_column)).all()
        else:
            raise ValueError("Invalid column for sorting.")

    @classmethod
    def get_users_sorted_and_paginated(cls, sort_by: str, sort_direction: str, page: int, limit: int):
        """
        Retrieve users with sorting.
        Parameters:
        - sort_by (str): The column to sort by.
        - sort_direction (str): The direction of sorting (either 'ascending' or 'descending').
        """
        if sort_direction.lower() == 'ascending':
            sort_func = asc
        elif sort_direction.lower() == 'descending':
            sort_func = desc
        else:
            raise ValueError("Invalid sort direction. Use 'ascending' or 'descending'.")

        if hasattr(cls, sort_by):
            sort_column = getattr(cls, sort_by)
            offset = (page - 1) * limit
            return session.query(cls).order_by(desc(sort_column)).offset(offset).limit(limit).all()
        else:
            raise ValueError("Invalid column for sorting.")