FROM python:3.12.0-alpine3.17
RUN apk add --no-cache \
    bash \
    postgresql \
    tarsnap
RUN pip install tarsnapper==0.5.0 awscli
ADD . /app
WORKDIR /app
