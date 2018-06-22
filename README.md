# zookeeper-docker-swarm
### About
It is a clone of the itsaur/zookeeper-docker-swarm.
I created it cause I think that zookeeper 3.5 is not compatable with this configuration and 3.5 is still in beta.
I need to use stable version in my production.

### Available Tags:
 - [3.4.12](https://github.com/netman2k/zookeeper-docker-swarm/blob/3.4.12/Dockerfile)

### What is Zookeeper with Docker Swarm?
This is an extension to the [official Zookeeper Docker image](https://store.docker.com/images/zookeeper). 
This image lets you configure Zookeeper in [replicated mode](http://zookeeper.apache.org/doc/current/zookeeperStarted.html#sc_RunningReplicatedZooKeeper) 
as a single docker service, instead of creating three (or more) different services for each one of your nodes as proposed by the official image.

The only thing needed is to provide the environment variable `SERVICE_NAME` when creating the swarm service having as value the name of your docker service. Using this variable, each container will be able to discover the rest Zookeeper nodes.

An example of the Docker Service create command is:

```bash
docker service create \
    --name zookeeper \
    -p 2181:2181 \
    -e "SERVICE_NAME=zookeeper" \
    itsaur/zookeeper-replicated
```


