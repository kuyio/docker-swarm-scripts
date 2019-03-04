#!/bin/bash
source configuration

docker service create \
	--name redis \
	--network ${NETWORK} \
	-p 6379:6379 \
	redis:${REDIS_VERSION} redis-server --requirepass ${REDIS_PASSWORD}