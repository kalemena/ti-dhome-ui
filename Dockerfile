FROM centos:7

MAINTAINER Kalemena

RUN \
  yum install -y epel-release; \
  yum update -y; \
# NodeJS
  yum install -y nodejs npm; \
# build tools
  yum install -y \
    git-core \
    python \
    wget \
    unzip \
    which; \
  yum groupinstall -y "Development Tools"; \
  npm install -g grunt-cli;
  
RUN npm install -g vue-cli;

ADD [ "src/ti-dhome", "/opt/ti-dhome" ]
WORKDIR /opt/ti-dhome

RUN npm install

# Minimize image
FROM node:alpine

COPY --from=0 /opt/ti-dhome /opt/ti-dhome
WORKDIR /opt/ti-dhome

EXPOSE 8080

ENV TZ=Europe/Paris

CMD ["npm", "run", "dev" ]
