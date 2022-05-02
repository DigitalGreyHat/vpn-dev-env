FROM debian:11

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y \
    dropbear \
    # needed so VS Code can use scp to install itself
    openssh-client \
    curl

RUN curl -fsSL https://tailscale.com/install.sh | sh

CMD [ "tailscale", "up" ]
