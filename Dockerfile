FROM python:3.8-alpine as resource
RUN apk add --update --no-cache \
    bash \
    curl \
    git \
    make \
    zip \
    unzip \
    jq \
    openssh
RUN pip install --no-cache-dir \
    awscli

FROM resource
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]
