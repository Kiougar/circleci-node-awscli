FROM circleci/node:10-stretch-browsers

USER root

RUN apt-get update && apt-get install -y \
    python-pip \
    python-dev \
  && rm -rf /var/lib/apt/lists/* \
  && pip install awscli

USER circleci
