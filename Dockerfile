FROM rust:1.50-slim

RUN apt-get update -y
RUN apt-get install openssl pkg-config libssl-dev -y
RUN cargo install cargo-tarpaulin -f

CMD cargo-tarpaulin --ignore-tests --all-features
