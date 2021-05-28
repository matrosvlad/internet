<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <TVshow>
            <xsl:for-each select="/TVshow/show">
                <xsl:if month="04" sort select="channel" order="descending" data-type="string"/>
                <show>
                    <h3 style="margin-bottom: 0.4rem;">
                        <xsl:value-of select="./@name"/>
                    </h3>
                    <p style="margin-top: 0.4rem;">
                        <xsl:text>День:</xsl:text><xsl:text> </xsl:text>
                        <xsl:value-of select="./weekday"/><xsl:text>  </xsl:text>
                        <xsl:value-of select="./day"/><xsl:text>.</xsl:text>
                        <xsl:value-of select="./month"/><xsl:text>.</xsl:text>
                        <xsl:value-of select="./year"/>
                    </p>
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
                        <xsl:value-of select="./duration"/><xsl:text> мин.</xsl:text>
                    </p>
                </show>
            </xsl:for-each>
        </TVshow>
    </xsl:template>
</xsl:stylesheet>