FROM node:lts-bullseye-slim

WORKDIR /usr/src/

COPY package*.json ./

RUN npm install

COPY . .

RUN npm i -g nodemon

EXPOSE 8003

CMD ["npm", "run", "devstart"]