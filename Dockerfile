FROM maptiler/tileserver-gl:v5.1.3

ENV TILESERVER_PUBLIC_URL="http://localhost/vector"

WORKDIR /

COPY ./fonts /fonts
COPY ./config.json .
COPY ./data /data

USER root
RUN chmod -R u+r /data

CMD ["./run.sh"]