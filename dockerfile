FROM node:alpine

WORKDIR /home/crud-nest


COPY package*.json ./

COPY yarn.lock .

RUN yarn 

COPY . .

EXPOSE 3000

CMD ["yarn","start:dev"]