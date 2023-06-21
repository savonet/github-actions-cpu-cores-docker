FROM node:alpine

RUN mkdir /github-actions-cpu-cores-docker

COPY entrypoint.js /github-actions-cpu-cores-docker/entrypoint.js

WORKDIR /github-actions-cpu-cores-docker/

RUN npm install --save @actions/core @actions/github

ENTRYPOINT ["/github-actions-cpu-cores-docker/entrypoint.js"]
