#!/usr/bin/env sh
set -e
MIRROR=https://downloads.apache.org/kafka

dl()
{
    local ver=$1
    local scala_ver=$2
    local url="$MIRROR/$ver/kafka_${scala_ver}-${ver}.tgz.sha512"
    local sum
    # the .sha512 file is "kafka_<scala>-<ver>.tgz: <hex in space separated groups>"
    sum=$(curl -fsSL --proto '=https' --tlsv1.2 "$url" | tr -d ' \n' | awk -F ':' '{print $2}')
    if ! printf '%s' "$sum" | grep -Eq '^[0-9A-Fa-f]{128}$'
    then
        echo "bad or missing sha512 from $url: '$sum'" >&2
        exit 1
    fi
    printf "    # %s\n" "$url"
    printf "    '%s': sha512:%s\n" "$scala_ver" "$sum"
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" "$ver"
    dl "$ver" 2.13
}

for v in "${@:-4.4.0}"; do
    dl_ver "$v"
done
