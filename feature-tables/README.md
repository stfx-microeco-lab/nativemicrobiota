# How to explore feature tables:

A feature table is the final output of pipelines like `qiime2` that contains *relative abundance* and taxonomy information for each ASV/OTU identified in your sequencing library. In this folder you'll find an example of a feature table from a pole-to-pole transect of the Pacific ocean. Use the following instructions to explore the file a bit. Remember tab completion which allows you to only type in the first part of filenames.

1. This is a big file - get a sense by running `zcat 221118-1030_P16N-S_3.84-fold-18S-correction_merged_16S_18S_proportions.QCd.tsv.gz` which will print out all the lines.
2. Count the lines by running `wc -l 221118-1030_P16N-S_3.84-fold-18S-correction_merged_16S_18S_proportions.QCd.tsv.gz`
3. Have a quick look into the file using `less`, i.e. `less 221118-1030_P16N-S_3.84-fold-18S-correction_merged_16S_18S_proportions.QCd.tsv.gz`. This is basically a plain-text excel spreadsheet separated by tabs (tsv). But viewing it this way on the terminal is kind of complicated, so we will run a few commands to make it easier to interpret.
4. Run `zcat 221118-1030_P16N-S_3.84-fold-18S-correction_merged_16S_18S_proportions.QCd.tsv.gz | cut -f 1-3 | less`. This command slices the spreadsheet to the first 3 lines using `zcat`, `cut`, and `less` connected by the pipe (`|`) character. Explore the file a bit by scrolling through with the arrow keys and try to understand what the three columns represent.
