FROM node:alpine

RUN mkdir /github-actions-cpu-cores-docker

WORKDIR /github-actions-cpu-cores-docker/

RUN npm install --save @actions/core @actions/github

COPY entrypoint.mjs /github-actions-cpu-cores-docker/entrypoint.mjs

ENTRYPOINT ["/github-actions-cpu-cores-docker/entrypoint.mjs"]
