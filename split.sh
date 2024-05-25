#!/bin/bash
set -e
# helper script to split a single erlang module into many smaller ones
export c=`cat common || echo`
s=$1
n="${s%.erl}"
m="${n}_"
mkdir -p $n
awk -v RS= "{print \"-module($m\" NR \").\" > (\"$n/$m\" NR \".erl\")}" $1
awk -v RS= "{print \"-compile([nowarn_export_all, export_all]).\n\" >> (\"$n/$m\" NR \".erl\")}" $1
awk -v RS= "{print ENVIRON[\"c\"] \"\n\" >> (\"$n/$m\" NR \".erl\")}" $1
awk -v RS= "{print >> (\"$n/$m\" NR \".erl\")}" $1
