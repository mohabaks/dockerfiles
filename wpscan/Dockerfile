FROM ruby:3.0.2-alpine AS builder
LABEL maintainer="WPScan Team <contact@wpscan.com>"

RUN echo "install: --no-document --no-post-install-message\nupdate: --no-document --no-post-install-message" > /etc/gemrc

RUN apk add --no-cache git libcurl ruby-dev libffi-dev make gcc musl-dev zlib-dev procps sqlite-dev && \
  git clone https://github.com/wpscanteam/wpscan.git /wpscan && \
  bundle config force_ruby_platform true && \
  bundle config disable_version_check 'true' && \
  bundle config without "test development" && \
  bundle config path.system 'true' && \
  bundle install --gemfile=/wpscan/Gemfile --jobs=8

WORKDIR /wpscan
RUN rake install --trace

# needed so non superusers can read gems
RUN chmod -R a+r /usr/local/bundle


FROM ruby:3.0.2-alpine
LABEL maintainer="WPScan Team <contact@wpscan.com>"
LABEL org.opencontainers.image.source https://github.com/wpscanteam/wpscan

COPY --from=builder /usr/local/bundle /usr/local/bundle

# runtime dependencies
RUN apk add --no-cache libcurl procps sqlite-libs


RUN /usr/local/bundle/bin/wpscan --update --verbose

ENTRYPOINT ["/usr/local/bundle/bin/wpscan"]