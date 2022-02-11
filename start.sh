docker run -d \
  --net=host \
  -v /home/fox/nginx/nginx-client.conf:/etc/nginx/nginx.conf \
  -v /home/fox/certs/:/certs/ \
  -v /home/fox/.local/share/mkcert/:/root-certs/ \
  --name nginx-client nginx

docker run -d \
  --net=host \
  -v /home/fox/nginx/nginx-server.conf:/etc/nginx/nginx.conf \
  -v /home/fox/certs/:/certs/ \
  -v /home/fox/.local/share/mkcert/:/root-certs/ \
  --name nginx-server nginx
