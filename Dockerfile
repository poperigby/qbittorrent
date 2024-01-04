FROM ghcr.io/onedr0p/qbittorrent:4

USER root
RUN apk add --no-cache git && \
    git clone --single-branch --branch latest-release https://github.com/WDaan/VueTorrent.git /app/vuetorrent && \
    apk del git
USER kah
