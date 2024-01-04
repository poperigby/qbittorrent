FROM ghcr.io/onedr0p/qbittorrent:4

RUN apk add --no-cache git
RUN git clone --single-branch --branch latest-release https://github.com/WDaan/VueTorrent.git /app/vuetorrent
RUN apk del git

