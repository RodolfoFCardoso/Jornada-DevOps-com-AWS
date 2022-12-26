echo "Criando as imagens"

docker build -t rodolfofcardoso/projeto1:1.0 backend/.
docker build -t rodolfofcardoso/projeto-database:1.0 database/.

echo "Realizando o push das imagens"

docker push rodolfofcardoso/projeto1:1.0
docker push rodolfofcardoso/projeto-database:1.0