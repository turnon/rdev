FROM ruby:2.5.1

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs
