#!/bin/bash

# Original command to ocr with kraken
# kraken -i Page_01.tiff output.txt binarize segment ocr -m en_best.mlmodel

# Steps
# Make this file with the right parameters for your setup
# (On OSX) run chmod +x batch_ocr.sh
# In terminal, run `./batch_ocr.sh` (or whatever you called your script)

for f in *.tiff; do
  kraken -i "$f" "${f%.tiff}.txt" binarize segment ocr -m en_best.mlmodel
done