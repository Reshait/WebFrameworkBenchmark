#!/bin/bash

cd $(dirname $0)

[ -f helloworldserver ] || \
	${NIM-nim} c -d:release --gc:markandsweep helloworldserver.nim

set -x
exec ./helloworldserver "$@"
