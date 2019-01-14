#!/bin/bash

echo "debug enabled... "
echo "| script name:    | " $0;
echo "| number of args: | " $#;
echo "| args supplied:  | " $@;

# Welcome to ingest, a tool for batch converting video media formats.
# ingest currently relies on ffmpeg for the heavy lifting.

# errors:
# the majority of errors and edge cases
# should be handled by ffmpeg and not ingest.
# ingest has no way and no need to keep up with ffmpeg development
# and assumes default expected behavior.


# if no parms | echo help
# if bad parms | echo why bad and echo help
# if good parms | run using parms


# parms structure
# -v | echo verbose status and results
# ingest $1 $2 $3 $4 $5 $6 $7 $8 $9
# ingest input-type output-type
# ingest -i input-directory -t input-type -o output-type
# ingest -i input-directory -t input-type output-type


# parms
# -id   | input directory --> changes source
# -i    | input directory --> changes source
# -it   | input file type to look for
# -t    | input file type to look for
# -ot   | output file type
# -o    | output file type
# -od   | output directory
# -c    | use config file (useful for scheduled monitoring)
# -h    | echo help
# -help | echo help
# -?    | echo help





##################################################################
### MVP ###

# default expected behavior :
# ingest *.intype *.outtype
#
# takes all files in current directory of type .intype
# and converts to .outtype
# and dumps in same directory

# loop the following over each match in the directory:
# ffmpeg -i *.flv -c copy *.mp4

### parm checks ###
#

# check if input filetype parameter is empty. If empty, exit sanely or prompt user input.
if [ -z "$1" ]
then
  printf "You must specify input filetype. \n"  && exit;
fi

if [ -z "$2" ]
then
  printf "You must specify output filetype. \n"  && exit;
fi

if [ -z "$3" ]
then
  printf "running $0 $1 $2 ...\n";
fi





### main ###
#

# set parm $1 to ext for further processing without losing/modifying its value.
inxt=*.$1
# set parm $2 to ext for further processing without losing/modifying its value.
outxt=*.$2



# initial debug. shows input files selected.
for i in $inxt; do
  [ -f "$i" ] & printf "main stuffs goes here: \n$i\n" || break;
done


### END MVP ###
######################################################################
