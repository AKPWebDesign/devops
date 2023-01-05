#!/bin/bash
for D in *; do
    if [ -d "${D}" ]; then
        cd "${D}";
        if [ -f "./.no-autoupdate" ]; then
            echo ".no-autoupdate exists, skipping $D."
        else
           docker compose restart;
        fi
        cd ../;
    fi
done
