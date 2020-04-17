#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://www.apache.org/dist/kafka

dl()
{
    local ver=$1
    local scala_ver=$2
    local url=$MIRROR/$ver/kafka_${scala_ver}-${ver}.tgz.sha512

    printf "      # %s\n" $url
    printf "      '%s': sha512:%s\n" $scala_ver `curl -sSL $url | tr '\n' ' ' | tr -s '[:blank:]' ' ' | sed -e 's/ //g' | awk -F ':' '{print $2}'`
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver 2.12
    dl $ver 2.13
}


dl_ver ${1:-2.5.0}
