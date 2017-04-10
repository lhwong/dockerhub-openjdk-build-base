FROM adorsys/minideb-base:jessie
MAINTAINER https://github.com/adorsys/dockerhub-openjdk-build-base

ENV M2_HOME /usr/local/apache-maven/apache-maven-3.3.9
ENV M2_URL http://artfiles.org/apache.org/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
# limit java processes to 128M heap by default
ENV JAVA_TOOL_OPTIONS -Xmx128M

RUN mkdir $HOME/.m2 && \
    install_packages -t jessie-backports git make openjdk-8-jdk-headless wget && \
    # https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1396760
    # fix certs for jdk (java.security.InvalidAlgorithmParameterException:
    # the trustAnchors parameter must be non-empty)
    /var/lib/dpkg/info/ca-certificates-java.postinst configure && \
    mkdir /usr/local/apache-maven && \
    wget $M2_URL -q -O - | tar -xz -C /usr/local/apache-maven/ && \
    ln -s $M2_HOME/bin/mvn /usr/local/bin/mvn && \
    ln -sf $JAVA_HOME/bin/* /usr/bin/
