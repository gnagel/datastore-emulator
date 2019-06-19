# Setup a local datastore emulator
# > https://hub.docker.com/r/singularities/datastore-emulator/dockerfile
#
FROM google/cloud-sdk:alpine

EXPOSE 8081
WORKDIR /app

# Install Java 8 for Datastore emulator
RUN apk add --update --no-cache openjdk8-jre && gcloud components install cloud-datastore-emulator beta --quiet

# Volume to persist Datastore data
VOLUME /opt/data

COPY start-datastore .
ENTRYPOINT ["./start-datastore"]