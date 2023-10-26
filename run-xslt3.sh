#!/bin/bash

echo "Compiling stylesheet.xsl"
npx xslt3 -xsl:./public/xsl/stylesheet.xsl -export:./public/sef/stylesheet.sef.json -nogo
echo

echo "Transforming data.xml"
npx xslt3 -xsl:./public/sef/stylesheet.sef.json -s:./public/xml/data.xml -o:./public/html/xslt3-output.html -t
echo
