#!/bin/bash

PKG_VERSION_VAR_REGEXP="^$SP*$GUSTAVD_VERSION$SP*:\?=$SP*"
VERSION_MAKEFILE="./sysdrv/tools/board/buildroot/gustavd/gustavd.mk"
HASH_FILE="./sysdrv/tools/board/buildroot/gustavd/gustavd.hash"

main() {
	VERSION=$1
	FILE=gustavd-${VERSION}.tar.gz

	wget -O ${FILE} https://github.com/vstarodubtsev/gustavd/archive/${VERSION}/${VERSION}.tar.gz

	OUT="sha256"
	OUT+="  "
	OUT+=$( sha256sum ${FILE})

	echo $OUT >> $HASH_FILE

	sed -i "s/GUSTAVD_VERSION =.*/GUSTAVD_VERSION = ${VERSION}/" $VERSION_MAKEFILE

	rm ${FILE}
}

main "$@"
