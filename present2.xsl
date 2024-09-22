<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <table>
          <tr>
            <th>Product Name</th>
            <th>Product Code</th>
            <th>Final Value</th>
          </tr>

          <xsl:apply-templates select="Epipla_Diakosmisi_AE/product_list/product">
            <xsl:sort select="Final_value" data-type="number" order="ascending" />
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="product">
    <tr>
      <td><xsl:value-of select="product_identification/@product_name" /></td>
      <td><xsl:value-of select="product_identification/@product_code" /></td>
      <td><xsl:value-of select="Final_value" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
