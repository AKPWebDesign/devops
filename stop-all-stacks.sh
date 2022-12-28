#!/bin/bash
for D in *; do
    if [ -d "${D}" ]; then
        cd "${D}";
        docker compose stop;
        cd ../;
    fi
done
