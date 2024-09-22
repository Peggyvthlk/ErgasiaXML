<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <ul>
          <xsl:apply-templates select="Epipla_Diakosmisi_AE/product_list/product[start_value/@can_reserved = 'yes']" />
        </ul>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="product">
    <li>
      <xsl:value-of select="concat('Product Name: ', product_identification/@product_name)" /><br />
      <xsl:value-of select="concat('Product Code: ', product_identification/@product_code)" /><br />
      <xsl:apply-templates select="product_identification/@productProd_Class_Id" mode="categories" />
    </li>
  </xsl:template>
  
  <xsl:template match="@productProd_Class_Id" mode="categories">
    <xsl:value-of select="concat('Categories: ', .)" /><br />
  </xsl:template>

</xsl:stylesheet>
