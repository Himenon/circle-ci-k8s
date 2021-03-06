FROM google/cloud-sdk:latest

ARG DOCKER_VERSION="17.05.0-ce"

RUN curl -L -o /tmp/docker-${DOCKER_VERSION}.tgz https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz && \
    tar -xz -C /tmp -f /tmp/docker-${DOCKER_VERSION}.tgz && \
    mv /tmp/docker/* /usr/bin
RUN apt-get install kubectl
# RUN gcloud components install kubectl

RUN apt-get install -y gettext-base
# RUN apk --no-cache add libintl && \
#     apk --no-cache add --virtual .gettext gettext && \
#     cp /usr/bin/envsubst /usr/local/bin/envsubst && \
#     apk del .gettext

RUN gcloud -v
RUN envsubst -V
RUN kubectl version