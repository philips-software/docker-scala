#!/bin/bash

# ./bin/docker_build.sh 2.12/alpine scala scala:2.12 scala.2.12-alpine scala:2.12-1.2.3 scala:2.12-1.2.3-alpine
if [ "$#" -lt 2 ]; then
  echo "You need to provide a directory with a Dockerfile in it and a tag."
  exit 1
fi

builddir=$1
shift
basetag=$1
shift
tags=$@
currentdir=$(pwd)

echo $currentdir

echo "Building docker image: $builddir with tag: $basetag"
echo "-------------------------------------------------------------------------"
cd $builddir
docker build . -t philips-software/$basetag
while test ${#} -gt 0
do
  echo "Tagging philips-software/$basetag as philips-software/$1"
  docker tag philips-software/$basetag philips-software/$1
  shift
done
echo "============================================================================================"
echo "Finished building docker images: $builddir"
echo "============================================================================================"
