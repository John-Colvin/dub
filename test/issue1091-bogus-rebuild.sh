#!/bin/sh

set -e

cd ${CURR_DIR}/1-exec-simple
rm -f dub.selections.json
${DUB} build --compiler=${DC} 2>&1 | grep -e "building configuration" -c || exit 1
${DUB} build --compiler=${DC} 2>&1 | grep -e "building configuration" -c && exit 1 || exit 0
