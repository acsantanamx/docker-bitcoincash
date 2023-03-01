FROM bitcoinabc/bitcoin-abc:0.26.13
USER root 

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    bash \
    netcat-openbsd \
    openssh-client \
    openssl \
    net-tools \
    iputils-ping
    
RUN ssh-keygen -t rsa -q -f "$HOME/.ssh/id_rsa" -N ""
RUN useradd -m -d /opt/cdata cdata
RUN usermod -u 1000 cdata
RUN groupmod -g 1000 cdata


