FROM node:22-alpine

WORKDIR /app

RUN npm install -g yarn@1 --force
COPY package*.json .

ARG ENV
RUN if [ "$ENV" = "production"]; then yarn install --prod; else yarn install; fi

COPY . .