#!/bin/bash

. xpcreds.env

docker run --privileged -v $REPOS_HOST_DIR:/repos -w /repos/ -v ~/.m2:/.m2 --env-file xpcreds.env -it --rm atlas-sdk bash -c "mount-workspace; cd /workspace; rsync-code; bash"
