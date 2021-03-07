#!/bin/bash

docker run -it --rm -p 80:80 -p 443:443 --hostname localhost -v /Users/mariamurphy/Documents/dev_projects/certs:/etc/ssl/certs mathapp-development "update-ca-certificates"
