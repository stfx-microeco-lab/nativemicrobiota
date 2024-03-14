# How to extract ASV sequences from your data for further analysis (e.g. BLAST)

Note: these instructions assume you've successfully installed seqtk:
- https://github.com/lh3/seqtk (instructions using "make" - you may need to install some otools to run "make")
- https://anaconda.org/bioconda/seqtk (instructions using "conda", which you will need to install first)

Steps:

1. Identify some ASV ids that you'd like to BLAST or otherwise further analyze. I usually do this by opening up my ASV table in LibreOffice Calc (or Excel) and sorting the columns to identify abundant and interesting ASVs.
2. Copy those ASV ids to your clipboard (they should look like this [without quotes]: "30b699bde7bb45b01c5a261be823aff8")
3. Paste those ids into a new file named something like `ids.txt`. This needs to be a *plaintext* file, so do this editing on the command line or with a simple text editor like Notepad.
4. Now, get the `.fasta` file that I provided to you and put it in the same directory as `ids.txt`. Make sure you're using the right one (16S or 18S).
5. Run `seqtk` as follows:
```
seqtk subseq [your fasta file] ids.txt
```

This will spit out your ASV sequences of interest from the big fasta file, based on the ids you provided in the text file. You can redirect the output to a new file using the ">" character (i.e. `seqtk subseq [your fasta file] ids.txt > [your output file name]`).
