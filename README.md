# Rust Rest API 0.1

## A simple Rest API using Rust + PostgreSQL

This is a fictional project for laboratory studies using the **Rust** dialect.


docker pull postgres
docker run -p 5432:5432 -v /tmp/db:/var/lib/postgresql/data -e POSTGRES_PASSWORD=postgres -d postgres
export DATABASE_URL=postgres://postgres:postgres@localhost:5432/postgres

version = "0.1.0"
