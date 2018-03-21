date=$(date '+%d%m%Y%H%M%S');
echo "Removendo imagens antigas"
docker rm -f sabota
docker rmi -f sabota
echo "Buildando a nova imagem a partir do Dockerfile"
docker build ../ -f ../Dockerfile -t sabota
echo "Tagueando a imagem para subir para o repo DockerHub"
docker tag sabota docker.io/vivareal/sabota:$date
echo "Fazendo push da imagem para o DockerHub"
docker push docker.io/vivareal/sabota
echo "Fazendo deploy da nova imagem na estrutura do K8S"
/usr/local/bin/./kubectl set image deployment/sabota  sabota=vivareal/sabota:$date --namespace platform
