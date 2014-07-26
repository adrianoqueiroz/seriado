<ncl id="myNCLDocID">
	<head>
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
		</context>
	</body>
</ncl>
