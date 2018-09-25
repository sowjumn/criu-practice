FROM ubuntu:trusty

RUN \
    apt-get update \
    && apt-get -y install gcc wget ca-certificates git \
    autoconf automake libtool curl make g++ unzip bzip2 \
    libprotobuf-dev libprotobuf-c0-dev protobuf-c-compiler \
    protobuf-compiler python-protobuf libnl-3-dev libcap-dev \
    python-yaml libaio-dev libnet-dev

RUN \
   wget -q https://download.openvz.org/criu/criu-3.10.tar.bz2 \
   && bzip2 -d criu-3.10.tar.bz2

RUN \
    tar -xvf criu-3.10.tar

RUN cd criu-3.10    \
    && make
