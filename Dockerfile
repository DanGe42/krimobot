FROM node:5

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY environment /usr/src/app
COPY . /usr/src/app

CMD ./start.sh
