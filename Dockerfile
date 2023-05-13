FROM ghcr.io/beriberikix/zephyr-riscv64:main-0.16.1sdk

WORKDIR /root

COPY . .

RUN \
  west init -l manifest/ && \
  west update --narrow -o=--depth=1 && \
  west blobs fetch hal_espressif
