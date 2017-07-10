<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>

                <link rel="stylesheet" href="../styles/bootstrap.min.css"/>
                <link rel="stylesheet" href="../styles/style.css"/>
                <link rel="stylesheet" href="../styles/product-list.css"/>
                <link rel="stylesheet" href="../styles/font-awesome.min.css"/>

                <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
                <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>

                <script src="../script/jquery.min.js"/>
                <script src="../script/bootstrap.min.js"/>

                <script src="../script/script.js"/>
            </head>
            <body>

                <nav class="navbar navbar-default navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header">
                            <a class="glyphicon glyphicon-chevron-left navbar-brand" onclick="window.history.back()"/>
                        </div>
                    </div>
                </nav>


                <div class="row product-list">

                    <xsl:for-each select="catalog/Products/List/Product">
                        <xsl:variable name="id" select="Id"/>
                        <div class="col-md-3 col-sm-4 product-item">
                            <div class="product-container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <a class="product-image">
                                            <xsl:variable name="img" select="Labels/Label/Url"/>
                                            <img src="{$img}"/>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <h2>
                                            <xsl:variable name="name" select="Name"/>
                                            <a data-toggle="tooltip" data-placement="auto top" title="{$name}">
                                                <xsl:value-of select="Vineyard/Name"/>
                                            </a>
                                        </h2>
                                    </div>
                                </div>
                                <div class="product-rating">
                                    <xsl:variable name="rating" select="Ratings/HighestScore"/>
                                    <i class="fa fa-star"/>
                                    <i class="fa fa-star"/>
                                    <i class="fa fa-star"/>
                                    <i class="fa fa-star"/>
                                    <i class="fa fa-star"/>
                                    <a class="small-text">
                                        <xsl:value-of select="Ratings/HighestScore"/>% positive Bewertungen
                                    </a>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <p class="product-description">
                                            Art:
                                            <xsl:value-of select="Varietal/Name"/>
                                            <br/>
                                            Jahr:
                                            <xsl:value-of select="Vintage"/>
                                            <br/>
                                            <br/>
                                            Weingut:
                                            <xsl:value-of select="Vineyard/Name"/>
                                            <br/>
                                            Gebiet:
                                            <xsl:value-of select="Appellation/Name"/>
                                        </p>
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <xsl:variable name="link" select="Url"/>
                                                <button class="btn btn-default" type="button"
                                                        onclick="window.open('{$link}')">Kaufen
                                                </button>
                                            </div>
                                            <div class="col-xs-6">
                                                <p class="product-price"><xsl:value-of select="PriceRetail"/>€
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </xsl:for-each>

                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>