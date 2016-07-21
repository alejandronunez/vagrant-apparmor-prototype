FROM alpine
RUN apk update && apk upgrade
RUN apk add bash

# Install ruby and ruby-bundler
RUN apk add ruby
RUN apk add ruby-bundler
RUN apk add curl

# Clean APK cache
RUN rm -rf /var/cache/apk/*

RUN mkdir /usr/app
WORKDIR /usr/app

COPY ./container_app /usr/app
RUN bundle install