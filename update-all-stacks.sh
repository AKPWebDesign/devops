#!/bin/bash
for D in *; do
    if [ -d "${D}" ]; then
        cd "${D}";
        if [ -f "./.no-autoupdate" ]; then
            echo ".no-autoupdate exists, skipping $D."
        else 
            docker-compose pull && docker-compose up -d;
        fi
        cd ../;
    fi
done
