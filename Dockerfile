FROM ubuntu

# Versions
ENV NODE_VERSION=11 \
    NPM_VERSION=6.4.1

# Install curl
RUN apt-get update \
    && apt-get install curl -y \
    && rm -rf /var/lib/apt/list/*

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

# Create user
RUN useradd -ms /bin/bash userdocker

RUN mkdir -p home/userdocker/tfg

ENV APP_DIR home/userdocker/tfg

RUN chown -R userdocker /home/userdocker

# Change user to userdocker
USER userdocker

WORKDIR $APP_DIR

ENTRYPOINT [ "node", "server.js" ]