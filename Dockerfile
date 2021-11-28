FROM node:10

MAINTAINER xiaowu

WORKDIR /gitbook

RUN npm --registry https://registry.npm.taobao.org install gitbook-cli -g

EXPOSE 4000
