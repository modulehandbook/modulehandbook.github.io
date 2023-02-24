echo "commit: $(git rev-parse HEAD | cut -c 1-8)"
echo "tag:" $(git describe --tags)
echo "ref:" $1
echo "sha:" $2
echo "workflow:" $3
