<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:apply-templates select="*"/>
  </xsl:template>

  <xsl:template match="*">
    <xsl:text>"</xsl:text>
    <xsl:for-each select="ancestor-or-self::*">
      <xsl:if test="position() != 1">/</xsl:if>
      <xsl:value-of select="@name"/>
    </xsl:for-each>
    <xsl:text>"</xsl:text>
    <xsl:if test="count(.//*) + count(following::*) &gt; 0">
      <xsl:text>&#10;</xsl:text>
    </xsl:if>
    <xsl:apply-templates select="*"/>
  </xsl:template>
</xsl:stylesheet>
