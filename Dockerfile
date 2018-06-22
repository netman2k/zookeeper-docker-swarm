FROM zookeeper:3.4.12

RUN apk add --update bind-tools

COPY ./docker-swarm-entrypoint.sh /
RUN chmod 777 /docker-swarm-entrypoint.sh

ENTRYPOINT ["/docker-swarm-entrypoint.sh"]
CMD ["zkServer.sh", "start-foreground"]
