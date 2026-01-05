for pagename in allen2010*.jpg; do
  echo "Processing page: $pagename"
  kraken -i "$pagename" "${pagename%.jpg}.txt" binarize segment -x ocr -m en_best.mlmodel

  if [ $? -eq 0 ]; then
    echo "finishing ocr text: ${pagename%.jpg}.txt"
  else
    echo "ERROR processing $pagename"
  fi
done