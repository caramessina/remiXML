<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
      
    <xsl:template match="remiXML">
        <html>
            <head>
                <xsl:value-of select="metadata/doc-title"/>
                <script><![CDATA[
                    // When the user clicks on div, open the popup
                    function myFunction(id) {
                    var popup = document.getElementById(id);
                    popup.classList.toggle("show");
                    }
                ]]></script>
                <style><![CDATA[
                    body {background-color:  #e6e6e6;}
                    h1   {color: black;}
                    p    {color: black;}
                    /* Popup container */
                    .popup {
                    position: relative;
                    display: inline-block;
                    cursor: pointer;
                    }
                    
                    /* The actual popup (appears on top) */
                    .popup .popuptext {
                    visibility: hidden;
                    width: 160px;
                    background-color: #555;
                    color: #fff;
                    text-align: center;
                    border-radius: 6px;
                    padding: 8px 0;
                    position: absolute;
                    z-index: 1;
                    bottom: 125%;
                    left: 50%;
                    margin-left: -80px;
                    }
                    
                    /* Popup arrow */
                    .popup .popuptext::after {
                    content: "";
                    position: absolute;
                    top: 100%;
                    left: 50%;
                    margin-left: -5px;
                    border-width: 5px;
                    border-style: solid;
                    border-color: #555 transparent transparent transparent;
                    }
                    
                    /* Toggle this class when clicking on the popup container (hide and show the popup) */
                    .popup .show {
                    visibility: visible;
                    -webkit-animation: fadeIn 1s;
                    animation: fadeIn 1s
                    }
                    
                    /* Add animation (fade in the popup) */
                    @-webkit-keyframes fadeIn {
                    from {opacity: 0;} 
                    to {opacity: 1;}
                    }
                    
                    @keyframes fadeIn {
                    from {opacity: 0;}
                    to {opacity:1 ;}
                    }
                ]]></style>
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
                <span class="popup" onclick="myFunction({$identify})"><xsl:apply-templates/>
                    <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/expand[@playREF=$identify]"/></span>
                </span>
            </span>
    </xsl:template>
    <!--DO THIS FOR EACH NEW ELEMENT IN THE RELAXNG SCHEMA-->
    
    <xsl:template match="play">
        <hr/>
        <h3>Play</h3>
        <ul><xsl:apply-templates/>
        </ul>
    </xsl:template>
   
    
    <xsl:template match="/remiXML/play/analysis">
        <li>
            <b><xsl:text>Analysis: </xsl:text> </b><xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/expand">
        <li>
            <b><xsl:text>Expansion:</xsl:text></b><xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/question">
        <li>
           <b> <xsl:text>Question: </xsl:text></b><xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/transform">
        <li>
            <b><xsl:text>Transformation: </xsl:text></b><xsl:apply-templates/>
        </li>
    </xsl:template>
    
</xsl:stylesheet>