<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <TVshow>
            <xsl:for-each select="/TVshow/show">
                <xsl:sort select="@duration" data-type="number" order="descending"/>
                <show>
                    <h3 style="margin-bottom: 0.4rem;">
                        <xsl:value-of select="./@name"/>
                    </h3>

                    <date>
                     <p style="margin-top: 0.4rem;">
                        <xsl:text>День:</xsl:text><xsl:text> </xsl:text>
                        <xsl:value-of select="./@day"/><xsl:text> </xsl:text>
                        <xsl:value-of select="./@month"/><xsl:text> </xsl:text>
                        <xsl:value-of select="./@year"/>
                    </p>
                    </date>
                    <p style="margin-top: 0.4rem;">
                        <xsl:text>Канал:</xsl:text><xsl:text> </xsl:text>
                        <xsl:value-of select="./channel"/>
                    </p>
                    <p style="margin-top: 0.4rem;">
                        <xsl:text>Жанр:</xsl:text><xsl:text> </xsl:text>
                        <xsl:value-of select="./genre"/>
                    </p>
                    <p style="margin-top: 0.4rem;">
                        <xsl:text>Время начала:</xsl:text><xsl:text> </xsl:text>
                        <xsl:value-of select="./beginTime"/>
                    </p>
                    <p style="margin-top: 0.4rem;">
                        <xsl:text>Длительность:</xsl:text><xsl:text> </xsl:text>
                        <xsl:value-of select="./duration"/>
                    </p>
                </show>
            </xsl:for-each>
        </TVshow>
    </xsl:template>
</xsl:stylesheet>