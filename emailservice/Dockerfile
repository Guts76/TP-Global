FROM python:3.9-slim
LABEL version="1.0" maintainer="RAVENET"

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

CMD [ "python3", "email_server.py" ]
#CMD [ "gunicorn", "app:app", "-b", "0.0.0.0:80", "--log-file", "-", "--access-logfile", "-", "--workers", "4", "--keep-alive", "0" ]