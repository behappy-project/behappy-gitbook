FROM node:latest

MAINTAINER sopei

WORKDIR /gitbook

RUN npm --registry https://registry.npm.taobao.org install gitbook-cli -g && gitbook init

EXPOSE 4000
