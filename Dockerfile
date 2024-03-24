FROM rust:latest

RUN mkdir -p /home/rust/app

WORKDIR /home/rust/app

COPY . .

RUN cargo build --release

EXPOSE 8000
CMD [ "cargo", "run", "--release" ]

