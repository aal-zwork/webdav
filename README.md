### RUN

    docker run -e WEBDAV_URL=<URL> \
               -e WEBDAV_USERNAME=<USERNAME> \
               -e WEBDAV_PASSWORD=<PASSWORD> \
               -d /dev/fuse \
               -v /tmp/mnt:/mnt:rshared \
               --cap-add SYS_ADMIN \
               --privileged \
               --rm -it webdav
