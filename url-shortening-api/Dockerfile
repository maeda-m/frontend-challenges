ARG RUBY_VERSION
FROM ruby:${RUBY_VERSION}-buster

RUN set -eux; \
  apt update; \
  apt install -y --no-install-recommends \
    \
    libpq-dev \
  ; \
  rm -rf /var/lib/apt/lists/*

# See: https://github.com/nodesource/distributions
RUN set -eux; \
  apt update; \
  curl -fsSL https://deb.nodesource.com/setup_14.x | bash -; \
  apt install -y --no-install-recommends \
    \
    nodejs \
  ; \
  rm -rf /var/lib/apt/lists/*

WORKDIR /opt/rails

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

EXPOSE 3000 8080
CMD [ "bash" ]
