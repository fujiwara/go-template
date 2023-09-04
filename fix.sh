#!/bin/bash

set -eux
dirname=$(basename $(pwd))
find . -type f | xargs perl -pi -e "s/FIXME/$dirname/g"
mv cmd/FIXME cmd/$dirname
rm fix.sh
