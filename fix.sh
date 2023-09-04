#!/bin/sh

set -eux
dirname=`dirname $0`
find . -type f | xargs perl -pi -e "s/FIXME/$dirname/g"
mv cmd/FIXME cmd/$dirname
