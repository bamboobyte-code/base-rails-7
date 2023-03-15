FROM ruby:3.2.1

RUN apt-get update && apt-get install -y libprotobuf-dev protobuf-compiler
RUN gem install bundler
RUN mkdir /app
WORKDIR /app

COPY Gemfile ./
RUN bundle config build.nokogiri --use-system-libraries

RUN bundle check || bundle install

COPY . ./
