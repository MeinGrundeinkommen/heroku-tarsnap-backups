FROM python:3.9.4-alpine3.13
RUN apk add --no-cache \
    bash \
    postgresql \
    tarsnap
RUN pip install tarsnapper==0.5.0 awscli
ADD . /app
WORKDIR /app
