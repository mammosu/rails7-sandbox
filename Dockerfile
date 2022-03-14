FROM ruby:3.1.0-alpine3.15 AS base

WORKDIR /app

# For production
# ENV RAILS_ENV=production

RUN apk add --update --no-cache git postgresql-dev libc-dev gcc make tzdata bash less vim vips-dev gcompat

FROM base AS builder

RUN apk add --update --no-cache build-base curl-dev


COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install --jobs 4

COPY . .

# For production
# RUN SECRET_KEY_BASE=dummy bundle exec rails assets:precompile


FROM base AS main

COPY --from=builder /app /app
COPY --from=builder /usr/local/bundle /usr/local/bundle

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# CMD ["rails", "server", "-b", "0.0.0.0"]
