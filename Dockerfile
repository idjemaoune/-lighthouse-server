FROM node:12-buster-slim

# install some packages
RUN apt-get install -y curl wget
WORKDIR /usr/src/lhci
COPY package.json .
COPY lighthouserc.json .
RUN npm install

EXPOSE 9001
CMD [ "npm", "start" ]
