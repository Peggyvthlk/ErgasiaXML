<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <ul>
          <xsl:apply-templates select="Epipla_Diakosmisi_AE/product_list/product[starts-with(start_value/offer_rate, '3') or starts-with(start_value/offer_rate, '4')]" />
        </ul>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="product">
    <li>
      <xsl:value-of select="concat('Product Name: ', product_identification/@product_name)" /><br />
      <xsl:value-of select="concat('Product Code: ', product_identification/@product_code)" /><br />
      <xsl:value-of select="concat('Discount: ', start_value/offer_rate)" /><br />
    </li>
  </xsl:template>

</xsl:stylesheet>
