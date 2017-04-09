<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Books</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>No</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="Books/Book">
                        <xsl:sort data-type="number" case-order="lower-first" order="ascending"
                                  select="Price"></xsl:sort>
                        <!--<xsl:if test="Price &lt; 25">-->
                        <xsl:choose>
                            <xsl:when test="Price &lt; 25">
                                <tr>
                                    <td>
                                        <xsl:number format="1" value="position()"></xsl:number>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Author"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Publisher"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:text disable-output-escaping="yes">&lt;b&gt;$&lt;/b&gt;</xsl:text>
                                        <xsl:value-of select="Price"></xsl:value-of>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr style="background:green;">
                                    <td>
                                        <xsl:number format="1" value="position()"></xsl:number>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Author"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Publisher"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:text disable-output-escaping="no">&lt;b&gt;$&lt;/b&gt;</xsl:text>
                                        <xsl:value-of select="Price"></xsl:value-of>
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                        <!--</xsl:if>-->


                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>