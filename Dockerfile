FROM node:latest

MAINTAINER sopei

WORKDIR /gitbook

RUN npm --registry https://registry.npm.taobao.org install gitbook-cli -g

EXPOSE 4000
