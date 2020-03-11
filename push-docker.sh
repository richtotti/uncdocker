#Assumes this is built
#docker build --tag=app .


dockerpath="richtotti/app2"

# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag app $dockerpath

# Push Image
docker image push $dockerpath