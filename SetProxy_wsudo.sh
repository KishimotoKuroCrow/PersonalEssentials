#!/bin/bash

PROXYURL=${1}

export http_proxy=${PROXYURL}
export https_proxy=${PROXYURL}
export ftp_proxy=${PROXYURL}
export all_proxy=${PROXYURL}

CONF_NAME="dirmngr.conf"
CONF_PATH="/etc/pacman.d/gnupg/"
mkdir -p ${CONF_PATH}
echo honor-http-proxy > ${CONF_PATH}/${CONF_NAME}

CONF_PATH="/etc/gnupg/"
mkdir -p ${CONF_PATH}
echo honor-http-proxy > ${CONF_PATH}/${CONF_NAME}
