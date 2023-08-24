<h1 align="center">Documentation of Setting UP NGINX</h1>

### Building image with tag [`laravel-nginx`]
`sudo docker build --no-cache -t laravel-nginx .`

### Run container with exporting port [`source:destination`] and volume [`source:destination`]
`sudo docker run --rm -p 80:80 -v /home/devkartic/Docker/docker-tutorial-laracast/3_Setting_Up_Nginex/src:/var/www/html/public laravel-nginx`