FROM rust:latest
WORKDIR /usr/src/projects

ENV USER=root
RUN cd /usr/src/projects && \
     cargo new hello_cargo --bin && \
     cd /usr/src/projects/hello_cargo && \
     cargo build

CMD ["/usr/src/projects/hello_cargo/target/debug/hello_cargo"]