#!/bin/bash
#
# Generic test driver script for builderCI
#
#      -verbose flag causes unconditional transcript display
#
# Copyright (c) 2012-2013 VMware, Inc. All Rights Reserved <dhenrich@vmware.com>.
# Copyright (C) 2014 GemTalk Systems LLC <dale.henrichs@gemtalksystems.com>
#
$BUILDER_CI_HOME/build.sh -d -i $ST -m -f "$PROJECT_HOME/tests/travisCI.st" -o travisCI
if [[ $? != 0 ]] ; then 
  echo "ERROR: $(basename $0)"
  cd "${BUILD_PATH}/travisCI/"
  $BUILDER_CI_HOME/buildImageErrorCheck.sh # dump Transcript on error and exit
  if [[ $? != 0 ]] ; then exit 2; fi
  $BUILDER_CI_HOME/dumpTranscript.sh
  exit 3
fi
cd "${BUILD_PATH}/travisCI/"
$BUILDER_CI_HOME/buildImageErrorCheck.sh # dump Transcript on error and exit
if [[ $? != 0 ]] ; then exit 4; fi
$BUILDER_CI_HOME/buildTravisStatusCheck.sh "$@" -verbose # dump Transcript on failed tests and exit
if [[ $? != 0 ]] ; then exit 5; fi
