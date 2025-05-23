<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:apply-templates select="*"/>
  </xsl:template>

  <xsl:template match="*">
    <xsl:call-template name="print-path"/>
    <xsl:apply-templates select="*"/>
  </xsl:template>

  <xsl:template name="print-path">
    <xsl:text>"</xsl:text>
    <xsl:for-each select="ancestor-or-self::*">
      <xsl:if test="position() != 1">/</xsl:if>
      <xsl:value-of select="@name"/>
    </xsl:for-each>
    <xsl:text>"&#10;</xsl:text>
  </xsl:template>
</xsl:stylesheet>
