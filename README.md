docker run -d -p 80:80 -v "$(pwd)"/nginx.conf:/usr/local/nginx/conf/nginx.conf --name nginx nginx:final
