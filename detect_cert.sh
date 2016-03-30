#! /bin/bash

if [[ "$#" -ne 1 ]]; then
    echo 'Usage: detect_cert.sh <cert file>'
fi

FILE_TYPE=$(file -b $1)

if [[ "$FILE_TYPE" == 'PEM RSA private key' ]]; then
    echo 'PEM RSA'
    exit 0
fi

echo 'UNKNOWN'
exit 1
