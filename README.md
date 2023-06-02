<img src="https://raw.githubusercontent.com/edersoncorbari/rust-rest-api/main/doc/rust-mascot.png" align="right"/>

# Rust Rest API 0.1 🚀

![](https://raw.githubusercontent.com/edersoncorbari/rust-rest-api/main/doc/boxer.png)

## 🏁 A simple Rest API using Rust + PostgreSQL

This is a fictional project for laboratory studies using the **Rust** :crab: dialect.

The project is a **Rest API** that makes a **CRUD** of users in a PostgreSQL database, *no web framework is 
used and also does not use ORM*. The data is stored in the public db schema precisely in the users table.

### 1. 💡 Prerequisites

  - [Docker](https://www.docker.com/products/docker-desktop/)
  - [Rust](https://www.rust-lang.org/tools/install)
  - [Curl](https://curl.se/)
  - [Postman](https://www.postman.com/) or [Insomnia](https://insomnia.rest/download) - (*both are optional*)
  - [Tableplus](https://tableplus.com/) or [DBeaver](https://dbeaver.io/) - (*both are optional*)

### 2. 🏃 Running the application with Docker

The application and the database are dockerrized, just run the command:

```sh
$ docker-compose up -d --build
```

### 3. 🏗️  Build project manualy

I'm assuming you already have **Rust** and **ToolChain** installed on your workstation.

> Note: Difine the database connection variable:

```sh
$ export DATABASE_URL=postgres://postgres:postgres@localhost:5432/postgres
```

So, just enter the root of the project and run the command:

```sh
$ cargo build --release
```

This will build the app in release mode. After running the project:

```sh
$ cargo run
```

> Note: You can also use the shell script by calling "**./run**" to build and run the application.

### 4. 🧪 Testing the CRUD Endpoints

To test the endpoints, you can use **Postman**, the collections are in the [doc](doc/Rust-Rest-Api.postman_collection.json) folder, 
or test via command line with **curl**.

| Method | EndPoint | Parameter      | Payload   |
| ------ | -------- | -------------- | ----------|
| POST   | /users   | *not required* | *{"name":"User1", "email":"u1@xxx1.com"}* |
| GET    | /users/  | ID             | *not required* |
| PUT    | /users/  | ID             | *{"name":"User0", "email":"u0@xxx0.com"}* |
| GET    | /users   | *not required* | *not required* |
| DELETE | /users/  | ID             | *not required* |

> Note: The commands below use curl.

#### 4.1 📝 Creating a user

```sh
$ curl -i -H "Content-Type: application/json" -X \
  POST http://127.0.0.1:8080/users -d '{"name":"User1", "email":"u1@xxx1.com"}'
$ curl -i -H "Content-Type: application/json" -X \
  POST http://127.0.0.1:8080/users -d '{"name":"User2", "email":"u2@xxx2.com"}'
```

**The answer should be:**

> User created

#### 4.2 📝 Checking created user with ID 

```sh
$ curl -i -H "Content-Type: application/json" -X GET http://127.0.0.1:8080/users/1
```

**The answer should be:**

> {"id":1,"name":"User1","email":"u1@xxx1.com"}

#### 4.3 📝 Updating user data 

```sh
$ curl -i -H "Content-Type: application/json" -X PUT http://127.0.0.1:8080/users/1 -d '{"name":"User0", "email":"u0@xxx0.com"}' 
```

**The answer should be:**

> User updated

#### 4.4 📝 Checking all registered users 

```sh
$ curl -i -H "Content-Type: application/json" -X GET http://127.0.0.1:8080/users
```

**The answer should be:**

> [{"id":1,"name":"User0","email":"u0@xxx0.com"},{"id":2,"name":"User2","email":"u2@xxx2.com"}]

#### 4.5 📝 Deleting a user with ID

```sh
$ curl -i -H "Content-Type: application/json" -X DELETE http://127.0.0.1:8080/users/1
$ curl -i -H "Content-Type: application/json" -X DELETE http://127.0.0.1:8080/users/2
```

**The answer should be:**

> User deleted

### 4. :heavy_multiplication_x: Stop docker

Stop and remove containers, networks used in this project:

```sh
$ docker-compose down
```

**Enjoy** :tropical_drink:
