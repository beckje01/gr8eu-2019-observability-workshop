#!/bin/sh

set -xeuo pipefail

curl --retry 10 -XPOST -D- 'http://kibana:5601/api/saved_objects/index-pattern' -H 'Content-Type: application/json' -H 'kbn-version: 6.6.1' -d '{"attributes":{"title":"logstash-*","timeFieldName":"@timestamp"}}'

echo 'Created Index'