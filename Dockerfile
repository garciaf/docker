FROM alpine:3.8
MAINTAINER test IO <devs@test.io>

# Install useful package
RUN apk --update add \
  bash \
  zlib-dev \
  nodejs \
  build-base \
  ruby-bundler \
  ruby-nokogiri \
  ruby-dev \
  ruby \
  postgresql-dev

# Create the app directory
WORKDIR /app

ADD . /app

RUN echo 'gem: --no-rdoc --no-ri' >> /etc/gemrc
RUN bundle install
