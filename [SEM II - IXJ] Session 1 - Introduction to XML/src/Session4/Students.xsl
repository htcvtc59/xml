<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:std="http://xml.net/schema/Students">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Node Set Functions</title>
            </head>
            <body>

                <table border="1">
                    <tr>
                        <th>namespace-uri{}</th>
                        <th>name{}</th>
                        <th>local-name{}</th>
                        <th>text{}</th>
                    </tr>
                    <xsl:apply-templates select="*"/>
                </table>
                boolean(1) :
                <xsl:value-of select="boolean(1)"/>
                <br/>
                boolean(0) :
                <xsl:value-of select="boolean(0)"/>
                <br/>
                boolean('ab') :
                <xsl:value-of select="boolean('ab')"/>
                <br/>
                boolean('') :
                <xsl:value-of select="boolean('')"/>
                <br/>
                not(true()) :
                <xsl:value-of select="not(true())"/>
                <br/>
                Total Student:
                <xsl:value-of select="count(std:Students/std:Student)"/>
                <br/>
                Total Age:
                <xsl:value-of select="sum(std:Students/std:Student/std:Age)"/>
                <br/>
                translate('cba','abc','loh'):
                <xsl:value-of select="translate('cba','abc','loh')"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="*">
        <tr>
            <td>
                <xsl:value-of select="namespace-uri()"/>
            </td>
            <td>
                <xsl:value-of select="name()"/>
            </td>
            <td>
                <xsl:value-of select="local-name()"/>
            </td>
            <td>
                <xsl:value-of select="text()"/>
            </td>
        </tr>
        <xsl:apply-templates select="*"/>
    </xsl:template>
</xsl:stylesheet>