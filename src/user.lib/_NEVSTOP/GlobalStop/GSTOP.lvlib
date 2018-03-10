<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="14008000">
	<Property Name="Alarm Database Computer" Type="Str">localhost</Property>
	<Property Name="Alarm Database Name" Type="Str">C__Program_Files__x86__National_Instruments_LabVIEW_2013_data</Property>
	<Property Name="Alarm Database Path" Type="Str">C:\Program Files (x86)\National Instruments\LabVIEW 2013\data</Property>
	<Property Name="Data Lifespan" Type="UInt">3650</Property>
	<Property Name="Database Computer" Type="Str">localhost</Property>
	<Property Name="Database Name" Type="Str">C__Program_Files__x86__National_Instruments_LabVIEW_2013_data</Property>
	<Property Name="Database Path" Type="Str">C:\Program Files (x86)\National Instruments\LabVIEW 2013\data</Property>
	<Property Name="Enable Alarms Logging" Type="Bool">true</Property>
	<Property Name="Enable Data Logging" Type="Bool">true</Property>
	<Property Name="EndevoGOOP_ColorFrame" Type="UInt">0</Property>
	<Property Name="EndevoGOOP_ColorHeader" Type="UInt">16448250</Property>
	<Property Name="EndevoGOOP_ColorPrivate" Type="UInt">16711680</Property>
	<Property Name="EndevoGOOP_ColorPublic" Type="UInt">16448250</Property>
	<Property Name="EndevoGOOP_ColorTextBody" Type="UInt">1</Property>
	<Property Name="EndevoGOOP_ColorTextHeader" Type="UInt">0</Property>
	<Property Name="EndevoGOOP_FrameThickness" Type="UInt">1</Property>
	<Property Name="NI.Lib.Description" Type="Str"># LabVIEW GlobalStop Library

提供给系统使用的全局停止方案。

使用Function Global Variable （FGV）的方式，存储一个Boolean 类型的标志数据，不同线程通过读取该FGV判断是否需要停止。

![Library Pallette](https://cloud.githubusercontent.com/assets/8196752/10752145/8288f624-7cc1-11e5-9700-e3740e08f571.png)

- `Init.vi` : 初始化STOP FGV，如果ERROR 发生，则全局停止位初始化为 TRUE
- `Reset.vi` :设置STOP FGV为 False，Index 标识模块编号，-1 标识全局停止位
- `Set.vi` : 设置STOP FGV为 True，Index 标识模块编号，-1 标识全局停止位
- `Get.vi` :检查STOP FGV值，如果输入的错误簇为False，会自动调用Set.vi 方法，Index 标识模块编号，-1 标识全局停止位
- `CheckSet.vi` :检查输入的Boolean值，（通常连接到Stop Button上）判断是否需要退出。如果输入的错误簇为False，会自动调用Set.vi 方法，Index 标识模块编号，-1 标识全局停止位

优点：简单、高效、易用，STOP FGV的方案也保证了多线程安全。
</Property>
	<Property Name="NI.Lib.HelpPath" Type="Str"></Property>
	<Property Name="NI.Lib.Icon" Type="Bin">&amp;!#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(A!!!*Q(C=\&gt;4.D2J"%!&lt;1MO7$LW2AE5+F1!KE5#FQ^:%5+A63))6+A22)9@VIN4=#3VZJNXO,B9`_?@3-*G+VHR%`YKN^N;`WK&gt;PP`QW)_"&lt;R^P;G2L5KF5I_]J'0@/1D(XH,7^\SFL?]Z35P?=F,8P+3JTTF+5^ZSF/_ODTE)1]ZUNB]&lt;$17(1O-Q3AR8I:H?):H?(S-Y2G?Y2G?Y4%EBG&gt;YBG&gt;YBM?U'*\B':\B'2Z,,=GM,O=:(MN(]T20]T20]^ASGK="WG:NY&lt;9)2L1PWZPG;:\G]4;;JXG;JXG;R^@20-X40-X40+;M5_GF?85ZDW7C?)KH?)KH?#Q&gt;R6-]R6-]R7/\+*\C+9CS96E=)=KE-K"]+*\C]3_+JXC+JXC+RV@L#N5[G:@GV?5]S:-]S:-]S7/*3*\E3:\E32\,2P)E4`)E4`,9+J)H?:)H1&gt;+GNI_U7*K9"K5A?@SNOS886?IFS&gt;5D^MU&lt;_[;-@&lt;0&amp;PIFCXRSR,XLMCRH\)M5_`.C('POQ9B^#\"]8'RU&lt;%XO4W*.@!_0J^;(O[K;O[K,/[K3/[P#;_I](0J`0?$Q?=&lt;`@YX;\R@6[D=PF%O@T/5[H5RS0RTA=$O_0A6`[_Q0B)TS80I4B_XIW`GX/[!]-RG7\!!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">335577088</Property>
	<Property Name="NI.Lib.Version" Type="Str">2.0.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.SortType" Type="Int">3</Property>
	<Property Name="NI_IconEditor" Type="Str">49 51 48 48 56 48 52 55 13 0 0 0 0 1 23 21 76 111 97 100 32 38 32 85 110 108 111 97 100 46 108 118 99 108 97 115 115 0 0 1 0 0 0 0 0 9 0 0 0 76 1 100 1 100 80 84 72 48 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 11 83 109 97 108 108 32 70 111 110 116 115 0 1 8 0 1

</Property>
	<Property Name="OdbcAlarmLoggingTableName" Type="Str">NI_ALARM_EVENTS</Property>
	<Property Name="OdbcBooleanLoggingTableName" Type="Str">NI_VARIABLE_BOOLEAN</Property>
	<Property Name="OdbcConnectionRadio" Type="UInt">0</Property>
	<Property Name="OdbcConnectionString" Type="Str"></Property>
	<Property Name="OdbcCustomStringText" Type="Str"></Property>
	<Property Name="OdbcDoubleLoggingTableName" Type="Str">NI_VARIABLE_NUMERIC</Property>
	<Property Name="OdbcDSNText" Type="Str"></Property>
	<Property Name="OdbcEnableAlarmLogging" Type="Bool">false</Property>
	<Property Name="OdbcEnableDataLogging" Type="Bool">false</Property>
	<Property Name="OdbcPassword" Type="Str"></Property>
	<Property Name="OdbcReconnectPeriod" Type="UInt">0</Property>
	<Property Name="OdbcReconnectTimeUnit" Type="Int">0</Property>
	<Property Name="OdbcStringLoggingTableName" Type="Str">NI_VARIABLE_STRING</Property>
	<Property Name="OdbcUsername" Type="Str"></Property>
	<Property Name="SaveStatePeriod" Type="UInt">0</Property>
	<Property Name="Serialized ACL" Type="Bin">&amp;!#!!!!!!!)!"1!&amp;!!!A1%!!!@````]!!".V&lt;H.J:WZF:#"C?82F)'&amp;S=G&amp;Z!!%!!1!!!!A)!!!!#!!!!!!!!!!</Property>
	<Property Name="Use Data Logging Database" Type="Bool">true</Property>
	<Item Name="private" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
		<Item Name="_replace stopArr element.vi" Type="VI" URL="../_replace stopArr element.vi"/>
		<Item Name="_def_oper.ctl" Type="VI" URL="../_def_oper.ctl"/>
		<Item Name="_gStop.vi" Type="VI" URL="../_gStop.vi"/>
	</Item>
	<Item Name="GSTOP INIT.vi" Type="VI" URL="../GSTOP INIT.vi"/>
	<Item Name="GSTOP RESET.vi" Type="VI" URL="../GSTOP RESET.vi"/>
	<Item Name="GSTOP SET.vi" Type="VI" URL="../GSTOP SET.vi"/>
	<Item Name="GSTOP GET.vi" Type="VI" URL="../GSTOP GET.vi"/>
	<Item Name="GSTOP CheckSet.vi" Type="VI" URL="../GSTOP CheckSet.vi"/>
</Library>
