#!/bin/bash
appdir=$(pwd)
logdir="$appdir/log"
snapdir="$appdir/snapinfo"
[ ! -d $logdir ] && mkdir $logdir
[ ! -d $snapdir ] && mkdir $snapdir