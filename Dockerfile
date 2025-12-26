FROM ruby:4.0
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN bundle install
CMD ["bundle", "exec", "rake"]
