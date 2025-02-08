ARG ERLANG_TAG=27.2.1-alpine

FROM erlang:${ERLANG_TAG}

RUN apk add --no-cache erlang

ARG GLEAM_RELEASE_TAG=v1.2.0
# https://github.com/gleam-lang/gleam/releases/download/v1.6.3/gleam-v1.6.3-x86_64-unknown-linux-musl.tar.gz
ARG GLEAM_RELEASE_URL=https://github.com/gleam-lang/gleam/releases/download/${GLEAM_RELEASE_TAG} \
    GLEAM_RELEASE_TAR=gleam-${GLEAM_RELEASE_TAG}-x86_64-unknown-linux-musl.tar.gz \
	GLEAM_RELEASE_SHA=gleam-${GLEAM_RELEASE_TAG}-x86_64-unknown-linux-musl.tar.gz.sha512
	
ARG GLEAM_RELEASE_TAR_URL=${GLEAM_RELEASE_URL}/${GLEAM_RELEASE_TAR} \
	GLEAM_RELEASE_SHA_URL=${GLEAM_RELEASE_URL}/${GLEAM_RELEASE_SHA}

ADD ${GLEAM_RELEASE_TAR_URL} /tmp

ADD ${GLEAM_RELEASE_SHA_URL} /tmp
	
RUN set -eux; \
	cd /tmp && sha512sum -c ${GLEAM_RELEASE_SHA}; \
	tar -xvzf ${GLEAM_RELEASE_TAR} -C /usr/bin && rm ${GLEAM_RELEASE_TAR}
