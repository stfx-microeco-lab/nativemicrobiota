# How to construct a basic pipeline in bash:

1. Make a folder for scripts, i.e. `mkdir scripts`
2. Create two new files in that directory:
```
touch scripts/01-convert-all-to-fasta.sh
touch scripts/02-blast-against-GTDB.sh
```
3. Check the permissions of the files, i.e. `ls -la scripts/`
4. Make the scripts "executable" by running `chmod +x scripts/*`
5. Check the permissions again.
