<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <table>
          <tr>
            <th>Product Name</th>
            <th>Product Code</th>
            <th>Number of Installments</th>
            <th>Amount per Installment</th>
            <th>Final Price</th>
          </tr>
          <xsl:for-each select="Epipla_Diakosmisi_AE/product_list/product[accept_doses and Final_value &gt; 150]">
            <xsl:sort select="Final_value" data-type="number" order="descending" />
            <xsl:if test="accept_doses">
              <xsl:variable name="num_doses" select="accept_doses/num_doses" />
              <xsl:variable name="ammount_dose" select="accept_doses/ammount_dose" />
              <tr>
                <td><xsl:value-of select="product_identification/@product_name" /></td>
                <td><xsl:value-of select="product_identification/@product_code" /></td>
                <td><xsl:value-of select="$num_doses" /></td>
                <td><xsl:value-of select="$ammount_dose" /></td>
                <td><xsl:value-of select="Final_value" /></td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
