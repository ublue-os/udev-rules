FROM cgr.dev/chainguard/alpine-base:latest
# See https://pagure.io/releng/issue/11047 for final location

COPY etc /etc

RUN ostree container commit
