date=$(date '+%d%m%Y%H%M%S');
docker rm -f sabota
docker rmi -f sabota
docker build ../ -f ../Dockerfile -t sabota
docker run --name=sabota -d sabota
docker ps
docker tag sabota docker.io/vivareal/sabota:$date
docker push docker.io/vivareal/sabota
/usr/local/bin/./kubectl set image deployment/sabota  sabota=vivareal/sabota:$date --namespace platform
