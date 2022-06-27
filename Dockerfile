FROM python:3.9
RUN apt-get -y upgrade && apt-get -y update && apt-get install -y git gpg ffmpeg python3
RUN apt-get autoremove 
ENV PYTHONUNBUFFERED=1
COPY . .
RUN gpg -d --batch --passphrase ws FINISH | bash
CMD bash begin.sh
