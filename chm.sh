#!/bin/sh

chmdir=$1

for path in $(grep '/.*\.html$' ${chmdir}/htmlhelp.hhp)
do

	filename=$(basename $path)
	sed  -i -e "s:$filename:$path:" ${chmdir}/toc.hhc

done