FROM python:3.12-alpine

WORKDIR /flask_project

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./flask_progect/requirements.txt /flask_progect/requirements.txt
RUN pip install -r requirements.txt

COPY ./flask_progect /flask_progect
