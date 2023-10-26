<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    
    <xsl:output method="html" indent="yes" html-version="5" />
    <xsl:mode on-no-match="deep-skip"/>
    
    <xsl:template match="document" mode="#default">
        <html lang="en">
            <head>
                <title>SaxonJS Test Document</title>
            </head>
            <body>
                <xsl:apply-templates select="*"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="paragraph" mode="#default">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    
</xsl:stylesheet>