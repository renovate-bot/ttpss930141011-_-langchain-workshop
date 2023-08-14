FROM python:3.10-slim
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
	      build-essential gcc 


WORKDIR /app

COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/
