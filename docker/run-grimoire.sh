#! /bin/bash

docker pull grimoirelab/full

docker run -p 127.0.0.1:5601:5601 \
    -v $(pwd)/credentials.cfg:/override.cfg \
    -v $(pwd)/project.cfg:/project.cfg \
    -v $(pwd)/projects.json:/projects.json \
    -t grimoirelab/full
