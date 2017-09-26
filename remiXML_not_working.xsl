<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    
    <xsl:template match="remiXML">
        <html>
            <head>
                <xsl:value-of select="metadata/doc-title"/>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    
    <xsl:template match="metadata">
        <div style="bold">
            <h1><xsl:value-of select="doc-title"/></h1>
            <h2><xsl:text>Remixed by </xsl:text><xsl:value-of select="remixer"/></h2>
        </div>
    </xsl:template>
    
    <xsl:template match="original">
        <hr/>
        <div>
            <h3><xsl:text>Original Text: "</xsl:text><xsl:value-of select="../metadata/original-title"/> <xsl:text>" by </xsl:text><xsl:value-of select="../metadata/original-writer"/>
            </h3>
        </div>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/expand">
        <xsl:variable name="identify" select="@playID"/>    <!--{$identify}-->
        <span style="color:purple">
            <a href="#" data-toggle="popover" title="Expand" data-content="remiXML/play/expand[@playREF=$identify"><xsl:apply-templates/></a>
        </span>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/transform">
        <xsl:variable name="identify" select="@playID"/>  
        <span style="color:green">
            <span class="popup" onclick="myFunction({$identify})"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/transform[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/analysis">
        <xsl:variable name="identify" select="@playID"/>
        <span style="color:yellow">
            <span class="popup" onclick="myFunction({$identify})"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/analysis[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    
    <xsl:template match="/remiXML/original/p/question">
        <xsl:variable name="identify" select="@playID"/>    <!--{$identify}-->
        <span style="color:blue">
            <span class="popup" onclick="myFunction({$identify})"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/question[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="play">
        <hr/>
        <h3>Play</h3>
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    
    <xsl:template match="/remiXML/play/analysis">
        <br/><b><xsl:text>Analysis: </xsl:text> </b><xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/expand">
        <br/><b><xsl:text>Expansion:</xsl:text></b><xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/question">
        <br/><b> <xsl:text>Question: </xsl:text></b><xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/transform">
        <br/><b><xsl:text>Transformation: </xsl:text></b><xsl:apply-templates/>
    </xsl:template>
    
</xsl:stylesheet>
