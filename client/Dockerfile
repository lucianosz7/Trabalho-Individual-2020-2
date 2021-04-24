FROM node:10

WORKDIR /client

COPY ./client/package*.json ./client
COPY ./client/yarn.lock ./client

RUN yarn global add @quasar/cli
#COPY . .
