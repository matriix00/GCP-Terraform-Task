
FROM python:3.8.2-slim-buster
RUN mkdir /app
WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .


CMD ["python3", "hello.py"]
