docker run -d --name mini -e MYSQL_RANDOM_ROOT_PASSWORD=yes -e MYSQL_USER=mini -e MYSQL_PASSWORD=wL9y4pDF4f8MSv -e MYSQL_DATABASE=mini -v ./mysql:/data -p 3307:3306 mysql:latest
