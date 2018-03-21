echo 'Declarando a data para a variavel'
date=$(date '+%d%m%Y%H%M%S');
echo 'Removendo imagens antigas e sujeiras'
sudo docker rm -f sabota
sudo docker rmi -f sabota
echo 'Buildando nova imagem a partir do Dockerfile'
sudo docker build ../ -f ../Dockerfile -t sabota
echo 'Tagueando a imagem para o DockerHub'
sudo docker tag sabota docker.io/vivareal/sabota:$date
echo 'Enviando a imagem para o DockerHub'
sudo docker push docker.io/vivareal/sabota
echo 'Realizando deploy no K8S'
sudo /usr/local/bin/./kubectl set image deployment/sabota  sabota=vivareal/sabota:$date --namespace platform

