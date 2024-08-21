FROM erlang:27.0-slim

ARG GLEAM_VERSION=1.1.0

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		ca-certificates \
		curl \
		gnupg \
		netbase \
		sq \
		wget \
	; \
	rm -rf /var/lib/apt/lists/*

COPY ./entrypoint.sh /tmp

RUN [ "chmod", "777", "/tmp/entrypoint.sh" ]

RUN [ "/tmp/entrypoint.sh" ]