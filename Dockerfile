FROM google/cloud-sdk:181.0.0-alpine

ARG DOCKER_VERSION="17.05.0-ce"

RUN curl -L -o /tmp/docker-${DOCKER_VERSION}.tgz https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz && \
    tar -xz -C /tmp -f /tmp/docker-${DOCKER_VERSION}.tgz && \
    mv /tmp/docker/* /usr/bin
RUN gcloud components install kubectl
