<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:template match="/">
  <html><head><title></title></head>
   <body style="background-color:gold">
    <xsl:for-each select="/таблица/студент/отметка[@дисциплина='Веб-дизайн']">
      <xsl:choose>
        <xsl:when test="отметка[2] &lt 4"> Имя: <span style="color:red"><xsl:value-of select="@имя"/></span>
        </xsl:when>
        <xsl:otherwise>
          Имя: <span style="background-color:red"><xsl:value-of select="../@имя/"/></span>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <xsl:for-each select="таблица/студент">
      <p>
        <xsl:if test=" отметка[2] &gt; 3">
          Имя: <span style="color:red"><xsl:value-of select="@имя"/></span>
          Веб-дизайн: <strong><em style="color:blue"><xsl:value-of select="отметка[2]"/></em></strong>
        </xsl:if>  
      </p>
    </xsl:for-each>
   </body></html>
  </xsl:template>
</xsl:stylesheet>
