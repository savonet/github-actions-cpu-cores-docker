FROM node:alpine

COPY entrypoint.js /entrypoint.js

RUN npm install -g @actions/core @actions/github

ENTRYPOINT ["/entrypoint.js"]
