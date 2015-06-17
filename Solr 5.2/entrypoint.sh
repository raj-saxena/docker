#!/bin/bash
set -e

echo "Passed arguments-->\"$@\""

if [ -z "$1" ]; then
	echo "Usage: run <image> start|stop|<COMMAND> "
elif [ "$1" == 'start' ]; then
	echo "===== starting Solr ==== "
    /solr/bin/solr start -f
	#/usr/bin/supervisord
elif [ "$1" == 'stop' ]; then
	echo "===== stopping Solr ==== "
	/solr/bin/solr stop -p 8989
else 
	exec "$@"
fi
