FROM camptocamp/mcollectived:2.8.8-11

MAINTAINER raphael.pinson@camptocamp.com

RUN apt-get update \
  && apt-get install -y --force-yes \
    puppetdb-termini=$PUPPETDB_VERSION \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -r puppet
