FROM tibalt/rpi-node-alpine

WORKDIR /app

USER app

RUN \
git clone --depth=1 https://github.com/darkwebdev/mozaik-dashboard dashboard && \
cd dashboard && \
yarn

COPY ./app /app

EXPOSE 5000

ENTRYPOINT ["sh", "/app/entry.sh"]
