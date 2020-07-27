FROM python:3.8-alpine as resource
RUN apk add --update --no-cache \
    git \
    make \
    zip \
    unzip \
    jq \
    openssh
RUN pip install \
    awscli

FROM resource
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]