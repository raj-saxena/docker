#!/bin/bash
set -e

echo "Passed arguments-->\"$@\""

if [ -z "$1" ]; then
	echo "Usage: run <image> start|<COMMAND> "
elif [ "$1" == 'start' ]; then
	echo "===== starting Solr ==== "
    #/solr/bin/solr start -f
	/usr/bin/supervisord
else 
	exec "$@"
fi
