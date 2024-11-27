FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    curl \
    sudo \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://code-server.dev/install.sh | bash
RUN adduser --disabled-password --uid 988 --gid 0 --home /home/container container && \
    echo "container ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ENV PASSWORD=password123 \
    HOST=0.0.0.0 \
    SERVER_PORT=8080

WORKDIR /home/container
RUN chown -R container:0 /home/container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
USER container
ENTRYPOINT ["/entrypoint.sh"]
