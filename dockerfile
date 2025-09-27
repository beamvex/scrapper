FROM node:22-bookworm-slim

RUN npx playwright install chrome --with-deps \
 && rm -rf /root/.npm/_cacache /root/.npm/_logs /root/.npm/_npx \
           /root/.cache/* /tmp/* \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /var/cache/fontconfig/*
