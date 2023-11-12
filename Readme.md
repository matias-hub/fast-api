# FastAPI API Deployment Guide

This guide will help you download and deploy the FastAPI application from this GitHub repository.

## Prerequisites

Before you get started, make sure you have the following installed on your system:

- [Docker](https://www.docker.com/get-started)

## Download and Deploy

Follow these steps to download and deploy the FastAPI API:

1. Clone the GitHub repository to your local machine:

   ```
    git clone https://github.com/matias-hub/fast-api.git
    cd fast-api
   ```

2. Build the Docker image and start the FastAPI application:

   ```
   docker compose build && docker compose up
   ```

3. Access the FastAPI application in your web browser at http://localhost:8000.

## Usage

### Endpoints

#### [GET /users/{user_id}](http://localhost:8000/users/{user_id})

Will return one user by their id, if it exists

#### [PUT /users/{user_id}](http://localhost:8000/users/{user_id})

body:

```
{
    "wallet_id": "7b989385-555b-4d99-89b2-8f23eb1020e7",
    "email": "Rhea_Waters@hotmail.com",
    "name": "MATI",
    "last_name": "Legros",
    "sex_type": "male",
    "dni": "13283407",
    "birth_date": "1987-06-02T13:30:49.942Z",
    "created_at": "2022-10-16T16:22:07.441Z"
}
```

Will edit a users information

#### [POST /users](http://localhost:8000/users)

body:

```
{
    "wallet_id": "7b989385-555b-4d99-89b2-8f23eb1020e7",
    "email": "Rhea_Waters@hotmail.com",
    "name": "MATI",
    "last_name": "Legros",
    "sex_type": "male",
    "dni": "13283407",
    "birth_date": "1987-06-02T13:30:49.942Z",
    "created_at": "2022-10-16T16:22:07.441Z"
}
```

Will create a user

#### [DELETE /users/{user_id}](http://localhost:8000/users/{user_id})

Will delete one user by their id, if it exists

#### [GET /users](http://localhost:8000/users})

Will return a list of users. its prepared to recibe a number of query parameters:

```
pagination: ?page=2&limit=5
sorting: ?sortBy=email&sortDirection=ascending
matching: ?match[email]=jdoe@example.com
```
