ssh -i ~/.ssh/TerraformPair.pem ubuntu@18.134.198.195 << EOF 

sudo rm -r CNE-Project-2

git clone https://github.com/SonnyRLM/CNE-Project-2

cd CNE-Project-2

git checkout Dev

mysql -h cne-project-db-prod.cisxnnla1kct.eu-west-2.rds.amazonaws.com -P 3306 -u admin -ppassword < database/Create.sql

docker-compose up -d --build

docker exec backend bash -c "pytest tests/ --cov application"
docker exec frontend bash -c "pytest tests/ --cov application"

docker-compose down

