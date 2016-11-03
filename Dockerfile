FROM camptocamp/mcollectived:2.9.1-1

MAINTAINER raphael.pinson@camptocamp.com

ENV PUPPETDB_VERSION=4.1.0-1puppetlabs1

RUN apt-get update \
  && apt-get install -y --force-yes \
    puppetdb-termini=$PUPPETDB_VERSION \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -r puppet
