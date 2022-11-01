FROM ruby:3.0.4-alpine
WORKDIR /app
COPY Gemfile .
RUN bundle install
COPY . .
CMD ["ruby", "/app/connect.rb"]