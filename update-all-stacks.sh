#!/bin/bash
for D in *; do
    if [ -d "${D}" ]; then
        cd "${D}";
        docker-compose pull && docker-compose up -d;
        cd ../;
    fi
done
