FROM python:3.7-slim
LABEL version="1.0" maintainer="RAVENET"
RUN apt-get update -qqy && \
	apt-get -qqy install wget g++ && \
	rm -rf /var/lib/apt/lists/*

ENV PYTHONUNBUFFERED=0

WORKDIR /app

COPY . .
RUN pip install -r requirements.in
RUN pip install -r requirements.txt

ENV PORT "8080"
EXPOSE 8080

CMD [ "python", "recommendation_server.py" ]
#CMD [ "gunicorn", "app:app", "-b", "0.0.0.0:80", "--log-file", "-", "--access-logfile", "-", "--workers", "4", "--keep-alive", "0" ]