#!/bin/bash

echo "Attempting to build project with npm"
npm run build
if [ $? -ne 0 ]; then
    echo  "npm build failed!"
    exit 1
fi

echo "Attempting to add dist directory to ipfs"
PUBLIC_HASH=$(ipfs add -rQ dist/ )
if [ $? -ne 0 ]; then
    echo  "Add to IPFS failed!"
    exit 2
fi

echo "Received public hash of: $PUBLIC_HASH so lets try to update IPNS to it"
ipfs name publish -key=unionStoplight $PUBLIC_HASH
if [ $? -ne 0 ]; then
    echo  "Publish to IPNS failed."
    exit 3
fi
