# syntax=docker/dockerfile:1
# https://docs.docker.com/language/python/build-images/#create-a-dockerfile-for-python
FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]