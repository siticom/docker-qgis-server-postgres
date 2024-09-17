FROM docker.io/camptocamp/qgis-server:3.38.0

LABEL maintainer="Jakob Miksch <jakob.miksch@siticom.de>"

COPY ./postgres-access.conf /etc/apache2/conf-enabled/postgres-access.conf
