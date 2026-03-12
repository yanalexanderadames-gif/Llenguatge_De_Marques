<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Llista empleats</h1>
                
                <ul>
                    <xsl:for-each select="employees/employee">
                        <xsl:sort select="lastName" order="ascending"/>
                        
                        <li>
                            <h2 style="color: blue;">Empleat amb id <xsl:value-of select="@employeeNumber"/></h2>
                            
                            <ul>
                                <li style="font-size: 25px;">
                                    <strong>Nom:</strong> <xsl:value-of select="firstName"/> <xsl:text> </xsl:text> <xsl:value-of select="lastName"/>
                                </li>
                                <li><strong>Correu:</strong> <xsl:value-of select="email"/></li>
                                <li><strong>Id del seu superior:</strong> <xsl:value-of select="reportsTo"/></li>
                                <li><strong>Posició:</strong> <xsl:value-of select="jobTitle"/></li>
                                
                                <li style="color: green; font-style: italic;">
                                    <strong>Oficina:</strong>
                                    <ul>
                                        <li><strong>Ciutat:</strong> <xsl:value-of select="office/City"/></li>
                                        <li><strong>Telèfon:</strong> <xsl:value-of select="office/Phone"/></li>
                                        <li><strong>Adreça:</strong> <xsl:value-of select="office/AddressLine1"/></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>