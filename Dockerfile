FROM node:4.6

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

RUN npm install -g \
  ember-cli@2.8 \
  bower

COPY package.json /usr/src/app/.
COPY bower.json /usr/src/app/.
RUN mkdir -p /usr/src/app/scripts/
COPY scripts/install_dependencies.sh /usr/src/app/scripts/.
RUN scripts/install_dependencies.sh

COPY . /usr/src/app/

