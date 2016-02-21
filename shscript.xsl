<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="PLAY/ACT">								<!-- Runs through each Act in the Play -->
			<xsl:for-each select="SCENE">								<!-- Runs through each Scene in the Act -->
				<xsl:for-each select="SPEECH">							<!-- Runs through each Speech in the Scene -->
					<div class="line_chunk">							<!-- Creates a div for the Speaker and line -->
						<span><xsl:value-of select="SPEAKER"/></span>	<!-- Creates a span in the div for the Speech's Speaker -->
						<span>
							<xsl:for-each select="LINE">				<!-- Runs through each line in the Speech and -->
								<xsl:value-of select="current()"/>		<!-- creates a span in the div for the entire line -->
							</xsl:for-each>								<!-- spoken in the Speech -->
						</span>
					</div>
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>					
	</xsl:template>
</xsl:stylesheet>