ARG ODOO_VERSION=latest
FROM elicocorp/odoo:$ODOO_VERSION
MAINTAINER Dmytro Katyukha <dmytro.katyukha@gmail.com>

# Install postgresql
RUN apt-get update -qq && \
    apt-get install -qqq -y --no-install-recommends --auto-remove \
        postgresql && \
    rm -rf /var/lib/apt/lists/*

# Create postgres user for Odoo
RUN /etc/init.d/postgresql start && \
    sudo -u postgres -H psql --command "CREATE USER odoo WITH CREATEDB PASSWORD 'odoo';" && \
    /etc/init.d/postgresql stop

COPY ./sources/startup.sh /opt/scripts/startup.sh
ENV ODOO_DB_HOST="localhost" \
    ODOO_DB_USER="odoo" \
    ODOO_DB_PASSWORD="odoo"

CMD ["start"]
