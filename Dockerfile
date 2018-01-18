FROM python:latest
MAINTAINER mickare <info@mickare.de>

RUN apt-get update && apt-get install -y \
	python3-pip \
	python3-dev \
	gcc \
	&& rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip \
	&& pip3 install nose coverage distribute \
	&& coverage --version

