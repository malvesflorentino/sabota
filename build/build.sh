docker rm -f sabota
docker rmi -f sabota
docker build ../ -f ../Dockerfile -t sabota
docker run --name=mano -d sabota
docker ps
docker tag sabota docker.io/mandalvesq/sabota
docker push docker.io/mandalvesq/sabota
