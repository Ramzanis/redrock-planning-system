FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/app
COPY requirements.txt requirements.txt
RUN pip uninstall django
RUN pip install -r requirements.txt

FROM mysql:latest
RUN deluser mysql
RUN useradd mysql

RUN chown mysql:mysql /var/run/mysqld
