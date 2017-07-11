#!/usr/bin/env bash

kato node rename ${domain}
# kato node setup core

docker pull stackato/stack-cflinuxfs2

# set 6gb swap
