<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:apply-templates select="node"/>
  </xsl:template>

  <xsl:template match="node">
    <xsl:param name="path" select="@name"/>
    <xsl:value-of select="$path"/>
    <xsl:text>&#10;</xsl:text>
    <xsl:for-each select="node">
      <xsl:apply-templates select="." >
        <xsl:with-param name="path" select="concat($path, '/', @name)"/>
      </xsl:apply-templates>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
