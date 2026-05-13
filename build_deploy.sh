#!/bin/bash

echo "Attempting to build project with Un-Official Static Site Generator Python3"
python3 ../Un-official-static-website-generator/generate.py site.md
if [ $? -ne 0 ]; then
    echo  "Un-Official Static Site Generator Build failed!"
    exit 1
fi

echo "Attempting to add dist directory to ipfs cluster"
PUBLIC_HASH=$(ipfs-cluster-ctl add --name "Union Stoplight (Un-Official)" --metadata type=website -r -Q dist/ )
if [ $? -ne 0 ]; then
    echo  "Add to IPFS Cluster failed!"
    exit 2
fi

echo "Received public hash of: $PUBLIC_HASH so lets try to update IPNS to it"
ipfs name publish -key=UnionStoplight "$PUBLIC_HASH"
if [ $? -ne 0 ]; then
    echo  "IPFS Publish to IPNS failed"
    exit 3
fi
