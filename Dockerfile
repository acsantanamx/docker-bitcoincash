FROM bitcoinabc/bitcoin-abc:0.25.10
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

