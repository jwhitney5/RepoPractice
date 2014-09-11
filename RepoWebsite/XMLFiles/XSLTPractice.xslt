<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="Events">
    <Events>
      <xsl:apply-templates select="Event"/>
    </Events>
  </xsl:template>
  <xsl:template match="Event">
    <Event>
      <xsl:attribute name="EventCode">
        <xsl:value-of select="EventCode"/>
      </xsl:attribute>
      <xsl:attribute name="Description">
        <xsl:value-of select="Description"/>
      </xsl:attribute>
      <xsl:attribute name="Active">
        <xsl:value-of select="Active"/>
      </xsl:attribute>
    </Event>
  </xsl:template>
</xsl:stylesheet>
