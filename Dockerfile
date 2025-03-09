FROM debian

WORKDIR /APP

ENV DISPLAY=:0

COPY require.txt .

RUN chmod 755 require.txt && sh require.txt && rm require.txt

COPY cub .

RUN make

CMD ["./cub3D", "maps/good/matrix.cub"]
