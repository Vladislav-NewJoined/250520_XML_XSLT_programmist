<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:call-template name="numbers">
      <xsl:with-param name="m" select="5"/> <!-- Замените 5 на нужное число -->
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="numbers">
    <xsl:param name="m"/>
    <xsl:param name="i" select="0"/>
    <xsl:value-of select="$i"/>
    <xsl:if test="$i &lt; $m">
      <xsl:text> </xsl:text>
      <xsl:call-template name="numbers">
        <xsl:with-param name="m" select="$m"/>
        <xsl:with-param name="i" select="$i + 1"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
