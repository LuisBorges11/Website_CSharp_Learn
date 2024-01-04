<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">


		<!-- Top News Start-->
		<div class="top-news">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 tn-left">
						<div class="tn-img">
							<img src="{/rss/channel/item[1]/enclosure/@url}" />
							<div class="tn-content">
								<div class="tn-content-inner">
									<a class="tn-date" href="{/rss/channel/item[1]/link}">
										<i class="far fa-clock"></i>
										<xsl:value-of select="/rss/channel/item[1]/pubDate"/>
									</a>
									<a class="tn-title" href="{/rss/channel/item[1]/link}">
										<xsl:value-of select="/rss/channel/item[1]/title"/>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 tn-right">
						<div class="row">
							<div class="col-md-6">
								<div class="tn-img">
									<img src="img/top-news-2.jpg" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="">
												<i class="far fa-clock"></i>05-Feb-2020
											</a>
											<a class="tn-title" href="">Integer faucibus pharetra odio</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="tn-img">
									<img src="img/top-news-3.jpg" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="">
												<i class="far fa-clock"></i>05-Feb-2020
											</a>
											<a class="tn-title" href="">Nulla vitae pharetra ligula</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="tn-img">
									<img src="img/top-news-4.jpg" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="">
												<i class="far fa-clock"></i>05-Feb-2020
											</a>
											<a class="tn-title" href="">Ut ac euismod tellus a blandit</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="tn-img">
									<img src="img/top-news-5.jpg" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="">
												<i class="far fa-clock"></i>05-Feb-2020
											</a>
											<a class="tn-title" href="">Cras ac egestas sem nec euismod</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Top News End-->
		
       
    </xsl:template>
</xsl:stylesheet>
