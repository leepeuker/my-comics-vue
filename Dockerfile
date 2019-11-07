FROM node:lts-alpine

ARG USER_ID

RUN npm install -g @vue/cli

RUN deluser --remove-home node \
  && addgroup -S node -g $USER_ID \
  && adduser -S -G node -u $USER_ID node

USER node
WORKDIR /app

ENTRYPOINT ["/bin/sh"]