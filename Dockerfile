FROM jgwill/ubunpy

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install graphviz -y

WORKDIR /work

COPY . .