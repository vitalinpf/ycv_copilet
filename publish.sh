#!/bin/bash
# Push this prototype to GitHub (vitalinpf/ycv_copilet). Run: bash publish.sh
cd "$(dirname "$0")" && git add -A && git commit -m "Update prototype" ; git push -u origin main
