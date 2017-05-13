#!/bin/bash

readonly GS=/usr/local/bin/gs
readonly INFILE=$1
readonly OUTFILE=upper.$INFILE

function usage {
  echo "Usage: $0 <input file>"
  exit 1
}

if [ "upper." == "$OUTFILE" ] ; then
  usage
fi

if [ ! -e $INFILE ] ; then
  usage
fi

$GS -sDEVICE=pdfwrite -o $OUTFILE -c "[/CropBox [0 396 612 792] /PAGES pdfmark" -f $INFILE
