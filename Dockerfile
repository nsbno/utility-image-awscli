FROM python:3.8-alpine as resource
ARG AWSCLI_VERSION=1.22.76

RUN apk add --update --no-cache \
    bash \
    curl \
    git \
    make \
    zip \
    unzip \
    jq \
    openssh
RUN pip install --no-cache-dir awscli==$AWSCLI_VERSION

ENTRYPOINT [ "aws" ]
CMD [ "--version" ]
