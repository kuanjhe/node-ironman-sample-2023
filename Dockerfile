FROM node:18

WORKDIR /usr/scr/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run swagger

EXPOSE 3000

CMD [ "npm", "start" ]