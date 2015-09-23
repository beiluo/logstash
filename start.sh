#!/bin/bash
# replace redis url
sed -i "s/redislocalhost/$1/g" /logstash.conf
sed -i "s/6379/$2/g" /logstash.conf
# replace ELASTICSEARCH url
sed -i "s/elasticsearchlocalhost/$3/g" /logstash.conf
sed -i "s/9200/$4/g" /logstash.conf

logstash -f /logstash.conf