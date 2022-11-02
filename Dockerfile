FROM ruby:latest
WORKDIR /app
COPY Gemfile .
RUN bundle install
COPY . .
CMD ["ruby", "/app/connect.rb"]
