FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y python3 python3-pip

# We copy just the requirements.txt first to leverage Docker cache
COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD python app.py