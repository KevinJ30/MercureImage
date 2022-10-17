FROM debian:latest

WORKDIR /app

RUN apt-get update -y  &&  \
    apt-get -y install wget

RUN wget https://github.com/dunglas/mercure/releases/download/v0.14.1/mercure_0.14.1_Linux_x86_64.tar.gz && \
    tar xvzf mercure_0.14.1_Linux_x86_64.tar.gz

CMD ["/app/mercure", "run", "--config", "/app/Caddyfile.dev"]
