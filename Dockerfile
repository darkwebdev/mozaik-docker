FROM tibalt/alpine-node

WORKDIR /app

USER app

RUN \
git clone --depth=1 https://github.com/darkwebdev/mozaik-dashboard dashboard && \
cd dashboard && \
npm i

COPY ./app /app

EXPOSE 5050

ENTRYPOINT ["sh", "/app/entry.sh"]
