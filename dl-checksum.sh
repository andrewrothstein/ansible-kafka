#!/usr/bin/env sh
VER=${1:-2.3.1}
DIR=~/Downloads
MIRROR=https://www.apache.org/dist/kafka/${VER}

dl()
{
    SCALAVER=$1
    URL=$MIRROR/kafka_${SCALAVER}-${VER}.tgz.sha512

    printf "      # %s\n" $URL
    printf "      '%s': sha512:%s\n" $SCALAVER `curl -sSL $URL | tr '\n' ' ' | tr -s '[:blank:]' ' ' | sed -e 's/ //g' | awk -F ':' '{print $2}'`
}

printf "  '%s':\n" $VER
dl 2.11
dl 2.12


