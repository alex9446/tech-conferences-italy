FROM ruby:3.1.1-alpine
RUN apk add --no-cache g++ musl-dev make libstdc++ wget imagemagick

WORKDIR /usr/src/app

COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install --jobs 4 --retry 3

COPY . .
