FROM python:alpine
RUN apk add ffmpeg alpine-sdk
#RUN pip install --upgrade pip setuptools wheel
RUN pip install spotdl
RUN mkdir spotdl
COPY spotdl.sh .
ENTRYPOINT ["sh", "spotdl.sh"]
