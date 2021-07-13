FROM node:alpine

COPY entrypoint.js /entrypoint.js

ENTRYPOINT ["/entrypoint.js"]
