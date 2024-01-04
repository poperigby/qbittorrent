FROM ghcr.io/onedr0p/qbittorrent:4

LABEL maintainer="PopeRigby <poperigby@mailbox.org>"
LABEL org.opencontainers.image.source="https://github.com/poperigby/qbittorrent"
LABEL org.opencontainers.image.description="PopeRigby's custom build of qBittorrent with VueTorrent"

USER root
RUN apk add --no-cache git && \
    git clone --single-branch --branch latest-release https://github.com/WDaan/VueTorrent.git /app/vuetorrent && \
    apk del git

USER kah
