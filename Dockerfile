FROM node:20-alpine

# Declare build args (passed via --build-args)
ARG APP_USER

# Make them visible as env vars inside the container @runtime also
ENV APP_USER=$APP_USER

WORKDIR /app

RUN echo "APP_USER=$APP_USER"

COPY . .

CMD ["node", "-e", "console.log('APP_USER: |', process.env.APP_USER, ' |')"]