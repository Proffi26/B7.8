FROM ubuntu

ARG site
ENV env_site $site

RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
COPY getfavico.sh /tmp
RUN chmod +x /tmp/getfavico.sh
WORKDIR /tmp
ENTRYPOINT /tmp/getfavico.sh $env_site