docker rm -f sabota
docker rmi -f sabota
docker build ../ -f ../Dockerfile -t sabota
docker run --name=sabota -d sabota
docker ps
docker tag sabota docker.io/vivareal/sabota
docker push docker.io/vivareal/sabota
