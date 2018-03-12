FROM maven:3.5-jdk-8-alpine
MAINTAINER https://github.com/adorsys/dockerhub-openjdk-build-base

LABEL maintainer="https://github.com/adorsys/dockerhub-openjdk-build-base"

# limit java processes to 128M heap by default

ENV MAVEN_OPTS="-Xmx128M -B" \
    M2_HOME=$MAVEN_HOME

COPY root /
RUN apk --no-cache add git make wget gettext
ENTRYPOINT [ "/usr/local/bin/adorsys-entrypoint.sh" ]
