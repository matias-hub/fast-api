"""
Session shorthands.
"""

from app.database.user import session as users_session

def session_selection(self):
    """
    Assigns the correct DBA to the session.
    """

    if self.__bind_key__ == "users":
        return users_session


def add(self):
    """
    Adds a new value to the database.
    It's considered an INSERT not an UPDATE.
    """

    session = session_selection(self)
    session.add(self)


def commit(self):
    """
    Commits final changes to the database.
    """

    session = session_selection(self)
    session.commit()


def delete(self):
    """
    Deletes a value form database.
    Commiting changes is needed before completting this session.
    """

    session = session_selection(self)
    session.delete(self)


def flush(self):
    """
    Accepts changes to database without making final commits.
    """

    session = session_selection(self)
    session.flush()


def close(self):
    """
    Closes this Session.
    This clears all items and ends any transaction in progress.
    """

    session = session_selection(self)
    session.close()


def rollback(self):
    """
    Used to UNDO changes to database from the current session.
    Helpful for when writting to DB fails to go through.
    """

    session = session_selection(self)
    session.rollback()
