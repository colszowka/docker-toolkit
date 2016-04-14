FROM alpine:edge
RUN apk add --update \
      # Basic shell stuff
      bash \
      bash-completion \
      readline \
      grep \
      gawk \
      # Interacting with the networks
      curl \
      wget \
      jq \
      drill \
      nmap \
      netcat-openbsd \
      socat \
      # Monitoring / Shell tools
      htop \
      mc \
      # Development tools
      vim \
      tmux \
      git \
      tig \
      # Scripting languages
      ruby \
      nodejs \
    && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["bash"]