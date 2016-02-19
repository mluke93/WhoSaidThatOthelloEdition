<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
			<xsl:for-each select="PLAY/ACT">
				<xsl:for-each select="SCENE">
						<xsl:for-each select="SPEECH">
									<div class="line_chunk">
										<span><xsl:value-of select="SPEAKER"/></span>
										<span>
											<xsl:for-each select="LINE">
												<xsl:value-of select="current()"/>
											</xsl:for-each>
										</span>
									</div>
						</xsl:for-each>
				</xsl:for-each>
			</xsl:for-each>					
	</xsl:template>
</xsl:stylesheet> 
