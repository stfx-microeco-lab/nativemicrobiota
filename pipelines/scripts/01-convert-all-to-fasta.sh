#!/bin/bash

for file in ocean-data/*gz ; do 
	
	seqtk seq -A $file 
	
done
