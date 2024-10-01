FROM ruby:3.3
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN bundle install
CMD ["bundle", "exec", "rake"]
