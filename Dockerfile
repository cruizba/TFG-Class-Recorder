FROM ubuntu:16.04

# Versions
ENV NODE_VERSION=11 \
    NPM_VERSION=6.4.1 \
    PANDOC_VERSION=2.6-1 \
    PDFTK_VERSION=2.02 \
    DEBIAN_FRONTEND=noninteractive

# Install curl
RUN apt-get update \
    && apt-get install curl wget sed gnupg -y \
    && rm -rf /var/lib/apt/list/*

# Install pdftk
RUN apt-get update && \
    apt-get install -y --no-install-recommends unzip build-essential gcj-jdk && \
    apt-get clean

ADD https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk-${PDFTK_VERSION}-src.zip /tmp/
RUN unzip /tmp/pdftk-${PDFTK_VERSION}-src.zip -d /tmp && \
    sed -i 's/VERSUFF=-4.6/VERSUFF=-5/g' /tmp/pdftk-${PDFTK_VERSION}-dist/pdftk/Makefile.Debian && \
    cd /tmp/pdftk-${PDFTK_VERSION}-dist/pdftk && \
    make -f Makefile.Debian && \
    make -f Makefile.Debian install && \
    rm -Rf /tmp/pdftk-*

RUN apt-get update \
    && apt-get install pandoc texlive-full -y \
    && rm -rf /var/lib/apt/lists/*

# Install npm and node
####### Node, npm
RUN apt-get update \
    && curl -sL https://deb.nodesource.com/setup_"${NODE_VERSION}".x | bash \
    && apt-get install -y nodejs \
    && npm install -g npm@"$NPM_VERSION" \
    && rm -rf /var/lib/apt/lists/*

# Install citeproc
# latest version from github
RUN wget https://github.com/jgm/pandoc/releases/download/2.6/pandoc-"${PANDOC_VERSION}"-amd64.deb \
    && dpkg -i pandoc-2.6-1-amd64.deb \
    && rm pandoc-2.6-1-amd64.deb

# Create user
RUN useradd -ms /bin/bash userdocker

RUN mkdir -p home/userdocker/tfg

ENV APP_DIR home/userdocker/tfg

RUN chown -R userdocker /home/userdocker

# Change user to userdocker
USER userdocker

WORKDIR $APP_DIR

ENTRYPOINT [ "node", "server.js" ]
