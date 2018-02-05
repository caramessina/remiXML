<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>

    <xsl:template match="remiXML">
        <html>
            <head>
                <xsl:value-of select="metadata/documentTitle"/> by <xsl:value-of
                    select="metadata/documentAuthor"/>
                <style><![CDATA[
                    body{
                        background-color: white;
                        margin: 50px 50px 50px 50px}
                    h1{
                        color: black;
                    }
                    p{
                        color: black;
                    }
                    
                    
                    
                    /*style the header*/
                    .header{
                        background-color: #f1f1f1;
                        padding: 20px;
                        text-align: center;
                    }
                    
                    /*style the footer */
                    .footer{
                        background-color: #f1f1f1;
                        padding: 10px;
                        text-align: left;
                    }
                    
                    /* Popup container */
                    .popup{
                        position: relative;
                        display: inline;
                        cursor: pointer;
                    }
                    
                    /* The actual popup (appears on top) */
                    .popup .popuptext{
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
                    .popup .show{
                        visibility: visible;
                    }]]></style>
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
            <h1>
                <xsl:value-of select="originalTitle"/>
            </h1>
            <h2>
                <xsl:text>By </xsl:text>
                <xsl:value-of select="originalAuthor"/>
            </h2>
        </div>
    </xsl:template>


    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>


    <xsl:template match="/remiXML/original/p/closeRead">
        <xsl:variable name="identify" select="@ID"/>
        <!--{$identify}-->
        <span style="color:blue">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/closeRead[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/replace">
        <xsl:variable name="identify" select="@ID"/>
        <span style="color:orange">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/replace[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/expand">
        <xsl:variable name="identify" select="@ID"/>
        <span style="color:pink">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/expand[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/restory">
        <xsl:variable name="identify" select="@ID"/>
        <span style="color:green">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/restory[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/question">
        <xsl:variable name="identify" select="@ID"/>
        <span style="color:purple">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/question[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>


    <xsl:template match="l">
        <br>
            <xsl:apply-templates/>
        </br>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/l/closeRead">
        <xsl:variable name="identify" select="@ID"/>
        <span style="color:blue">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/closeRead[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/l/replace">
        <xsl:variable name="identify" select="@ID"/>
        <span style="color:orange">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/replace[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/l/expand">
        <xsl:variable name="identify" select="@ID"/>
        <span style="color:pink">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/expand[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/l/restory">
        <xsl:variable name="identify" select="@ID"/>
        <span style="color:green">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/restory[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="/remiXML/original/p/l/question">
        <xsl:variable name="identify" select="@ID"/>
        <!--{$identify}-->
        <span style="color:purple">
            <span class="popup" onclick="myFunction(this, '{$identify}')">
                <xsl:apply-templates/>
                <span class="popuptext" id="{$identify}">
                    <xsl:apply-templates select="/remiXML/play/question[@ID = $identify]"/>
                </span>
            </span>
        </span>
    </xsl:template>

    <xsl:template match="play">
        <hr/>
        <div class="footer">
            <h3>
                <xsl:text>Remixed by </xsl:text>
                <xsl:value-of select="../metadata/documentAuthor"/>
            </h3>
            <p>
                <xsl:text>Quantifying your mark up choices: </xsl:text>
            </p>
            <ul>
                <li>
                    <xsl:text>Close reading: </xsl:text>
                <xsl:value-of select="count(/remiXML/play/closeRead)"/>
                </li>
                <li>
                    <xsl:text>Expand: </xsl:text>
                    <xsl:value-of select="count(/remiXML/play/expand)"/>
                </li>
                <li>
                    <xsl:text>Question: </xsl:text>
                    <xsl:value-of select="count(/remiXML/play/question)"/>
                </li>
                <li>
                    <xsl:text>Replace: </xsl:text>
                    <xsl:value-of select="count(/remiXML/play/replace)"/>
                </li>
                <li>
                    <xsl:text>Restory: </xsl:text>
                    <xsl:value-of select="count(/remiXML/play/restory)"/>
                </li>
            </ul>
            <br/>
            <b>
                <xsl:text>List of Interventions: </xsl:text>
            </b>
            <br/>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/closeRead">
        <br/>
        <b>
            <xsl:text>Close Read: </xsl:text>
        </b>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/expand">
        <br/>
        <b>
            <xsl:text>Expansion: </xsl:text>
        </b>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/question">
        <br/>
        <b>
            <xsl:text>Question: </xsl:text>
        </b>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/replace">
        <br/>
        <b>
            <xsl:text>Replace: </xsl:text>
        </b>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="/remiXML/play/restory">
        <br/>
        <b>
            <xsl:text>Restory: </xsl:text>
        </b>
        <xsl:apply-templates/>
    </xsl:template>


</xsl:stylesheet>
