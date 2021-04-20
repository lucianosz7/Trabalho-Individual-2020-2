FROM node:lts-alpine

RUN npm install -g http-server

WORKDIR /app

COPY package*.json ./

RUN yarn global add @quasar/cli
RUN yarn install

COPY . .

EXPOSE 8080
CMD [ "quasar", "dev" ]
