FROM node:alpine as builder 

WORKDIR /app

COPY package.json /app

RUN yarn install && yarn cache clean

COPY . /app 
 
RUN yarn build