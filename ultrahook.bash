#!/bin/bash
echo "ULTRAHOOK_TARGET_PORT=${ULTRAHOOK_TARGET_PORT}"
echo "ULTRAHOOK_DOMAIN=${ULTRAHOOK_DOMAIN}"
echo "Args: "$@
target=$(echo $ULTRAHOOK_TARGET_PORT | sed s/'tcp:'/'http:'/g)
exec ultrahook $@ $ULTRAHOOK_DOMAIN $target
