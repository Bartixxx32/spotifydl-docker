FROM alpine:edge
RUN apk add python3 py-pip ffmpeg alpine-sdk gcc python3-dev
RUN pip install --upgrade pip setuptools wheel
RUN pip install spotdl
RUN mkdir spotdl
COPY spotdl.sh .
ENTRYPOINT ["sh", "spotdl.sh"]
