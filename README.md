# ingest
batch video file ingest tool

## Welcome
Welcome to ingest,  a tool for batch converting media formats.
ingest currently relies on ffmpeg for the heavy lifting.

### errors:
The majority of errors and edge cases should be handled by ffmpeg and not ingest.  
ingest has no way and no need to keep up with ffmpeg development and assumes default expected behavior.


### default expected behavior :
```
ingest *.intype *.outtype
```
 takes all files in current directory of type .intype
 and converts to .outtype
 and dumps in same directory


 if no parms | echo help
 if bad parms | echo why bad and echo help
 if good parms | run using parms


### parms structure
```
 -v | echo verbose status and results
 ingest $1 $2 $3 $4 $5 $6 $7 $8 $9
 ingest input-type output-type
 ingest -i input-directory -t input-type -o output-type
 ingest -i input-directory -t input-type output-type
```

### parms
```
 -id   | input directory --> changes source
 -i    | input directory --> changes source
 -it   | input file type to look for
 -t    | input file type to look for
 -ot   | output file type
 -o    | output file type
 -od   | output directory
 -c    | use config file (useful for scheduled monitoring)
 -h    | echo help
 -help | echo help
 -?    | echo help

 ```
