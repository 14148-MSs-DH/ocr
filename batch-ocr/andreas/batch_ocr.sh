for f in *.tiff; do
  kraken -i "$f" "${f%.tiff}.txt" binarize segment ocr -m arabic_best.mlmodel
done