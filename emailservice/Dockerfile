FROM python:3.9-slim
LABEL version="1.0" maintainer="RAVENET"

WORKDIR /app

RUN apt-get -qq update \
    && apt-get install -y --no-install-recommends \
        g++ \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install -r requirements.txt
# Enable unbuffered logging
ENV PYTHONUNBUFFERED=1
# Enable Profiler
ENV ENABLE_PROFILER=1
EXPOSE 8080

CMD [ "python", "email_server.py" ]
#CMD [ "gunicorn", "app:app", "-b", "0.0.0.0:80", "--log-file", "-", "--access-logfile", "-", "--workers", "4", "--keep-alive", "0" ]