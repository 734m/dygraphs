#!/bin/bash
# Generates a single JS file that's easier to include.

# Pack the dygraphs JS and rgbcolor
cat \
dygraph-canvas.js \
dygraph.js \
rgbcolor/rgbcolor.js \
strftime/strftime-min.js \
> dygraph-combined.js

java -jar yuicompressor-2.4.2.jar dygraph-combined.js \
> dygraph-packed.js
