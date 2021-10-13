FROM ubuntu:20.04

ENV DEBCONF_NOWARNINGS yes
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ="Asia/Tokyo"

RUN apt-get update && apt-get install -y tzdata
RUN apt-get install -y --quiet --no-install-recommends \
  vim \
  wget

RUN apt-get install -y python3-pip
RUN pip3 --version
RUN pip3 install awscli 

WORKDIR /work
ENTRYPOINT ["/bin/bash"]