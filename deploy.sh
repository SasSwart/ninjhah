#!/bin/bash
echo "$SSH_PRIVATE_KEY" > ./key
chmod 0600 ./key
scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i ./key -P $PORT -r ./$LOCAL_BUILD_PATH $USER@$HOST:$DEPLOY_PATH
rm -rf ./key