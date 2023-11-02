#!/bin/bash

PROXYURL=${1}
CONF_PATH = "/etc/pacman.d/gnupg/"
CONF_NAME = "dirmngr.conf"

export http_proxy=${PROXYURL}
export https_proxy=${PROXYURL}
export ftp_proxy=${PROXYURL}
export all_proxy=${PROXYURL}

mkdir -p ${CONF_PATH}
echo honor-http-proxy > ${CONF_PATH}/${CONF_NAME}

