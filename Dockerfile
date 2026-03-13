FROM alpine:latest

COPY . /workdir

WORKDIR /workdir

CMD ["sh"]