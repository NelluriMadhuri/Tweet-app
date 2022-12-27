FROM node:14.16.1-alpine

RUN mkdir -p /opt/tweetApp
WORKDIR /opt/tweetApp

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
