#!/bin/sh -x

chromium --headless --run-all-compositor-stages-before-draw --virtual-time-budget=500 --no-pdf-header-footer --print-to-pdf="./cv.pdf"  --no-margins "$(pwd)/index.html"
exiftool -overwrite_original -all:all= cv.pdf