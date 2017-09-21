<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
      
    <xsl:template match="remiXML">
        <html>
            <head>
                <xsl:value-of select="metadata/doc-title"/>
                <script>
                    // When the user clicks on div, open the popup
                    function myFunction() {
                    var popup = document.getElementById("myPopup");
                    popup.classList.toggle("show");
                    }
                </script>
                <style>
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
                </style>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <!--Figure out pop up-->
    
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
    
    <xsl:template match="general">
            <span style="color:green">
                <div class="popup" onclick="myFunction()"><xsl:apply-templates/>
                    <span class="popuptext" id="myPopup"><xsl:value-of select="general"/></span>
                </div>
            </span>
    </xsl:template>
    <!--MUST FIGURE OUT HOW TO NAVIGATE XML TREE-->
    
    <xsl:template match="play">
        <hr/>
        <h3>Play</h3>
        <ul><xsl:apply-templates/>
        </ul>
    </xsl:template>
   
    
    <xsl:template match="analysis">
        <li>
            <b><xsl:text>Analysis: </xsl:text> </b><xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="expand">
        <li>
            <b><xsl:text>Expand:</xsl:text></b><xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="question">
        <li>
           <b> <xsl:text>Question: </xsl:text></b><xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="remix">
        <li>
            <b><xsl:text>Remix: </xsl:text></b><xsl:apply-templates/>
        </li>
    </xsl:template>
    
</xsl:stylesheet>