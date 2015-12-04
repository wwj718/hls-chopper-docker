FROM       cine/nginx-rtmp-mediatools-docker

MAINTAINER Jeffrey Wescott <jeffrey@cine.io>

# copy our service
COPY service /service

VOLUME ["/var/hls"]

WORKDIR /service

# start nginx
CMD ["/service/bin/run"]

# configuration
EXPOSE 1935 80
