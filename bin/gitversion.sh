outputfile = $1
echo "commit: $(git rev-parse HEAD | cut -c 1-8)" > $outputfile
echo "tag:" $(git describe --tags) >> $outputfile
echo "ref:" $2 >> $outputfile
echo "sha:" $3 >> $outputfile
echo "workflow:" $4 >> $outputfile
