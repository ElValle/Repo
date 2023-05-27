docker run -d -p 80:80 -v "$(pwd)"/nginx.conf:/usr/local/nginx/conf/nginx.conf --name nginx nginx:final
or
docker run -d -p 80:80 --mount type=bind,source="$(pwd)"/nginx.conf,target=/usr/local/nginx/conf/nginx.conf --name nginx nginx:final

