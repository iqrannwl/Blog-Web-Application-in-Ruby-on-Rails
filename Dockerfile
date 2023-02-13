# FROM ruby:3.0.2
# RUN mkdir app
# COPY . /app
# WORKDIR /app
# RUN bundle install
# CMD [ "/app/bin/rails server" ]

# Dockerfile development version
FROM ruby:3.0.2
RUN apt-get update && apt-get install -y nodejs
RUN mkdir app
WORKDIR /app
COPY . .
RUN bundle install
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]