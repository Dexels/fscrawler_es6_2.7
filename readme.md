## HOW TO START A FSCRAWLER AND ELASTICSEARCH IMAGES LOCALLY:
```
docker network create <network_name>

docker run --net <network_name> --name elasticsearch -p 9200:9200 -p 9300:9300 elasticsearch:6.7.0

docker run --net <network_name> -e SET_URL="http://elasticsearch:9200" -p 8080:8080 -it dexels/fscrawler_2.7snap:<build_num> bash
```

###### If kibana is needed add it:
```
docker run --name kibana --net <network_name> -p 5601:5601 kibana:6.7.0
```

## ElasticSearch and Fscrawler Documentation:

### FscrawlerAdapter

Fscrawler adapter is used to index files/documents to ElasticSearch. Use script InitIndexFile.xml and ProcessIndexFile.xml for 
indexing documents one by one by upload button in the tester.

Also, InitIndexFilesFromSql.xml script used for indexing files/documents from SQL.


### ElasticSearchAdapter

Used to query the ElasticSearch database. InitEsQuery.xml and ProcessEsQuery.xml are for searching the ElasticSearch documents 
by keyword and will show the File Name, Id and Score.
