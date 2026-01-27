FROM node:22-alpine

WORKDIR /app

RUN npm install -g yarn@1 --force

COPY package*.json .

RUN yarn 

COPY . .

CMD ["yarn", "dev"]