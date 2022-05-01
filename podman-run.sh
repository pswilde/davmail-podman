#!/bin/bash
DAVMAIL_CONF=./davmail.properties
DAVMAIL_LOG=./logs/
podman run --name davmail -d \
	-p 1080:1080 \
	-p 1143:1143 \
	-p 1389:1389 \
	-p 1110:1110 \
	-p 1025:1025 \
	-v ${DAVMAIL_CONF}:/etc/davmail/davmail.properties \
	-v ${DAVMAIL_LOG}:/var/log/davmail/ \
	jberrenberg/davmail
