"""
Database configuration file.
"""
from sqlalchemy import orm, create_engine
from sqlalchemy.ext.declarative import declarative_base
from enum import Enum
import os

# WEBHOOK_ORIGIN = os.getenv('WEBHOOK_ORIGIN')
# MYSQL_USER = os.getenv('MYSQL_USER')
# MYSQL_PASSWORD = os.getenv('MYSQL_PASSWORD')
# EXTERNAL_BASE_URL = os.getenv('EXTERNAL_BASE_URL')

MYSQL_USER = "myuser"
MYSQL_PASSWORD = "mypassword"
EXTERNAL_BASE_URL = "mysql-db"

class DBA:
    """
    Database initialization and configuration
    """
    user_name = MYSQL_USER
    password = MYSQL_PASSWORD
    host = EXTERNAL_BASE_URL
    SQLALCHEMY_DATABASE_URI = (
        "mysql+pymysql://" + user_name + ":" + password + "@" + host + ":3306/"
    )

engines = {
    "user": create_engine(DBA.SQLALCHEMY_DATABASE_URI+"mydatabase", pool_pre_ping=True),
}

base = declarative_base()
base.metadata.bind = engines


def custom_session(schema):
    """
    Returns the current session.
    """

    session = orm.scoped_session(orm.sessionmaker())(bind=engines[schema])
    return session
