#!/bin/bash

mkdir -p /dev/shm/images
raspistill -o /dev/shm/images/test.jpg
result=`python detectFruit.py http://YOUR-EXTERNAL-IP:5005/images/test.jpg`
if [ $result == 1 ] ; then
    `curl -X PATCH -d
    '{"checkout_state":{"workflow_state":"shopping"},"items":{"1069829":{"created_at":1.409336316211E9,"qty":1,"user_id":YOUR_USER_ID},"8182033":{"created_at":1.431448385824E9,"qty":2,"user_id":YOUR_USER_ID},"8583398":{"created_at":1.431448413452E9,"qty":3,"user_id":YOUR_USER_ID},"8585519":{"created_at":1.431448355207E9,"qty":3,"user_id":YOUR_USER_ID},"8601780":{"created_at":1.424915467829E9,"qty":3,"user_id":YOUR_USER_ID},"8602830":{"created_at":1.43144840911E9,"qty":1,"user_id":YOUR_USER_ID}},"users":{"-JXAzAp6rgtM4u2dV2tI":{"id":YOUR_USER_ID,"name":"StevenH"},"-Jj2_kFsu5hvZRhx4KX1":{"id":YOUR_USER_ID,"name":"StevenH"}}}' https://instacart.firebaseio.com/carts/YOUR_HASH.json`
fi
