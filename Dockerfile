FROM python:3.9-bookworm
LABEL authors="aws1313"
RUN apt update
RUN apt install libpq-dev libldap2-dev libsasl2-dev
WORKDIR /opt/helios
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD chmod +x ./docker_start.sh

CMD ["/bin/sh", "./docker_start.sh"]
