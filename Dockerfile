# FROM ubuntu:latest
# MAINTAINER Rajdeep Dua "dua_rajdeep@yahoo.com"
# RUN apt-get update -y
# RUN apt-get install -y python-pip python-dev build-essential
# COPY . /app
# WORKDIR /app
# RUN pip install -r requirements.txt
# ENTRYPOINT ["python"]
# CMD ["app.py"]
#
#

FROM python:3.7

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "app.py" ]
