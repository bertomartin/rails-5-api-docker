FROM ruby:2.3.1

ENV APP_ROOT /app
ENV BUNDLE_PATH /bundle

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

ADD . $APP_ROOT
WORKDIR $APP_ROOT
