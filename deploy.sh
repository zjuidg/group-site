#!/bin/bash

set -e
set -x

hugo

pushd docs
git add -A
git commit -m "$1" && true
p git push
popd

git add -A
git commit -m "$1" && true
p git push

