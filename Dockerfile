FROM node:12.18.2-stretch-slim

# Reactのインストール
RUN npm i -g create-react-app
RUN cd && \
    npx create-react-app app

WORKDIR /app
