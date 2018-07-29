FROM alpine:latest
MAINTAINER Abner Ballardo <aballardou@bcp.com.pe>
RUN apk update && apk add curl && apk add unzip
RUN wget --quiet https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip \
  && unzip terraform_0.11.3_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_0.11.3_linux_amd64.zip
COPY . .
WORKDIR /opt/source
