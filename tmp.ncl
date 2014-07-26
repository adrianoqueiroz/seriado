<ncl id="myNCLDocID">
	<head>
		<ruleBase id="ruleBase1">
			<rule comparator="eq" id="en" value="en" var="system.language">
			</rule>
			<rule comparator="eq" id="rRock" value="3" var="service.currentFocus">
			</rule>
			<rule comparator="eq" id="rTechno" value="4" var="service.currentFocus">
			</rule>
			<rule comparator="eq" id="rCartoon" value="5" var="service.currentFocus">
			</rule>
		</ruleBase>
		<connectorBase id="connBaseId">
			<importBase alias="conn" documentURI="defaultConnBase.ncl">
			</importBase>
		</connectorBase>
		<regionBase id="regionBase0">
			<region height="100.00%" id="screenReg" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="15.83%" id="iconeReg" left="84.54%" top="6.00%" width="9.48%" zIndex="2">
				</region>
				<region height="100.00%" id="menuReg" left="0.00%" top="0.00%" width="22.72%" zIndex="3">
				</region>
				<region height="6.51%" id="chorinhoReg" left="2.50%" top="91.70%" width="11.70%" zIndex="3">
				</region>
				<region height="6.51%" id="rockReg" left="25.00%" top="91.70%" width="11.70%" zIndex="3">
				</region>
				<region height="6.51%" id="technoReg" left="47.50%" top="91.70%" width="11.70%" zIndex="3">
				</region>
				<region height="6.51%" id="cartoonReg" left="70.00%" top="91.70%" width="11.70%" zIndex="3">
				</region>
			</region>
			<region height="100.00%" id="backgroundReg" left="0.00%" top="0.00%" width="100.00%" zIndex="0">
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
			<descriptor focusIndex="2" id="chorinhoDesc" moveLeft="5" moveRight="3" region="chorinhoReg">
			</descriptor>
			<descriptor focusIndex="3" id="rockDesc" moveLeft="2" moveRight="4" region="rockReg">
			</descriptor>
			<descriptor focusIndex="4" id="technoDesc" moveLeft="3" moveRight="5" region="technoReg">
			</descriptor>
			<descriptor focusIndex="5" id="cartoonDesc" moveLeft="4" moveRight="2" region="cartoonReg">
			</descriptor>
		</descriptorBase>
	</head>
	<body id="myBodyID">
		<media descriptor="backgroundDesc" id="background" src="media/background.jpg">
		</media>
		<port component="filme" id="p0">
		</port>
		<media descriptor="filmeDesc" id="filme" src="media/filme.mp4">
			<area begin="4s" end="51s" id="areaIcone">
			</area>
		</media>
		<link id="link0" xconnector="conn#onBeginStart">
			<bind component="filme" role="onBegin">
			</bind>
			<bind component="background" role="start">
			</bind>
		</link>
		<context id="ctx0">
			<media id="reusedFilme" instance="instSame" refer="filme">
				<property name="bounds">
				</property>
			</media>
			<media descriptor="iconeDesc" id="iconeMedia" src="media/icone.png">
			</media>
			<link id="lIcone" xconnector="conn#onBeginStart">
				<bind component="reusedFilme" interface="areaIcone" role="onBegin">
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
				<bind component="reusedFilme" interface="bounds" role="set">
					<bindParam name="var" value="60.00%,8.00%,35.00%,35.00%">
					</bindParam>
				</bind>
				<bind component="iconeMedia" role="stop">
				</bind>
			</link>
			<media descriptor="nosinalDesc" id="nosinal" src="media/nosignal.mp4">
			</media>
			<link id="link1" xconnector="conn#onEndStart">
				<bind component="reusedFilme" role="onEnd">
				</bind>
				<bind component="nosinal" role="start">
				</bind>
			</link>
		</context>
		<context id="menuCont">
			<port component="choro" id="pChoro">
			</port>
			<port component="imgChorinho" id="pChorinho">
			</port>
			<port component="imgRock" id="pRock">
			</port>
			<port component="imgTechno" id="pTechno">
			</port>
			<port component="imgCartoon" id="pCartoon">
			</port>
			<media descriptor="chorinhoDesc" id="imgChorinho" src="media/chorinho.png">
			</media>
			<media descriptor="rockDesc" id="imgRock" src="media/rock.png">
			</media>
			<media descriptor="technoDesc" id="imgTechno" src="media/techno.png">
			</media>
			<media descriptor="cartoonDesc" id="imgCartoon" src="media/cartoon.png">
			</media>
			<media descriptor="audioDesc" id="choro" src="media/choro.mp4">
				<property name="soundLevel" value="1">
				</property>
			</media>
			<switch id="musics">
				<bindRule constituent="rock" rule="rRock">
				</bindRule>
				<bindRule constituent="techno" rule="rTechno">
				</bindRule>
				<bindRule constituent="cartoon" rule="rCartoon">
				</bindRule>
				<media id="rock" src="../media/rock.mp4">
				</media>
				<media id="techno" src="../media/techno.mp4">
				</media>
				<media id="cartoon" src="../media/cartoon.mp4">
				</media>
			</switch>
			<link id="lChoro" xconnector="conn#onSelectionSet_varStop">
				<bind component="imgChorinho" role="onSelection">
				</bind>
				<bind component="choro" interface="soundLevel" role="set">
					<bindParam name="var" value="1">
					</bindParam>
				</bind>
				<bind component="musics" role="stop">
				</bind>
			</link>
			<link id="lOthers" xconnector="conn#onSelection_orSet_varStopStart">
				<bind component="imgRock" role="onSelection">
				</bind>
				<bind component="imgTechno" role="onSelection">
				</bind>
				<bind component="imgCartoon" role="onSelection">
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
		</context>
	</body>
</ncl>
