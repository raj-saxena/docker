#============================================
# To Run first time, script should check for an existing image.
docker run -p 8989:8989 -d --name=solrServer rajsaxena/solr-5.2 start
# To stop 
docker stop solrServer
# to restart
docker start solrServer
