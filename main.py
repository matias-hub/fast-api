from fastapi import FastAPI

# Create an instance of the FastAPI class
app = FastAPI()

# Define a GET endpoint at the root URL ("/")
@app.get("/")
def read_root():
    return "buenas!"
