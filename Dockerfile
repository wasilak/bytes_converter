FROM ruby:3.4
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN bundle install
CMD ["bundle", "exec", "rake"]
