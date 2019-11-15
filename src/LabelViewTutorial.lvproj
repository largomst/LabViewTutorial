<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="基本概念" Type="Folder">
			<Item Name="HelloWorld.vi" Type="VI" URL="../HelloWorld.vi"/>
			<Item Name="第一个项目.vi" Type="VI" URL="../第一个项目.vi"/>
		</Item>
		<Item Name="作为主程序使用.vi" Type="VI" URL="../作为主程序使用.vi"/>
		<Item Name="依赖关系" Type="Dependencies"/>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="HelloWorld" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{01D81390-7C58-4875-9E0C-98B11CD70D2D}</Property>
				<Property Name="App_INI_GUID" Type="Str">{E7D10086-3AC1-49A1-8744-6DBAE9D1EA60}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{C356DAE4-B23E-4E7E-83E9-736B337740AA}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">HelloWorld</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/HelloWorld</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{1988FD0A-BDDF-4CF9-A63E-CCB195F45049}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">应用程序.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/HelloWorld/应用程序.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/HelloWorld/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{CDB9D099-AD14-4F46-B5B8-5A6312B98C30}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/基本概念/HelloWorld.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">HelloWorld</Property>
				<Property Name="TgtF_internalName" Type="Str">HelloWorld</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2019 </Property>
				<Property Name="TgtF_productName" Type="Str">HelloWorld</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{42CC28BC-4E08-42D7-B487-8EDDF149D2CA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">应用程序.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
