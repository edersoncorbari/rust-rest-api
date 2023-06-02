FROM rust:1.69-buster

WORKDIR /app

ARG DATABASE_URL

ENV DATABASE_URL=$DATABASE_URL

COPY . . 

RUN cargo build --release

CMD ["./target/release/rust-rest-api"]

