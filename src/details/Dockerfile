FROM ruby:3.3.0-slim

COPY . /opt/microservices

ARG SERVICE_VERSION='v1'
ARG ENABLE_EXTERNAL_BOOK_SERVICE=false

EXPOSE 9080

RUN useradd -u 1000 -m myuser
USER myuser

ENTRYPOINT ["ruby", "/opt/microservices/details.rb"]
