#! /bin/bash

set -eo pipefail

echo "Moving config files into their right places."

# https://stackoverflow.com/questions/59895/how-can-i-get-the-directory-where-a-bash-script-is-located-from-within-the-scrip
# if you actually think bash is a good programming language you are
# *straight up delusional*
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd "$SCRIPT_DIR";
cd ..;

cp client/.example.env client/.env
cp server/test.conf.json5 server/conf.json5

echo "Done."