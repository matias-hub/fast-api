from app.entities.user import User

def get_user(user_id) -> User:
    """
    Gets a user from the database by user_id.
    """
    
    user = User(
        id= user_id,
        username= "riperoni" ,
        email= "matias@gmail.com",
        full_name= "matias geralnik",
        age= 31
    )
    return user