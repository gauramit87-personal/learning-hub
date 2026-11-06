#!/bin/sh
# Regenerate a PDF ebook from a tutorial page using headless Google Chrome (version 125 or newer).
# Usage: tools/build-pdf.sh [tutorial.html] [output.pdf]
set -e

root=$(cd "$(dirname "$0")/.." && pwd)
src=${1:-investing/30-day-investing-handbook.html}
out=${2:-downloads/$(basename "$src" .html).pdf}
chrome=${CHROME:-google-chrome}

mkdir -p "$root/$(dirname "$out")"
"$chrome" --headless --disable-gpu --no-sandbox \
  --no-pdf-header-footer --generate-pdf-document-outline \
  --print-to-pdf="$root/$out" "file://$root/$src"
echo "Wrote $root/$out"
