<ncl id="myNCLDocID">
	<head>
		<transitionBase id="transitionBase1">
			<transition dur="2s" endProgress="1" id="tFade" startProgress="0" type="fade">
			</transition>
		</transitionBase>
		<ruleBase id="ruleBase1">
			<rule comparator="eq" id="en" value="en" var="system.language">
			</rule>
			<rule comparator="eq" id="rPersonagens" value="2" var="si.channelNumber">
			</rule>
			<rule comparator="eq" id="rCapitulos" value="3" var="service.currentFocus">
			</rule>
			<rule comparator="eq" id="rFotos" value="4" var="service.currentFocus">
			</rule>
			<rule comparator="eq" id="rCartoon" value="5" var="service.currentFocus">
			</rule>
			<rule comparator="eq" id="rAnt" value="6" var="service.currentFocus">
			</rule>
			<rule comparator="eq" id="rProx" value="7" var="service.currentFocus">
			</rule>
		</ruleBase>
		<connectorBase id="connBaseId">
			<importBase alias="conn" documentURI="defaultConnBase.ncl">
			</importBase>
		</connectorBase>
		<regionBase id="regionBase0">
			<region height="100.00%" id="backgroundReg" left="0.00%" top="0.00%" width="100.00%" zIndex="0">
			</region>
			<region height="100.00%" id="screenReg" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="13.33%" id="iconeReg" left="85.83%" top="6.04%" width="8.20%" zIndex="2">
				</region>
				<region height="100.00%" id="menuReg" left="0.12%" top="0.00%" width="27.87%" zIndex="3">
				</region>
				<region height="9.00%" id="personagensReg" left="4.00%" top="25.00%" width="20.00%" zIndex="4">
				</region>
				<region height="9.00%" id="capitulosReg" left="4.00%" top="35.00%" width="20.00%" zIndex="4">
				</region>
				<region height="9.00%" id="fotosReg" left="4.00%" top="45.00%" width="20.00%" zIndex="4">
				</region>
				<region height="9.00%" id="cartoonReg" left="4.00%" top="55.00%" width="20.00%" zIndex="4">
				</region>
				<region height="9.00%" id="sairReg" left="4.00%" top="65.00%" width="20.00%" zIndex="4">
				</region>
				<region height="100.00%" id="submenuReg" left="27.99%" top="0.00%" width="30.91%" zIndex="5">
					<region height="42.05%" id="fotoReg" left="10.98%" top="2.00%" width="78.41%" zIndex="6">
					</region>
					<region height="48.12%" id="textoReg" left="10.98%" top="46.03%" width="78.03%" zIndex="7">
					</region>
					<region height="6.90%" id="proxReg" left="84.09%" top="15.06%" width="10.98%" zIndex="8">
					</region>
					<region height="6.90%" id="antReg" left="6.06%" top="14.85%" width="10.98%" zIndex="8">
					</region>
					<region height="5.62%" id="voltarReg" left="8.33%" top="91.88%" width="10.98%" zIndex="9">
					</region>
				</region>
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="backgroundDesc" region="backgroundReg">
			</descriptor>
			<descriptor id="filmeDesc" region="screenReg">
			</descriptor>
			<descriptor id="iconeDesc" region="iconeReg">
			</descriptor>
			<descriptor id="menuDesc" region="menuReg">
			</descriptor>
			<descriptor id="nosinalDesc" region="screenReg">
			</descriptor>
			<descriptor id="audioDesc">
			</descriptor>
			<descriptor focusIndex="2" id="personagensDesc" moveDown="3" moveRight="7" moveUp="5" region="personagensReg">
			</descriptor>
			<descriptor focusIndex="3" id="capitulosDesc" moveDown="4" moveUp="2" region="capitulosReg">
			</descriptor>
			<descriptor focusIndex="4" id="fotosDesc" moveDown="5" moveUp="3" region="fotosReg">
			</descriptor>
			<descriptor focusIndex="5" id="sairDesc" moveDown="2" moveUp="4" region="cartoonReg">
			</descriptor>
			<descriptor id="submenuDesc" region="submenuReg">
			</descriptor>
			<descriptor focusIndex="6" id="antDesc" moveDown="8" moveLeft="7" moveRight="7" moveUp="8" region="antReg">
			</descriptor>
			<descriptor focusIndex="7" id="proxDesc" moveDown="8" moveLeft="6" moveRight="6" moveUp="8" region="proxReg">
			</descriptor>
			<descriptor id="fotowalterDesc" region="fotoReg">
			</descriptor>
			<descriptor focusIndex="8" id="voltarDesc" moveDown="6" moveUp="6" region="voltarReg">
			</descriptor>
			<descriptor id="textowalterDesc" region="textoReg">
			</descriptor>
			<descriptor id="fotoskylerDesc" region="fotoReg">
			</descriptor>
			<descriptor id="fotojesseDesc" region="fotoReg">
			</descriptor>
			<descriptor id="textoskylerDesc" region="textoReg">
			</descriptor>
			<descriptor id="textojesseDesc" region="textoReg">
			</descriptor>
			<descriptor id="submenufotosDesc" region="submenuReg">
			</descriptor>
		</descriptorBase>
	</head>
	<body id="myBodyID">
		<media id="nodeSettings" type="application/x-ncl-settings">
			<property name="system.language">
			</property>
			<property name="interaction" value="true">
			</property>
			<property name="default.focusBorderColor" value="yellow">
			</property>
		</media>
		<media descriptor="backgroundDesc" id="background" src="media/background.jpg">
		</media>
		<port component="filme" id="p0">
		</port>
		<link id="link0" xconnector="conn#onBeginStart">
			<bind component="filme" role="onBegin">
			</bind>
			<bind component="background" role="start">
			</bind>
		</link>
		<media descriptor="filmeDesc" id="filme" src="media/filme.mp4">
			<area begin="4s" id="areaIcone">
			</area>
			<property name="bounds">
			</property>
		</media>
		<media descriptor="iconeDesc" id="iconeMedia" src="media/icone.png">
		</media>
		<link id="lIcone" xconnector="conn#onBeginStart">
			<bind component="filme" interface="areaIcone" role="onBegin">
			</bind>
			<bind component="iconeMedia" role="start">
			</bind>
		</link>
		<media descriptor="menuDesc" id="menu" src="media/menu.png">
		</media>
		<link id="link2" xconnector="conn#onKeySelectionStopSet_varStart">
			<bind component="iconeMedia" role="onSelection">
				<bindParam name="keyCode" value="RED">
				</bindParam>
			</bind>
			<bind component="menu" role="start">
			</bind>
			<bind component="filme" interface="bounds" role="set">
				<bindParam name="var" value="61.50%,30.00%,35.00%,35.00%">
				</bindParam>
			</bind>
			<bind component="iconeMedia" role="stop">
			</bind>
		</link>
		<media descriptor="nosinalDesc" id="nosinal" src="media/nosignal.mp4">
		</media>
		<context id="menuCont">
			<port component="imgPersonagens" id="pChorinho">
			</port>
			<port component="imgCapitulos" id="pRock">
			</port>
			<port component="imgFotos" id="pFotos">
			</port>
			<port component="imgSair" id="pCartoon">
			</port>
			<media descriptor="personagensDesc" id="imgPersonagens" src="media/personagens.png">
			</media>
			<media descriptor="capitulosDesc" id="imgCapitulos" src="media/capitulos.png">
			</media>
			<media descriptor="fotosDesc" id="imgFotos" src="media/fotos.png">
			</media>
			<media descriptor="sairDesc" id="imgSair" src="media/sair.png">
			</media>
			<media descriptor="audioDesc" id="choro" src="media/choro.mp4">
				<property name="soundLevel" value="1">
				</property>
			</media>
			<media id="reusedMenu" instance="instSame" refer="menu">
			</media>
			<switch id="musics">
				<bindRule constituent="personagens" rule="rPersonagens">
				</bindRule>
				<bindRule constituent="capitulos" rule="rCapitulos">
				</bindRule>
				<bindRule constituent="fotos" rule="rFotos">
				</bindRule>
				<bindRule constituent="cartoon" rule="rCartoon">
				</bindRule>
				<media id="personagens" src="media/rock.mp4">
				</media>
				<media id="capitulos" src="media/rock.mp4">
				</media>
				<media id="fotos" src="media/techno.mp4">
				</media>
				<media id="cartoon" src="media/cartoon.mp4">
				</media>
			</switch>
			<link id="lOthers" xconnector="conn#onSelection_orSet_varStopStart">
				<bind component="imgCapitulos" role="onSelection">
				</bind>
				<bind component="choro" interface="soundLevel" role="set">
					<bindParam name="var" value="0">
					</bindParam>
				</bind>
				<bind component="musics" role="stop">
				</bind>
				<bind component="musics" role="start">
				</bind>
			</link>
			<link id="link4" xconnector="conn#onEndSet_var">
				<bind component="musics" role="onEnd">
				</bind>
				<bind component="choro" interface="soundLevel" role="set">
					<bindParam name="var" value="1">
					</bindParam>
				</bind>
			</link>
			<link id="link8" xconnector="conn#onKeySelectionStop">
				<bind component="imgSair" role="onSelection">
				</bind>
				<bind component="reusedMenu" role="stop">
				</bind>
			</link>
			<media descriptor="submenuDesc" id="submenu" src="media/submenu.png">
			</media>
			<link id="link1" xconnector="conn#onKeySelectionStart">
				<bind component="imgPersonagens" role="onSelection">
				</bind>
				<bind component="submenu" role="start">
				</bind>
			</link>
			<context id="ctx1">
				<media descriptor="antDesc" id="ant" src="media/ant.png">
				</media>
				<media descriptor="proxDesc" id="prox" src="media/prox.png">
				</media>
				<port component="ant" id="p1">
				</port>
				<port component="prox" id="p2">
				</port>
				<switch id="swtpersonagens">
					<bindRule constituent="ctxJesse" rule="rAnt">
					</bindRule>
					<bindRule constituent="ctxSkyler" rule="rProx">
					</bindRule>
					<context id="ctxJesse">
						<media descriptor="fotojesseDesc" id="jesse" src="media/jesse.png">
						</media>
						<media descriptor="textojesseDesc" id="textojesse" src="media/textojesse.png">
						</media>
						<link id="link16" xconnector="conn#onBeginStart">
							<bind component="jesse" role="onBegin">
							</bind>
							<bind component="textojesse" role="start">
							</bind>
						</link>
						<port component="jesse" id="p6">
						</port>
					</context>
					<context id="ctxSkyler">
						<media descriptor="fotoskylerDesc" id="skyler" src="media/skyler.png">
						</media>
						<media descriptor="textoskylerDesc" id="textoskyler" src="media/textoskyler.png">
						</media>
						<link id="link17" xconnector="conn#onBeginStart">
							<bind component="skyler" role="onBegin">
							</bind>
							<bind component="textoskyler" role="start">
							</bind>
						</link>
						<port component="skyler" id="p5">
						</port>
					</context>
				</switch>
				<media descriptor="fotowalterDesc" id="walter" src="media/walter.png">
				</media>
				<port component="walter" id="p3">
				</port>
				<link id="link11" xconnector="conn#onSelectionStopStart">
					<bind component="prox" role="onSelection">
					</bind>
					<bind component="swtpersonagens" role="start">
					</bind>
					<bind component="walter" role="stop">
					</bind>
				</link>
				<media descriptor="voltarDesc" id="voltar" src="media/voltar.png">
				</media>
				<media id="reusedSubmenu" instance="instSame" refer="submenu">
				</media>
				<port component="voltar" id="p4">
				</port>
				<link id="link12" xconnector="conn#onKeySelectionStop">
					<bind component="voltar" role="onSelection">
					</bind>
					<bind component="reusedSubmenu" role="stop">
					</bind>
				</link>
				<media descriptor="textowalterDesc" id="textowalter" src="media/textowalter.png">
				</media>
				<link id="link14" xconnector="conn#onBeginStart">
					<bind component="walter" role="onBegin">
					</bind>
					<bind component="textowalter" role="start">
					</bind>
				</link>
				<link id="link15" xconnector="conn#onEndStop">
					<bind component="walter" role="onEnd">
					</bind>
					<bind component="textowalter" role="stop">
					</bind>
				</link>
				<link id="link18" xconnector="conn#onSelectionStopStart">
					<bind component="ant" role="onSelection">
					</bind>
					<bind component="swtpersonagens" role="start">
					</bind>
					<bind component="walter" role="stop">
					</bind>
				</link>
			</context>
			<media descriptor="submenufotosDesc" id="submenufotos" src="media/submenufotos.png">
			</media>
			<link id="link10" xconnector="conn#onKeySelectionStart">
				<bind component="imgFotos" role="onSelection">
				</bind>
				<bind component="submenufotos" role="start">
				</bind>
			</link>
			<link id="link19" xconnector="conn#onBeginStart">
				<bind component="submenu" role="onBegin">
				</bind>
				<bind component="ctx1" role="start">
				</bind>
			</link>
			<link id="link20" xconnector="conn#onEndStop">
				<bind component="submenu" role="onEnd">
				</bind>
				<bind component="ctx1" role="stop">
				</bind>
			</link>
			<link id="link21" xconnector="conn#onBeginStop">
				<bind component="submenufotos" role="onBegin">
				</bind>
				<bind component="ctx1" role="stop">
				</bind>
			</link>
			<link id="link13" xconnector="conn#onKeySelectionStop">
				<bind component="imgPersonagens" role="onSelection">
				</bind>
				<bind component="submenufotos" role="stop">
				</bind>
			</link>
		</context>
		<link id="link3" xconnector="conn#onBeginStart">
			<bind component="menu" role="onBegin">
			</bind>
			<bind component="menuCont" role="start">
			</bind>
		</link>
		<link id="link9" xconnector="conn#onEndStart">
			<bind component="menu" role="onEnd">
			</bind>
			<bind component="iconeMedia" role="start">
			</bind>
		</link>
		<link id="link6" xconnector="conn#onEndSet_var">
			<bind component="menu" role="onEnd">
			</bind>
			<bind component="filme" interface="bounds" role="set">
				<bindParam name="var" value="0.00%,0.00%,286.00%,286.00%">
				</bindParam>
			</bind>
		</link>
		<link id="link7" xconnector="conn#onEndStop">
			<bind component="menu" role="onEnd">
			</bind>
			<bind component="menuCont" role="stop">
			</bind>
		</link>
		<link id="link5" xconnector="conn#onEndStop">
			<bind component="filme" role="onEnd">
			</bind>
			<bind component="background" role="stop">
			</bind>
		</link>
	</body>
</ncl>
