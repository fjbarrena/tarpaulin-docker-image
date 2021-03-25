FROM rust:1.50

RUN cargo install cargo-tarpaulin -f

CMD cargo-tarpaulin --ignore-tests --all-features
