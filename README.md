# Rust Rest API 0.1

![](https://raw.githubusercontent.com/edersoncorbari/rust-rest-api/main/doc/boxer.png)

## A simple Rest API using Rust + PostgreSQL

This is a fictional project for laboratory studies using the **Rust** dialect.

The project is a Rest API that makes a CRUD of users in a PostgreSQL database, No web framework is used and also does not use ORM.

### 1 Docker with PostgreSQL 📦

Install PostgreSQL docker, I used the latest version. Run the command:

```sh
$ docker pull postgres
```

Then just run the container changing the parameters if necessary:

```sh
$ docker run -p 5432:5432 -v /tmp/db:/var/lib/postgresql/data -e POSTGRES_PASSWORD=postgres -d postgres
```

**Important**, define the database connection variable.

```sh
$ export DATABASE_URL=postgres://postgres:postgres@localhost:5432/postgres
```

### 2 Running the Project 🔥

I'm assuming you already have **Rust** and **ToolChain** installed on your workstation. 

So, just enter the root of the project and run the command:

```sh
$ cargo build --release
```

This will build the app in release mode. After running the project:

```sh
$ cargo run
```

> Note: You can also use the shell script by calling "./run" to build and run the application.

### 3 Endpoints 🌐

To test the endpoints, you can use **Postman**, the collections are in the (XX) folder. Or test via command line with **curl**.

```sh
$ curl -i -H "Content-Type: application/json" -X GET http://127.0.0.1:8080/users
```



