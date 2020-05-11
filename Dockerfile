FROM alpine

ENV WEBDAV_URL=
ENV WEBDAV_USERNAME=
ENV WEBDAV_PASSWORD=

ENV WEBDAV_MOUNT=/mnt/webdrive
ENV WEBDAV_UID=0
ENV WEBDAV_GID=0
ENV WEBDAV_DIRMODE=755
ENV WEBDAV_FILEMODE=755

RUN apk --no-cache add ca-certificates davfs2 tini rsync inotify-tools tzdata

COPY sh/* /usr/local/bin/

ENTRYPOINT [ "tini", "-g", "--", "/usr/local/bin/webdav-entrypoint" ]
CMD [ "webdav-loop" ]
