<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template name="numbers">
    <xsl:param name="M"/>
    <xsl:param name="current" select="0"/>
    <xsl:value-of select="$current"/>
    <xsl:if test="$current &lt; $M">
      <xsl:text> </xsl:text>
      <xsl:call-template name="numbers">
        <xsl:with-param name="M" select="$M"/>
        <xsl:with-param name="current" select="$current + 1"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

  <!-- Пример вызова шаблона (можно удалить или изменить M) -->
  <xsl:template match="/">
    <xsl:call-template name="numbers">
      <xsl:with-param name="M" select="10"/>
    </xsl:call-template>
  </xsl:template>
</xsl:stylesheet>
