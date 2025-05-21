<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/groups">
    <list>
      <xsl:for-each select="group/item">
        <item name="{@name}" group="{../@name}" />
      </xsl:for-each>
    </list>
  </xsl:template>

</xsl:stylesheet>
