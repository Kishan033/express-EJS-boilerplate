FROM node:8.10.0-alpine

RUN mkdir /nodeWorkspace

WORKDIR /nodeWorkspace

COPY package.json /nodeWorkspace

RUN npm install --production

ADD . /nodeWorkspace

CMD [ "npm", "start" ]