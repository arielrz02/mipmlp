FROM python:3.7.2-alpine3.9

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD python Site/app.py