#!/bin/bash
for D in *; do
    if [ -d "${D}" ]; then
        cd "${D}";
        docker compose down;
        cd ../;
    fi
done
