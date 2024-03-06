docker network create dev-network

docker run -d --name some-mysql --network dev-network \
	-e MYSQL_DATABASE=drupal \
	-e MYSQL_USER=user \
	-e MYSQL_PASSWORD=password \
	-e MYSQL_ROOT_PASSWORD=password \
	mysql:5.7

docker run --name some-drupal \
	--network dev-network \
	-v /workspaces/drupal-example-repo/src:/tmp \
	-p 80:80 -d drupal