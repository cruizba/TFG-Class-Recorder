FROM gitpod/workspace-full

USER root

########### Versions ############
ENV NODE_VERSION=11 \
    NPM_VERSION=6.4.1 \
    PANDOC_VERSION=2.6-1 \
    PDFTK_VERSION=2.02 \
    DEBIAN_FRONTEND=noninteractive

# Install curl
RUN apt-get update \
    && apt-get install curl wget sed gnupg -y \
    && rm -rf /var/lib/apt/list/*

########### Install pdftk #############
ADD pdftk-apt-sources.txt .

# Add temporary apt sources to install pdftk
RUN mv /etc/apt/sources.list /etc/apt/sources.list.backup \
    && cat /etc/apt/sources.list.backup pdftk-apt-sources.txt > /etc/apt/sources.list

RUN apt update \
    && apt install pdftk \
    && rm -rf /var/lib/apt/lists/*

# Remove temporary apt sources
RUN rm /etc/apt/sources.list \
    && mv /etc/apt/sources.list.backup /etc/apt/sources.list 
    
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
