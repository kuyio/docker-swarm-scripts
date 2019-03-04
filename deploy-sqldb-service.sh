#!/bin/bash
source configuration

docker service create \
	--name sql \
	--network ${NETWORK} \
	--env ACCEPT_EULA=Y \
	--env SA_PASSWORD=${SQLSERVER_PASSWORD} \
	-p 1433:1433 \
	mcr.microsoft.com/mssql/server:${SQLSERVER_VERSION}
