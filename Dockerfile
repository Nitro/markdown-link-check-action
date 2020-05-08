FROM debian:buster-20200422-slim

RUN apt-get update \
  && apt-get install -y --no-install-recommends curl=7.64.* ca-certificates=2019* \
  && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]