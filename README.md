# quick-deploy

### Provides a very easy and simple way to deploy Elastic Search and Kibana.

_**NOTE: CURRENTLY ONLY WORKS ON UBUNTU**_

If needed, it will install:
  - Docker
  - Docker-Compose

Starts dockerized instances of:
  - Elasticsearch
  - Kibana

To run: 
1. Clone this repo onto the machine on which you wish to run Elasticseach
    - `git clone git@github.com:EthanStrider/quick-deploy.git`
2. Run the shell script
    - `cd quick-deploy`
    - `./quick-deploy.sh`