FROM camptocamp/mcollectived:2.10.2-2

ENV PUPPETDB_VERSION=4.4.0-1puppetlabs1

RUN apt-get update \
  && apt-get install -y --force-yes \
    puppetdb-termini=$PUPPETDB_VERSION \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -r puppet
