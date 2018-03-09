FROM maven:3.5-jdk-8-alpine
MAINTAINER https://github.com/adorsys/dockerhub-openjdk-build-base

LABEL maintainer="https://github.com/adorsys/dockerhub-openjdk-build-base"

ENV M2_HOME $MAVEN_HOME
# limit java processes to 128M heap by default
ENV JAVA_TOOL_OPTIONS -Xmx128M

COPY root /
RUN apk --no-cache add git make wget gettext
ENTRYPOINT [ "/usr/local/bin/adorsys-entrypoint.sh" ]
