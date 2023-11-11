# Use the official Python image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Install any dependencies your project needs
COPY requirements.txt .
RUN pip install -r requirements.txt

# Expose the port your FastAPI app will run on
EXPOSE 8000

# Define the command to start the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]