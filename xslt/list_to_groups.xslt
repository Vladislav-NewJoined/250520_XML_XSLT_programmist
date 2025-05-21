<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>

  <xsl:key name="groups" match="item" use="@group" />

  <xsl:template match="/list">
    <groups>
      <xsl:for-each select="item[generate-id() = generate-id(key('groups', @group)[1])]">
        <group name="{@group}">
          <xsl:for-each select="key('groups', @group)">
            <item name="{@name}" />
          </xsl:for-each>
        </group>
      </xsl:for-each>
    </groups>
  </xsl:template>

</xsl:stylesheet>
