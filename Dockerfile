FROM ubuntu

# Versions
ENV NODE_VERSION=11 \
    NPM_VERSION=6.4.1 \
    PANDOC_VERSION=2.6-1 \
    DEBIAN_FRONTEND=noninteractive

# Install curl
RUN apt-get update \
    && apt-get install curl wget sed gnupg -y \
    && rm -rf /var/lib/apt/list/*


COPY pdftk_installer.sh .

# Install pdftk
RUN sed -i 's/\r//g' pdftk_installer.sh \ 
    && chmod 755 pdftk_installer.sh

RUN ls -l

RUN bash pdftk_installer.sh

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
