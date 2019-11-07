docker network create <network_name>

docker run --net <network_name> --name elasticsearch -p 9200:9200 -p 9300:9300 elasticsearch:6.7.0

#if kibana is needed add it:
docker run --name kibana --net <network_name> -p 5601:5601 kibana:6.7.0

docker run --net <network_name> -e SET_URL="http://elasticsearch:9200" -p 8080:8080 -it dexels/fscrawler_2.7snap:<build_num> bash
