#!/bin/sh

RSYNC_EXCLUDE_FROM="/home/deepakt/exclude.list" osync.sh --initiator="/home/deepakt" --target="ssh://denis@denis-pc//home/denis/deepakt" --rsakey=/home/deepakt/.ssh/id_rsa.pub
