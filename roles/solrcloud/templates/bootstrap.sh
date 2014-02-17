#!/bin/bash
./cloud-scripts/zkcli.sh -cmd upconfig -zkhost {{groups.zookeeper[0]}}:2181 -d /opt/solr/dri/collection1/conf -n collection1
./cloud-scripts/zkcli.sh -cmd linkconfig -zkhost {{groups.zookeeper[0]}}:2181 -collection collection1 -confname collection1 -solrhome /opt/solr/dri
./cloud-scripts/zkcli.sh -cmd bootstrap -zkhost {{groups.zookeeper[0]}}:2181 -solrhome /opt/solr/dri
