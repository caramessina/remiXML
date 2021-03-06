<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
      
    <xsl:template match="remiXML">
        <html>
            <head>
                <xsl:value-of select="metadata/doc-title"/>
                <style><![CDATA[
                                        body {background-color:  white;
                                        margin: 10px 50px 10px 50px}
                    h1   {color: black;}
                    p    {color: black;}
                    
                    
                   
                    /*style the header*/
                    .header {
                    background-color: #f1f1f1;
                    padding: 20px;
                    text-align: center;
                    }

                    /*style the footer */
                    .footer {
                    background-color: #f1f1f1;
                    padding: 10px;
                    text-align: center;
                    }

                    /* Popup container */
                    .popup {
                    position: relative;
                    display: inline;
                    cursor: pointer;
                    }
                    
                    /* The actual popup (appears on top) */
                    .popup .popuptext {
                    visibility: hidden;
                    width: 300px;
                    background-color: gray;
                    color: black;
                    text-align: center;
                    border-radius: 6px;
                    padding: 8px 0;
                    position: absolute;
                    z-index: 1;
                    bottom: 125%;
                    left: 50%;
                    margin-left: -80px;
                    }
                    
                    
                    /* Toggle this class when clicking on the popup container (hide and show the popup) */
                    .popup .show {
                    visibility: visible;
                    }
                    
                ]]></style>
            </head>
            <body>
                <xsl:apply-templates/>
                <script><![CDATA[
                    function myFunction(e, id) {
                    var popup = document.getElementById(id);
                    console.log(id);
                    popup.classList.toggle('show');
                    }
                ]]></script>
            </body>
        </html>
    </xsl:template>
    
    
    <xsl:template match="metadata">
        <div class="header" style="bold">
            <h1><xsl:value-of select="original-title"/></h1>
        <h2><xsl:text>By </xsl:text><xsl:value-of select="original-writer"/></h2>
        </div>
    </xsl:template>
   
    
    <xsl:template match="p">
        <p>
        <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    
    <xsl:template match="/remiXML/original/p/expand">
        <xsl:variable name="identify" select="@playID"/>    <!--{$identify}-->
        <span style="color:blue">
                <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                    <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/expand[@playREF=$identify]"/></span>
                </span>
            </span>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/transform">
        <xsl:variable name="identify" select="@playID"/>  
        <span style="color:green">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/transform[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    
    <xsl:template match="/remiXML/original/p/analysis">
        <xsl:variable name="identify" select="@playID"/>
        <span style="color:purple">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/analysis[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    

    <xsl:template match="/remiXML/original/p/feedback">
        <xsl:variable name="identify" select="@playID"/>  
        <span style="color:pink">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/feedback[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/replace">
        <xsl:variable name="identify" select="@playID"/>  
        <span style="color:orange">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/replace[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="l">
        <br>
            <xsl:apply-templates/>
        </br>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/l/feedback">
        <xsl:variable name="identify" select="@playID"/>  
        <span style="color:pink">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/feedback[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/l/expand">
        <xsl:variable name="identify" select="@playID"/>    <!--{$identify}-->
        <span style="color:blue">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/expand[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/l/transform">
        <xsl:variable name="identify" select="@playID"/>  
        <span style="color:green">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/transform[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/l/analysis">
        <xsl:variable name="identify" select="@playID"/>
        <span style="color:purple">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/analysis[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/l/replace">
        <xsl:variable name="identify" select="@playID"/>  
        <span style="color:orange">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/replace[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/question">
        <xsl:variable name="identify" select="@playID"/>    <!--{$identify}-->
        <span style="color:red">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/question[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="/remiXML/original/p/l/question">
        <xsl:variable name="identify" select="@playID"/>    <!--{$identify}-->
        <span style="color:red">
            <span class="popup" onclick="myFunction(this, '{$identify}')"><xsl:apply-templates/>
                <span class="popuptext" id="{$identify}"><xsl:apply-templates select="/remiXML/play/question[@playREF=$identify]"/></span>
            </span>
        </span>
    </xsl:template>
    
    <xsl:template match="play">
        <hr/>
        <div class="footer"><h3><xsl:text>Remixed by </xsl:text><xsl:value-of select="../metadata/remixer"/></h3>
            <p><xsl:apply-templates/></p></div>
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
    
    <xsl:template match="/remiXML/play/feedback">
        <br/><b> <xsl:text>Feedback: </xsl:text></b><xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/replace">
        <br/><b> <xsl:text>Replace: </xsl:text></b><xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/transform">
        <br/><b><xsl:text>Transformation: </xsl:text></b><xsl:apply-templates/>
    </xsl:template>
    
</xsl:stylesheet>
