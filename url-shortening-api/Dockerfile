ARG RUBY_VERSION
FROM ruby:${RUBY_VERSION}-buster

RUN set -eux; \
  apt update; \
  apt install -y --no-install-recommends \
    \
    libpq-dev \
  ; \
  rm -rf /var/lib/apt/lists/*

WORKDIR /opt/rails

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

EXPOSE 3000
CMD [ "bash" ]
