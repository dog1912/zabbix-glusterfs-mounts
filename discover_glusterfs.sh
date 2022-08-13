#!/bin/bash
mounts=$(grep glusterfs /etc/fstab | awk '{print $2}')
paths=()
for mount in $mounts
do
  paths+=("{\"{#GLUSTERFSNAME}\": \"$mount\"}")
done
result=$(IFS=,; echo "${paths[*]}")
echo "{\"data\": [$result]}"
