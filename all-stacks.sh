#!/bin/bash
for D in *; do
    if [ -d "${D}" ]; then
        cd "${D}";
        if [ -f "./.no-automation" ]; then
            echo ".no-automation exists, skipping $D."
        else
           docker compose "$@";
        fi
        cd ../;
    fi
done
