<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fhir="http://hl7.org/fhir" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="fhir xhtml" version="1.0">
	<!-- Stylesheet für eRP Version 1.1.0 -->
	<xsl:template match="/">
		<xsl:apply-templates select="/fhir:Bundle"/>
	</xsl:template>
	<xsl:template match="fhir:Bundle[not(ancestor::fhir:Bundle)]">
		<html lang="de" xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<title>
					<xsl:value-of select="fhir:entry/fhir:resource/fhir:Composition/fhir:title/@value"/>
				</title>
				<style type="text/css" media="all">
					html {
						height: 100%;
					}
					body { 
						padding-left:2em;
						margin-top:1em;
						height: 100%;
					}
					p {
						font-family: "Courier New", "Nimbus Mono L", monospace;
						font-size: small;
					}
					.in-black {
						font-size: 7pt;
						color: #000000;
						font-weight: normal;
						font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
					}
					.tiny {
						font-size: 7pt;
						color: #000000;
						font-weight: bold;
						font-weight: normal;
						font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
					}
					.daten {
						font-family: "Courier New", "Nimbus Mono L", monospace;
						font-size: 12pt; 
					}
					.nowrap {
						white-space: nowrap;
					}
					.overflow {
						overflow:hidden
					}
					.breakword {
						word-wrap: break-word;
					}
					.thin-space {
						font-size: 12pt;
						font-weight: normal;
						font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
					}
					<!-- ****************************************** -->
					ul {
						list-style-type:none;
						margin:0; 
						padding:0;
					}
					fieldset {
						border:1px solid black;
						padding:0 2px;
						margin:0 0 9px 9px;
						width:48em;
					}
					#gesamtrahmen {
						border:1px solid black; 
						width:53em; 
					}
					#kaestchen_bereich_links {
						float:left;
						padding-top:1em;
					}
					.kaestchen {
						display: inline-flex;
						font-size:2em;
						font-weight: normal;
						line-height:0.7;
						align:center;
					}
					.mittig {
						text-align:center;
					}
					.abstand_unten {
						margin-bottom:1em;
					}
					.kein_abstand {
						margin:0;
						padding:0;
					}
					.abstand_links {
						padding-left:10px;
					}
					.footer {
						font-size: 7pt;
					}					
					@media print {
						@page {
								size: A5;
								margin: 0;
						}
						body { 
							margin: 0; 
							padding: 0; 
						} 
					}					
				</style>
			</head>			
			<body>
				<div id="gesamtrahmen">
					<div id="kaestchen_bereich_links">
						<ul class="mittig">
							<li class="tiny">Gebühr<br/>frei</li>
							<li class="kaestchen">
								<xsl:choose>
									<xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_StatusCoPayment']/fhir:valueCoding/fhir:code/@value=1">
										<xsl:text>&#x2612;</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>&#x2610;</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</li>
							<li class="tiny">Geb.-<br/>pfl.</li>
							<li class="kaestchen">
								<xsl:choose>
									<xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_StatusCoPayment']/fhir:valueCoding/fhir:code/@value=0">
										<xsl:text>&#x2612;</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>&#x2610;</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</li>
							<li class="tiny"><br/>noctu</li>
							<li class="kaestchen abstand_unten">
								<xsl:choose>
									<xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_EmergencyServicesFee']/fhir:valueBoolean/@value = 'true'">																						
										<xsl:text>&#x2612;</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>&#x2610;</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</li>
							<li class="tiny">Unfall</li>
							<li class="kaestchen">
								<xsl:choose>
									<xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallkennzeichen']/fhir:valueCoding/fhir:code/@value = '1'">
										<xsl:text>&#x2612;</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>&#x2610;</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</li>
							<li class="tiny">Arbeits-<br/>unfall</li>
							<li class="kaestchen">
								<xsl:choose>
										<xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallkennzeichen']/fhir:valueCoding/fhir:code/@value = '2'">
										<xsl:text>&#x2612;</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>&#x2610;</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</li>
							<li class="tiny">Berufs-<br/>krankheit</li>
							<li class="kaestchen abstand_unten">
								<xsl:choose>
										<xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallkennzeichen']/fhir:valueCoding/fhir:code/@value = '4'">
										<xsl:text>&#x2612;</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>&#x2610;</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</li>
							<li class="tiny">aut<br/>idem</li>
							<li class="kaestchen">
								<xsl:choose>
									<xsl:when test="//fhir:MedicationRequest/fhir:substitution/fhir:allowedBoolean/@value = 'false'">
										<xsl:text>&#x2612;</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>&#x2610;</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</li>
						</ul>
					</div>
					<table>
						<!-- T1-->
						<tbody>
							<tr>
								<td>
									<table cellspacing="10">
										<!-- T2o-->
										<colgroup>
											<col style="width:27em"/>
											<col style="width:20em"/>
										</colgroup>
										<tbody>
											<tr>
												<td valign="top">
													<table style="width: 27em;  border-spacing:0; cellspacing:0; border-collapse:collapse; ">
														<!-- T3ol-->
														<colgroup>
															<col style="width:27em"/>
														</colgroup>
														<tbody>
															<tr>
																<td>
																	<xsl:call-template name="printPatient"/>
																</td>
															</tr>
														</tbody>
														<!-- T3ol-->
													</table>
												</td>
												<td valign="top">
													<table style="width:19.4em;  table-layout:fixed">
														<tbody>
															<tr>
																<td>
																	<table cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr class="mittig">
																				<td>
																					<ul>
																						<li class="tiny"><br/>BVG</li>
																						<li class="kaestchen">
																							<xsl:choose>
																								<xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_BVG']/fhir:valueBoolean/@value = 'true'">
																									<xsl:text>&#x2612;</xsl:text>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:text>&#x2610;</xsl:text>
																								</xsl:otherwise>
																							</xsl:choose>
																						</li>
																					</ul>
																				</td>
																				<td>
																					<ul>
																						<li class="tiny">Impf-<br/>stoff</li>
																						<li class="kaestchen">
																							<xsl:choose>
																								<xsl:when test="//fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine']/fhir:valueBoolean/@value = 'true'">
																									<xsl:text>&#x2612;</xsl:text>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:text>&#x2610;</xsl:text>
																								</xsl:otherwise>
																							</xsl:choose>
																						</li>
																					</ul>
																				</td>
																				<td>
																					<ul>
																						<li class="tiny">Spr.St.-<br/>Bedarf</li>
																						<li class="kaestchen">
																							<xsl:choose>
																								<xsl:when test="//fhir:SupplyRequest">
																									<xsl:text>&#x2612;</xsl:text>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:text>&#x2610;</xsl:text>
																								</xsl:otherwise>
																							</xsl:choose>
																						</li>
																					</ul>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td>
																	<xsl:call-template name="printAusstellender"/>
																</td>
															</tr>														
														</tbody>
													</table>
													<!--T3or-->
												</td>
											</tr>
										</tbody>
									</table>
									<!-- T2o -->
								</td>
							</tr>
							<tr>
							<td>
							<table>
							<tbody>
									<tr>
										<td>
											<fieldset>
												<legend align="right" class="in-black">
													<xsl:choose>
														<xsl:when test="//fhir:Medication/fhir:code/fhir:coding/fhir:system[@value='http://fhir.de/CodeSystem/ifa/pzn']">PZN-Verordnung</xsl:when>
														<xsl:when test="//fhir:Medication/fhir:code/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Type']/following-sibling::fhir:code[@value='wirkstoff']">Wirkstoff-Verordnung</xsl:when>
														<xsl:when test="//fhir:Medication/fhir:code/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Type']/following-sibling::fhir:code[@value='freitext']">Freitext-Verordnung</xsl:when>
														<xsl:when test="//fhir:Medication/fhir:code/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Type']/following-sibling::fhir:code[@value='rezeptur']">Rezeptur-Verordnung</xsl:when>
													</xsl:choose>
												</legend>
												<!--<xsl:if test="fhir:entry/fhir:resource/fhir:Composition/fhir:extension[@value='rechtsgrundlage']/fhir:valueCoding/fhir:Code">-->
												<xsl:variable name="statuskennzeichen" select="fhir:entry/fhir:resource/fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN']/fhir:code/@value"/>
												<xsl:if test="$statuskennzeichen&gt;9 and $statuskennzeichen&lt;20">
													<p class="daten">Ersatzverordnung gemäß &#167; 31 Absatz 3 Satz 7 SGB V</p>
												</xsl:if>
												<xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Kennzeichen']/fhir:valueBoolean[@value='true']">
													<p class="daten">Mehrfachverordnung 
														<xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Nummerierung']">
															<xsl:value-of select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Nummerierung']/fhir:valueRatio/fhir:numerator/fhir:value/@value"/>
															<text>&#160;von&#160;</text>
															<xsl:value-of select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Nummerierung']/fhir:valueRatio/fhir:denominator/fhir:value/@value"/>												
														</xsl:if>
														<xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']">
															<text>: Einlösbar</text>
															<xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']/fhir:valuePeriod/fhir:start">
																<text>&#160;ab&#160;</text>
																<xsl:call-template name="formatDate">
																	<xsl:with-param name="date" select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']/fhir:valuePeriod/fhir:start/@value"/>
																</xsl:call-template>
															</xsl:if>
															<xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']/fhir:valuePeriod/fhir:end">
																<text>&#160;bis&#160;</text>
																<xsl:call-template name="formatDate">
																	<xsl:with-param name="date" select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']/fhir:valuePeriod/fhir:end/@value"/>
																</xsl:call-template>
															</xsl:if>
														</xsl:if>
													</p>
												</xsl:if>
												<xsl:apply-templates select="//fhir:Medication"/>
											</fieldset>
										</td>
									</tr>
									<tr>
										<td class="abstand_links in-black">Unfallinformationen</td>
									</tr>
									<tr>
										<td class="abstand_links in-black">
											<table style="border-collapse: collapse; width: 100%; ">
												<colgroup>
													<col style="width:14%"/>
													<col style="width:45%"/>
													<col style="witdh:21%"/>
													<col style="width:20%"/>
												</colgroup>
												<tbody>
													<tr>
														<td class="in-black" style="border-left:1px solid black; border-top:1px solid black; border-right:1px solid black;">Unfalltag</td>
														<td class="in-black" style="border-left:1px solid black; border-top:1px solid black; border-right:1px solid black;">Unfallbetrieb oder Arbeitgebernummer</td>
														<td>&#160;</td>
														<td class="in-black" style="border-left:1px solid black; border-top:1px solid black; border-right:1px solid black;">Kostenträgertyp</td>
													</tr>
													<tr>
														<td class="daten nowrap" style="border-left:1px solid black; border-bottom:1px solid black; border-right:1px solid black;">
															<xsl:choose>
																<xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfalltag']/fhir:valueDate/@value">
																	<xsl:call-template name="formatDate">
																	<xsl:with-param name="date" select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfalltag']/fhir:valueDate/@value"/>
																	</xsl:call-template>
																</xsl:when>
																<xsl:otherwise>&#160;</xsl:otherwise>
															</xsl:choose>
														</td>
														<td class="daten nowrap" style="border-left:1px solid black; border-bottom:1px solid black; border-right:1px solid black;">
															<xsl:choose>
																<xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallbetrieb']/fhir:valueString/@value">
																	<xsl:value-of select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallbetrieb']/fhir:valueString/@value"/>
																</xsl:when>
																<xsl:otherwise>&#160;</xsl:otherwise>
															</xsl:choose>
														</td>
														<td>&#160;</td>
														<td class="daten nowrap" style="border-left:1px solid black; border-bottom:1px solid black; border-right:1px solid black;">
															<xsl:choose>
																<xsl:when test="//fhir:SupplyRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_PracticeSupply_Payor']/fhir:extension[@url='Kostentraegertyp']/fhir:valueCoding/fhir:code/@value">
																	<xsl:value-of select="//fhir:SupplyRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_PracticeSupply_Payor']/fhir:extension[@url='Kostentraegertyp']/fhir:valueCoding/fhir:code/@value"/>
																</xsl:when>
																<xsl:when test="//fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value">
																	<xsl:value-of select="//fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value"/>
																</xsl:when>
																<xsl:otherwise>&#160;</xsl:otherwise>
															</xsl:choose>
															<xsl:if test="(	//fhir:SupplyRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_PracticeSupply_Payor']/fhir:extension[@url='Kostentraegertyp']/fhir:valueCoding/fhir:code/@value = 'PKV' or
																			//fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value = 'PKV' )
																			and fhir:entry/fhir:resource/fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_PKV_Tariff']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PKV_TARIFF']/fhir:code/@value">
																<xsl:value-of select="concat('&#160;-&#160;', fhir:entry/fhir:resource/fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_PKV_Tariff']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PKV_TARIFF']/fhir:code/@value)"/>
															</xsl:if>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td class="abstand_links">
											<table style=" width:42em;  table-layout:fixed">
												<!--T4ud-->
												<colgroup>
													<col style="width:28em"/>
													<col style="width:14em"/>
												</colgroup>
												<tbody>
													<tr>
														<td>
															<span class="footer">Dokumentenversion:&#160;
															<xsl:call-template name="getVersion">
																<xsl:with-param name="url" select="//fhir:Composition/fhir:meta/fhir:profile/@value"/>
															</xsl:call-template>
															<br/>
															Dokumententyp:&#160;
																<xsl:value-of select="//fhir:Composition/fhir:type/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_FORMULAR_ART']/following-sibling::fhir:code/@value"/>
															</span>
														</td>
														<td>
															<span class="footer">PRF.NR.:&#160;
															<xsl:value-of select="//fhir:Composition/fhir:author[fhir:type/@value='Device']/fhir:identifier/fhir:value/@value"/>
															<br/>
															DOK.ID:&#160;
															<xsl:value-of select="fhir:identifier/fhir:value/@value"/>
															</span>
														</td>
													</tr>
												</tbody>
											</table>
											<!--T4ud-->
										</td>
									</tr>
							</tbody>
							</table>
							</td>	
							</tr>
						</tbody>
					</table>
					<!--T1-->
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="printPatient">
		<table style=" border: 1px solid black; width:27em;  border-spacing: 0; cellspacing: 0; border-collapse: collapse; background-color:white; ">
			<!--Umgebende Tabelle- T4ol-->
			<tbody>
				<tr>
					<td>
						<!--Erste verschachtelte Tabelle Krankenkasse bzw. Kostenträger-->
						<table style="border-bottom:1px solid black; border-collapse: collapse; width: 27em; height: 2em; border-spacing: 0; cellspacing: 0; table-layout:fixed ">
							<!--T5a-->
							<colgroup>
								<col style="width:9em"/>
								<col style="width:9em"/>
								<col style="width:9em"/>
							</colgroup>
							<tbody>
								<tr>
									<td colspan="3" class="in-black">Krankenkasse bzw. Kostenträger</td>
								</tr>
								<tr>
									<td colspan="2" class="daten nowrap">
										<xsl:choose>
											<xsl:when test="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor[1]/fhir:display/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor[1]/fhir:display/@value"/>
											</xsl:when>
											<xsl:when test="fhir:entry/fhir:resource/fhir:SupplyRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_PracticeSupply_Payor']/fhir:extension[@url='Name']/fhir:valueString/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:SupplyRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_PracticeSupply_Payor']/fhir:extension[@url='Name']/fhir:valueString/@value"/>
											</xsl:when>
											<xsl:otherwise>
                                             &#160;
                                        </xsl:otherwise>
										</xsl:choose>
									</td>
									<td colspan="1" class="daten" style="text-align:right;">
										<xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:extension[@url='http://fhir.de/StructureDefinition/gkv/wop']/fhir:valueCoding/fhir:code/@value"/>
									</td>
								</tr>
							</tbody>
						</table>
						<!--T5a-->
					</td>
				</tr>
				<tr>
					<td>
						<!--Zweite verschachtelte Tabelle Name, Vorname des Versicherten + Geburtsdatum-->
						<table style=" border-collapse: collapse; border-spacing: 0; cellspacing: 0;  width: 27em; table-layout:fixed ">
							<!--T5b-->
							<colgroup>
								<col style="width:7em; "/>
								<col style="width:13em; "/>
								<col style="width:7em; "/>
							</colgroup>
							<tbody>
								<tr>
									<td class="in-black" colspan="3">Name, Vorname des Versicherten</td>
								</tr>
								<tr>
									<td colspan="2" width="100%" class="nowrap daten overflow">
										<xsl:variable name="output">
											<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-name']/fhir:valueString/@value"/>
										</xsl:variable>
										<xsl:copy-of select="$output"/>
										<xsl:if test="normalize-space($output) = ''">
											<br/>
										</xsl:if>
									</td>
									<td class="in-black mittig">
										<div>geb. am</div>
									</td>
								</tr>
								<tr>
									<td colspan="2" width="100%" class="nowrap daten overflow">
										<xsl:variable name="output">
											<!--Titel-->
											<xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:prefix/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:prefix/@value"/>
												<xsl:text> </xsl:text>
											</xsl:if>
											<!--Vorname-->
											<xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:given/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:given/@value"/>
												<xsl:text> </xsl:text>
											</xsl:if>
											<!--Namenszusatz-->
											<xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz']">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz']/fhir:valueString/@value"/>
												<xsl:text> </xsl:text>
											</xsl:if>
											<!--Vorsatzwort-->
											<xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix']">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix']/fhir:valueString/@value"/>
											</xsl:if>
										</xsl:variable>
										<xsl:copy-of select="$output"/>
										<xsl:if test="normalize-space($output) = ''">
											<br/>
										</xsl:if>
									</td>
									<td class="daten" style="text-align:right; ">
										<xsl:choose>
											<xsl:when test="fhir:entry/fhir:resource/fhir:Patient/fhir:birthDate/@value">
												<xsl:call-template name="formatDate">
													<xsl:with-param name="date" select="fhir:entry/fhir:resource/fhir:Patient/fhir:birthDate/@value"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
                                             &#160;
                                        </xsl:otherwise>
										</xsl:choose>
									</td>
								</tr>
								<tr>
									<td colspan="3" style="border-bottom:1px solid black; width: 100%" class="nowrap daten  overflow">
										<xsl:variable name="output">
											<xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']">
												<xsl:call-template name="printVersichertenStrassenAdresse"/>
											</xsl:if>
											<xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']">
												<xsl:call-template name="printVersichertenPostfachanschrift"/>
											</xsl:if>
										</xsl:variable>
										<xsl:copy-of select="$output"/>
										<xsl:if test="normalize-space($output) = ''">
											<br/>
											<br/>
										</xsl:if>
									</td>
								</tr>
							</tbody>
						</table>
						<!--T5b-->
					</td>
				</tr>
				<tr>
					<td>
						<!--Dritte verschachtelte Tabelle Kostenträgerkennung, Versichertennummer, Status-->
						<table style="border-collapse: collapse; border-bottom:1px solid black; width: 27em;  border-spacing: 0; cellspacing: 0; height: 2em; table-layout:fixed">
							<!--T5c-->
							<colgroup>
								<col style="width:9em;"/>
								<col style="width:10em;"/>
								<col style="width:8em;"/>
							</colgroup>
							<tbody>
								<tr>
									<td class="in-black">Kostenträgerkennung</td>
									<td class="in-black">Versicherten-Nr.</td>
									<td class="in-black">Status </td>
								</tr>
								<tr>
									<!--Kostenträgerkennung-->
									<td class="nowrap daten">
										<xsl:choose>
											<xsl:when test="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor/fhir:identifier/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Alternative_IK']/fhir:valueIdentifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor/fhir:identifier/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Alternative_IK']/fhir:valueIdentifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value"/>
											</xsl:when>
											<xsl:when test="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value"/>
											</xsl:when>
											<xsl:when test="fhir:entry/fhir:resource/fhir:SupplyRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_PracticeSupply_Payor']/fhir:extension[@url='IK']/fhir:valueIdentifier/fhir:value/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:SupplyRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_PracticeSupply_Payor']/fhir:extension[@url='IK']/fhir:valueIdentifier/fhir:value/@value"/>
											</xsl:when>
										</xsl:choose>
									</td>
									<!--Versicherten-Nr-->
									<td style="border-left:1px solid black;" class="daten">
										<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:identifier/fhir:value/@value"/>
									</td>
									<!--Status-->
									<td style="  border-left:1px solid black;" class="nowrap">
										<span class="daten">
											<xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:extension[@url='http://fhir.de/StructureDefinition/gkv/versichertenart']/fhir:valueCoding/fhir:code/@value"/>
										</span>
										<span class="thin-space">&#160;</span>
										<span class="daten">
											<xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:extension[@url='http://fhir.de/StructureDefinition/gkv/besondere-personengruppe']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PERSONENGRUPPE']/fhir:code/@value"/>
										</span>
										<span class="thin-space">&#160;</span>
										<span class="daten">
											<xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:extension[@url='http://fhir.de/StructureDefinition/gkv/dmp-kennzeichen']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DMP']/fhir:code/@value"/>
										</span>
										<span class="thin-space">&#160;</span>
										<span class="daten">
											<xsl:value-of select="fhir:entry/fhir:resource/fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN']/fhir:code/@value"/>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
						<!--T5c-->
					</td>
				</tr>
				<tr>
					<td>
						<!--Vierte verschachtelte Tabelle Betriebsstättennummer,Arzt-Nr und Datum-->
						<table style="border-collapse: collapse; width: 27em;  border-spacing: 0; cellspacing: 0; height: 2em; table-layout:fixed ">
							<!--T5d-->
							<colgroup>
								<col style="width: 9em"/>
								<col style="width: 9em"/>
								<col style="width: 9em"/>
							</colgroup>
							<tbody>
								<tr>
									<td class="in-black">Betriebsstätten-Nr.</td>
									<td class="in-black">Arzt-Nr.</td>
									<td class="in-black">Datum</td>
								</tr>
								<tr>
									<td class="daten">
										<xsl:choose>
                                            <xsl:when test="fhir:entry/fhir:resource/fhir:PractitionerRole/fhir:organization/fhir:identifier[fhir:system/@value='http://fhir.de/NamingSystem/asv/teamnummer']/fhir:value/@value">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:PractitionerRole/fhir:organization/fhir:identifier[fhir:system/@value='http://fhir.de/NamingSystem/asv/teamnummer']/fhir:value/@value"/>
                                            </xsl:when>
											<xsl:when test="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR']/fhir:value/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR']/fhir:value/@value"/>
											</xsl:when>
											<xsl:when test="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/kzvabrechnungsnummer']/fhir:value/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/kzvabrechnungsnummer']/fhir:value/@value"/>
											</xsl:when>
											<xsl:when test="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/dkgev/standortnummer']/fhir:value/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/dkgev/standortnummer']/fhir:value/@value"/>
											</xsl:when>
											<xsl:when test="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value">
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value"/>
											</xsl:when>
											<!-- keine Ausgabe der Telematik-ID, da diese wesentlich länger als 9 Zeichen sein kann -->
                                            <xsl:otherwise>&#160;</xsl:otherwise>
                                        </xsl:choose>
									</td>
									<td style="border-left:1px solid black;" class="daten">
										<xsl:variable name="author_ref" select="fhir:entry/fhir:resource/fhir:Composition/fhir:author[fhir:type/@value='Practitioner']/fhir:reference/@value"/>
										<xsl:choose>
											<xsl:when test="contains($author_ref,'/') or contains($author_ref,':')">
												<xsl:variable name="returnValue">
													<xsl:choose>
														<xsl:when test="contains($author_ref,'/')">
															<xsl:call-template name="substring-after-last">
																<xsl:with-param name="input" select="$author_ref"/>
																<xsl:with-param name="substr" select="'/'"/>
															</xsl:call-template>
														</xsl:when>
														<xsl:otherwise>
															<xsl:call-template name="substring-after-last">
																<xsl:with-param name="input" select="$author_ref"/>
																<xsl:with-param name="substr" select="':'"/>
															</xsl:call-template>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:variable>
												<xsl:choose>
													<xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$returnValue]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value">
														<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$returnValue]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value"/>
													</xsl:when>
													<xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$returnValue]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value">
														<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$returnValue]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value"/>
													</xsl:when>
													<!-- keine Ausgabe der Telematik-ID, da diese wesentlich länger als 9 Zeichen sein kann -->
													<xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$returnValue]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Fachgruppennummer_ASV']/fhir:code/@value">
														<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$returnValue]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Fachgruppennummer_ASV']/fhir:code/@value"/>
													</xsl:when>
													<xsl:otherwise>&#160;</xsl:otherwise>
												</xsl:choose>
											</xsl:when>
											<xsl:otherwise>
												<xsl:choose>
													<xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_ref]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value">
														<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_ref]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value"/>
													</xsl:when>
													<xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_ref]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value">
														<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_ref]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value"/>
													</xsl:when>
													<!-- keine Ausgabe der Telematik-ID, da diese wesentlich länger als 9 Zeichen sein kann -->
													<xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_ref]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Fachgruppennummer_ASV']/fhir:code/@value">
														<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_ref]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Fachgruppennummer_ASV']/fhir:code/@value"/>
													</xsl:when>
													<xsl:otherwise>&#160;</xsl:otherwise>
												</xsl:choose>
											</xsl:otherwise>
										</xsl:choose>
									</td>
									<td style="border-left:1px solid black;" class="daten">
										<xsl:choose>
											<xsl:when test="fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:authoredOn/@value">
												<xsl:call-template name="formatDate">
													<xsl:with-param name="date" select="fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:authoredOn/@value"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:when test="fhir:entry/fhir:resource/fhir:SupplyRequest/fhir:authoredOn/@value">
												<xsl:call-template name="formatDate">
													<xsl:with-param name="date" select="fhir:entry/fhir:resource/fhir:SupplyRequest/fhir:authoredOn/@value"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
                                             &#160;
											</xsl:otherwise>
										</xsl:choose>
									</td>
								</tr>
							</tbody>
						</table>
						<!--T5d-->
					</td>
				</tr>
			</tbody>
		</table>
		<!--T4ol-->
	</xsl:template>
	<xsl:template name="printAusstellender">
		<xsl:choose>
			<xsl:when test="count(fhir:entry/fhir:resource/fhir:Practitioner)='0' 
				and not(fhir:entry/fhir:resource/fhir:Organization/fhir:name/@value) 
				and not(fhir:entry/fhir:resource/fhir:Organization/fhir:identifier/fhir:value/@value) 
				and not(fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[1]/@value) 
				and not(fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[2]/@value)
				and not(fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:postalCode/@value)
				and not(fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:city/@value)
				and not(fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='phone']/fhir:value/@value)
				and not(fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='fax'])
				and not(fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='email'])
            ">
				<div style="background-color:white; width:20em;  border:1px solid black;  height: 13em;  position: relative" class="nowrap daten overflow ">
					<div class="in-black" style=" width:100%; position: absolute;text-align: center; bottom: 0; left:20%; size:-2;  text-align:center">Angaben Praxis &#47; verordnende Person</div>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div style="background-color:white; width:20em;  border:1px solid black;" class="daten overflow breakword">
					<xsl:variable name="anzahl" select="count(fhir:entry/fhir:resource/fhir:Practitioner)"/>
					<!--Bezeichnung der Praxis-->
					<xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:name/@value">
						<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:name/@value"/>
						<br/>
					</xsl:if>
					<!--BSNR-->
					<xsl:choose>
						<xsl:when test="fhir:entry/fhir:resource/fhir:PractitionerRole/fhir:organization/fhir:identifier[fhir:system/@value='http://fhir.de/NamingSystem/asv/teamnummer']/fhir:value/@value">
							<xsl:value-of select="fhir:entry/fhir:resource/fhir:PractitionerRole/fhir:organization/fhir:identifier[fhir:system/@value='http://fhir.de/NamingSystem/asv/teamnummer']/fhir:value/@value"/>
							<br/>
						</xsl:when>
						<xsl:when test="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR']/fhir:value/@value">
							<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR']/fhir:value/@value"/>
							<br/>
						</xsl:when>
						<xsl:when test="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/kzvabrechnungsnummer']/fhir:value/@value">
							<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/kzvabrechnungsnummer']/fhir:value/@value"/>
							<br/>
						</xsl:when>
						<xsl:when test="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/dkgev/standortnummer']/fhir:value/@value">
							<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/dkgev/standortnummer']/fhir:value/@value"/>
							<br/>
						</xsl:when>
						<xsl:when test="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value">
							<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value"/>
							<br/>
						</xsl:when>
						<!-- keine Ausgabe der Telematik-ID, da diese wesentlich länger als 9 Zeichen sein kann -->
					</xsl:choose>
					<!--Adresse-->
					<xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[1]">
						<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[1]/@value"/>
						<br/>
					</xsl:if>
					<xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[2]">
						<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[2]/@value"/>
						<br/>
					</xsl:if>
					<xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:postalCode/@value or fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:city/@value">
						<xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:postalCode/@value">
							<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:postalCode/@value"/>&#160;</xsl:if>
						<xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:city/@value">
							<xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:city/@value"/>
						</xsl:if>
						<br/>
					</xsl:if>
					<!--Telefonnummer (Betriebsstätte)-->
					<xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='phone']">
						Tel: <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='phone']/fhir:value/@value"/>
						<br/>
					</xsl:if>
					<!--Faxnummer (Betriebsstätte)-->
					<xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='fax']">
						Fax: <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='fax']/fhir:value/@value"/>
						<br/>
					</xsl:if>
					<!--E-Mail-Adresse (Betriebsstätte)-->
					<xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='email']">
						E-Mail: <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='email']/fhir:value/@value"/>
						<br/>
					</xsl:if>
                    <xsl:choose>
                        <!--Es existiert sowohl ein "Attester" als auch ein "Author"-->
                        <xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:attester and $anzahl>'1'">
                            <xsl:variable name="author_ref" select="fhir:entry/fhir:resource/fhir:Composition/fhir:author[fhir:type/@value='Practitioner']/fhir:reference/@value"/>
                            <xsl:variable name="attester_ref" select="fhir:entry/fhir:resource/fhir:Composition/fhir:attester/fhir:party/fhir:reference/@value"/>
                            <xsl:choose>
                                <xsl:when test="contains($author_ref,'/') or contains($author_ref,':')">
                                    <xsl:variable name="returnValueAuthor">
										<xsl:choose>
											<xsl:when test="contains($author_ref,'/')">
												<xsl:call-template name="substring-after-last">
													<xsl:with-param name="input" select="$author_ref"/>
													<xsl:with-param name="substr" select="'/'"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
												<xsl:call-template name="substring-after-last">
													<xsl:with-param name="input" select="$author_ref"/>
													<xsl:with-param name="substr" select="':'"/>
												</xsl:call-template>
											</xsl:otherwise>
										</xsl:choose>
                                    </xsl:variable>
                                    <xsl:call-template name="printPractitioner">
                                        <xsl:with-param name="practitionerId" select="$returnValueAuthor"/>
                                    </xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:call-template name="printPractitioner">
                                        <xsl:with-param name="practitionerId" select="$author_ref"/>
                                    </xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>
                            <br/>
                            <xsl:choose>
                                <xsl:when test="contains($attester_ref,'/') or contains($attester_ref,':')">
                                    <xsl:variable name="returnValueAttester">
										<xsl:choose>
											<xsl:when test="contains($attester_ref,'/')">
												<xsl:call-template name="substring-after-last">
													<xsl:with-param name="input" select="$attester_ref"/>
													<xsl:with-param name="substr" select="'/'"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
												<xsl:call-template name="substring-after-last">
													<xsl:with-param name="input" select="$attester_ref"/>
													<xsl:with-param name="substr" select="':'"/>
												</xsl:call-template>
											</xsl:otherwise>
										</xsl:choose>
                                    </xsl:variable>
                                    <xsl:call-template name="printPractitioner">
                                        <xsl:with-param name="practitionerId" select="$returnValueAttester"/>
                                    </xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:call-template name="printPractitioner">
                                        <xsl:with-param name="practitionerId" select="$attester_ref"/>
                                    </xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:if test="$anzahl='1'">
                                <xsl:call-template name="printPractitioner">
                                    <xsl:with-param name="practitionerId" select="fhir:entry/fhir:resource/fhir:Practitioner/fhir:id/@value"/>
                                </xsl:call-template>
                            </xsl:if>
                        </xsl:otherwise>
                    </xsl:choose>				
					<br/>
					<div class="in-black" style=" width:100%; text-align: center; size:-2;">Angaben Praxis &#47; verordnende Person</div>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="printVersichertenPostfachanschrift">
Postfach: <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:line/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox']/fhir:valueString/@value"/>
		<br/>
		<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:country/@value"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:postalCode/@value"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:city/@value"/>
	</xsl:template>
	<xsl:template name="printVersichertenStrassenAdresse">
		<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:line[1]/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName']/fhir:valueString/@value"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:line[1]/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber']/fhir:valueString/@value"/>
		<br/>
		<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:country/@value"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:postalCode/@value"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:city/@value"/>
	</xsl:template>
	<xsl:template name="formatDate">
		<xsl:param name="date"/>
		<xsl:variable name="yearNum" select="substring ($date, 1, 4)"/>
		<xsl:variable name="monthNum" select="substring ($date, 6, 2)"/>
		<xsl:variable name="dayNum" select="substring ($date, 9, 2)"/>
        <xsl:choose>
			<xsl:when test="$dayNum">
				<xsl:value-of select="$dayNum"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="'00'"/>
			</xsl:otherwise>
		</xsl:choose>
        <xsl:text>.</xsl:text>
        <xsl:choose>
			<xsl:when test="$monthNum">
				<xsl:value-of select="$monthNum"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="'00'"/>
			</xsl:otherwise>
		</xsl:choose>
        <xsl:text>.</xsl:text>
        <xsl:choose>
			<xsl:when test="$yearNum">
				<xsl:value-of select="$yearNum"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="'0000'"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="printPractitioner">
		<xsl:param name="practitionerId"/>
		<xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:prefix/@value 
        or fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:given/@value 
        or fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz'] 
        or fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix'] 
        or fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-name']/fhir:valueString/@value">
			<!--Titel-->
			<!-- Zeilenumbruch hier führt zu Leerzeile zwischen Einrichtung und Person(en) -->
			<xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:prefix/@value">
				<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:prefix/@value"/>
				<xsl:text> </xsl:text>
			</xsl:if>
			<!--Vorname-->
			<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:given/@value"/>
			<xsl:text> </xsl:text>
			<!--Namenszusatz-->
			<xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz']">
				<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz']/fhir:valueString/@value"/>
				<xsl:text> </xsl:text>
			</xsl:if>
			<!--Vorsatzwort-->
			<xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix']">
				<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix']/fhir:valueString/@value"/>
				<xsl:text> </xsl:text>
			</xsl:if>
			<!--Nachname-->
			<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-name']/fhir:valueString/@value"/>
			<br/>
		</xsl:if>
		<!-- Berufsbezeichnung -->
		<xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:qualification/fhir:code/fhir:text/@value">
			<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:qualification/fhir:code/fhir:text/@value"/>
			<br/>
		</xsl:if>
        <!-- Arztnummer / Zahnarztnummer / ASV-Fachgruppennummer -->
        <xsl:choose>
			<xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value">
				<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value"/>
			</xsl:when>
			<xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value">
				<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value"/>
			</xsl:when>
			<!-- keine Ausgabe der Telematik-ID, da diese wesentlich länger als 9 Zeichen sein kann -->
			<xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Fachgruppennummer_ASV']/fhir:code/@value">
				<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Fachgruppennummer_ASV']/fhir:code/@value"/>
			</xsl:when>
			<xsl:otherwise>&#160;</xsl:otherwise>
		</xsl:choose>
		<!-- Zeilenumbruch hier führt zu Leerzeile am Ende des Blocks -->
	</xsl:template>
	<xsl:template name="substring-after-last">
		<xsl:param name="input"/>
		<xsl:param name="substr"/>
		<xsl:variable name="lastChar" select="substring($input, string-length($input) - string-length($substr) +1)"/>
		<xsl:choose>
			<xsl:when test="$lastChar=$substr">
				<xsl:call-template name="substring-after-last">
					<xsl:with-param name="input" select="substring($input,1, string-length($input)-1)"/>
					<xsl:with-param name="substr" select="$substr"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<!-- Extract the string which comes after the first occurence -->
				<xsl:variable name="temp" select="substring-after($input,$substr)"/>
				<xsl:choose>
					<!-- If it still contains the search string the recursively process -->
					<xsl:when test="$substr and  contains($temp,$substr)">
						<xsl:call-template name="substring-after-last">
							<xsl:with-param name="input" select="$temp"/>
							<xsl:with-param name="substr" select="$substr"/>
						</xsl:call-template>
					</xsl:when>
					<xsl:otherwise>
						<xsl:if test="contains($temp,'/')">
							<xsl:call-template name="substring-after-last">
								<xsl:with-param name="input" select="$temp"/>
								<xsl:with-param name="substr" select="$substr"/>
							</xsl:call-template>
						</xsl:if>
						<xsl:value-of select="$temp"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="getVersion">
		<xsl:param name="url"/>
		<xsl:variable name="version" select="substring-after($url,'|')"/>
		<span class="footer">
			<xsl:value-of select="$version"/>
		</span>
	</xsl:template>
	
	<xsl:template match="fhir:entry/fhir:resource/fhir:Medication">
		<xsl:choose>
			<xsl:when test="fhir:code/fhir:coding/fhir:system[@value='http://fhir.de/CodeSystem/ifa/pzn']">
				<!--						
				[Anzahl der verordneten Packungen]x [Handelsname] [Darreichungsform entsprechend der Daten nach § 131 Abs. 4 SGB V] [Packungsgröße nach abgeteilter Menge] [Einheit] [Therapiegerechte Packungsgröße nach N-Bezeichnung] (PZN: [PZN])
				[Kennzeichen Dosierung] [Dosieranweisung] s. u.
				[Abgabehinweise] s. u.
				-->
				<p class="daten" style="max-width: 50em;">
					<xsl:if test="//fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value">
						<xsl:value-of select="//fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value"/>
						<text>x&#160;</text>
					</xsl:if>
					<xsl:if test="//fhir:SupplyRequest/fhir:quantity/fhir:value/@value">
						<xsl:value-of select="//fhir:SupplyRequest/fhir:quantity/fhir:value/@value"/>
						<text>x&#160;</text>
					</xsl:if>					
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:code/fhir:text/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:form/fhir:coding/fhir:code/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:amount/fhir:numerator/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize']/fhir:valueString/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:amount/fhir:numerator/fhir:unit/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:extension[@url='http://fhir.de/StructureDefinition/normgroesse']/fhir:valueCode/@value"/>
					</xsl:call-template>
					<text>(PZN: </text>
					<xsl:value-of select="fhir:code/fhir:coding/fhir:code/@value"/>
					<text>)</text>
				</p>
			</xsl:when>
			<xsl:when test="fhir:code/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Type']/following-sibling::fhir:code[@value='wirkstoff']">
				<!--
				[Anzahl der verordneten Packungen]x [Wirkstoffname] [Wirkstärke] [Wirkstärkeneinheit] ] (ASK-Nr: [Wirkstoffnummer]) [Darreichungsform Freitext] [Packungsgröße nach abgeteilter Menge] [Einheit] [Therapiegerechte Packungsgröße nach N-Bezeichnung]
				[Kennzeichen Dosierung] [Dosieranweisung] s. u.
				[Abgabehinweise] s. u.
				-->
				<p class="daten" style="max-width: 50em;">
					<xsl:if test="//fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value">
						<xsl:value-of select="//fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value"/>
						<text>x&#160;</text>
					</xsl:if>
					<xsl:if test="//fhir:SupplyRequest/fhir:quantity/fhir:value/@value">
						<xsl:value-of select="//fhir:SupplyRequest/fhir:quantity/fhir:value/@value"/>
						<text>x&#160;</text>
					</xsl:if>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:ingredient/fhir:itemCodeableConcept/fhir:text/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:ingredient/fhir:strength/fhir:numerator/fhir:value/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:ingredient/fhir:strength/fhir:numerator/fhir:unit/@value"/>
					</xsl:call-template>
					<xsl:if test="fhir:ingredient/fhir:itemCodeableConcept/fhir:coding/fhir:code/@value">
						<text>(ASK-Nr:&#160;</text>
						<xsl:value-of select="fhir:ingredient/fhir:itemCodeableConcept/fhir:coding/fhir:code/@value"/>
						<text>)&#160;</text>
					</xsl:if>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:form/fhir:text/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:amount/fhir:numerator/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize']/fhir:valueString/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:amount/fhir:numerator/fhir:unit/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:extension[@url='http://fhir.de/StructureDefinition/normgroesse']/fhir:valueCode/@value"/>
					</xsl:call-template>
				</p>
			</xsl:when>
			<xsl:when test="fhir:code/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Type']/following-sibling::fhir:code[@value='freitext']">
				<!--
				[Anzahl der verordneten Packungen]x [Freitextverordnung] [Darreichungsform Freitext]
				[Kennzeichen Dosierung] [Dosieranweisung] s. u.
				[Abgabehinweise] s. u.
				-->
				<p class="daten" style="max-width: 50em;">
					<xsl:if test="//fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value">
						<xsl:value-of select="//fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value"/>
						<text>x&#160;</text>
					</xsl:if>
					<xsl:if test="//fhir:SupplyRequest/fhir:quantity/fhir:value/@value">
						<xsl:value-of select="//fhir:SupplyRequest/fhir:quantity/fhir:value/@value"/>
						<text>x&#160;</text>
					</xsl:if>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:code/fhir:text/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:form/fhir:text/@value"/>
					</xsl:call-template>
				</p>
			</xsl:when>
			<xsl:when test="fhir:code/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Type']/following-sibling::fhir:code[@value='rezeptur']">
				<!--					
				[Anzahl der verordneten Packungen]x [Rezepturname] [Gesamtmenge der Rezeptur] [Einheit der Gesamtmenge] [Darreichungsform Freitext] [Herstellungsanweisung] [Verpackung]
				*[Name des Bestandteils] [Menge des Bestandteils] [Einheit des Bestandteils] [Menge und Einheit des Bestandteils Freitext] [Darreichungsform des Bestandteils Freitext] (PZN: [PZN des Bestandteils])
				[Gebrauchsanweisung]
				[Abgabehinweise]
				-->
				<p class="daten kein_abstand" style="max-width: 50em;">
					<xsl:if test="//fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value">
						<xsl:value-of select="//fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value"/>
						<text>x&#160;</text>
					</xsl:if>
					<xsl:if test="//fhir:SupplyRequest/fhir:quantity/fhir:value/@value">
						<xsl:value-of select="//fhir:SupplyRequest/fhir:quantity/fhir:value/@value"/>
						<text>x&#160;</text>
					</xsl:if>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:code/fhir:text/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:amount/fhir:numerator/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize']/fhir:valueString/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:amount/fhir:numerator/fhir:unit/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:form/fhir:text/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_CompoundingInstruction']/fhir:valueString/@value"/>
					</xsl:call-template>
					<xsl:call-template name="getPossibleEmptyValue">
						<xsl:with-param name="path" select="fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Packaging']/fhir:valueString/@value"/>
					</xsl:call-template>
				</p>
				<ul class="daten">
					<xsl:apply-templates select="fhir:ingredient"/>
				</ul>
				<xsl:if test="//fhir:MedicationRequest/fhir:dosageInstruction/fhir:patientInstruction/@value">
					<p class="daten" style="max-width: 50em;">
						<xsl:value-of select="//fhir:MedicationRequest/fhir:dosageInstruction/fhir:patientInstruction/@value"/>
					</p>
				</xsl:if>
			</xsl:when>
		</xsl:choose>
		<xsl:if test="//fhir:MedicationRequest/fhir:dosageInstruction/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_DosageFlag']/fhir:valueBoolean/@value">
			<!-- [Kennzeichen Dosierung] [Dosieranweisung] -->
			<p class="daten" style="max-width: 50em;">
				<xsl:choose>
					<xsl:when test="//fhir:MedicationRequest/fhir:dosageInstruction/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_DosageFlag']/fhir:valueBoolean[@value='true']">
						<text>Dosierung:&#160;</text>
						<xsl:value-of select="//fhir:MedicationRequest/fhir:dosageInstruction/fhir:text/@value"/>
					</xsl:when>
					<xsl:when test="//fhir:MedicationRequest/fhir:dosageInstruction/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_DosageFlag']/fhir:valueBoolean[@value='false']">
						<text>Dosieranweisung&#160;&#x2f;&#160;Medikationsplan mitgegeben</text>
					</xsl:when>
				</xsl:choose>
			</p>
		</xsl:if>
		<xsl:if test="//fhir:MedicationRequest/fhir:note/fhir:text/@value">
			<!--[Abgabehinweise] falls vorliegend bei jeder Verordnungsart-->
			<p class="daten" style="max-width: 50em;">
				<xsl:value-of select="//fhir:MedicationRequest/fhir:note/fhir:text/@value"/>
			</p>
		</xsl:if>
		<xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_StatusCoPayment']/fhir:valueCoding/fhir:code/@value=2">
			<p class="daten" style="max-width: 50em;">Zuzahlung von 50&#37; aufgrund Regelung nach &#167; 27a SGB V</p>
		</xsl:if>
	</xsl:template>
	<xsl:template match="fhir:ingredient">
		<li style="margin-left:2em;">
			<xsl:call-template name="getPossibleEmptyValue">
				<xsl:with-param name="path" select="fhir:itemCodeableConcept/fhir:text/@value"/>
			</xsl:call-template>
			<xsl:call-template name="getPossibleEmptyValue">
				<xsl:with-param name="path" select="fhir:strength/fhir:numerator/fhir:value/@value"/>
			</xsl:call-template>
			<xsl:call-template name="getPossibleEmptyValue">			
				<xsl:with-param name="path" select="fhir:strength/fhir:numerator/fhir:unit/@value"/>
			</xsl:call-template>
			<xsl:call-template name="getPossibleEmptyValue">			
				<xsl:with-param name="path" select="fhir:strength/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Ingredient_Amount']/fhir:valueString/@value"/>
			</xsl:call-template>
			<xsl:call-template name="getPossibleEmptyValue">			
				<xsl:with-param name="path" select="fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Ingredient_Form']/fhir:valueString/@value"/>
			</xsl:call-template>
			<xsl:if test="fhir:itemCodeableConcept/fhir:coding/fhir:code/@value">
				<text>(PZN:&#160;</text>
				<xsl:value-of select="fhir:itemCodeableConcept/fhir:coding/fhir:code/@value"/>
				<text>)</text>
			</xsl:if>
		</li>
	</xsl:template>
	<xsl:template name="getPossibleEmptyValue">
		<xsl:param name="path"/>
		<xsl:choose>
			<xsl:when test="$path">
				<xsl:value-of select="$path"/>
				<text>&#160;</text>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
