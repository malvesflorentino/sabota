docker rm -f mano
docker rmi -f mano
docker build ../ -f ../Dockerfile -t mano
docker run --name=mano -d mano
docker ps
docker tag mano docker.io/vivareal/mano
docker push docker.io/vivareal/mano
