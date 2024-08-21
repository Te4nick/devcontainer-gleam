#!/bin/bash
GITHUB_URL='https://github.com/gleam-lang/gleam/releases/download/v1.2.0/'
RELEASE_FILE='gleam-v'$GLEAM_VERSION'-x86_64-unknown-linux-musl.tar.gz'
RELEASE_SHA=$RELEASE_FILE'.sha512'
TMP_DIR='/tmp/gleam'

mkdir $TMP_DIR && cd $TMP_DIR
wget $GITHUB_URL$RELEASE_FILE
wget $GITHUB_URL$RELEASE_SHA
sha512sum -c $RELEASE_SHA
if [ $? != 0 ]; then
    echo 'CHECKSUM INVALID'
    exit $?
fi
tar xf $RELEASE_FILE
mv gleam /usr/bin