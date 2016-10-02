from node:4.6

RUN mkdir -p /usr/app/src/
WORKDIR /usr/app/src/

COPY . /usr/app/src/.

