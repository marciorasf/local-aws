FROM localstack/localstack:0.12.10

# rename default entrypoint
RUN mv /usr/local/bin/docker-entrypoint.sh /usr/local/bin/localstack-entrypoint.sh

# copy new entrypoint and initialization scripts
COPY ./init-scripts /usr/local/bin/init-scripts/
COPY ./docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh
