global function tf3devtestInit

#if CLIENT

void function tf3devtestInit(){
	thread devTestMain()
}

var devTest = null
string mapName = ""

void function devTestMain(){
	WaitFrame()
	mapName = GetMapName()
  	devTest = RuiCreate($"ui/cockpit_console_text_top_left.rpak", clGlobal.topoCockpitHudPermanent, RUI_DRAW_COCKPIT, 0)
  	RuiSetInt(devTest, "maxLines", 1)
  	RuiSetInt(devTest, "lineNum", 1)
  	RuiSetFloat2(devTest, "msgPos", <0.825, 0.92, 0.0>)
  	RuiSetString(devTest, "msgText", "Titanfall 3 dev test")
  	RuiSetFloat(devTest, "msgFontSize", 25.0)
  	RuiSetFloat(devTest, "msgAlpha", 0.5)
  	RuiSetFloat(devTest, "thicken", 0.0)
 	RuiSetFloat3(devTest, "msgColor", <1.0, 1.0, 1.0>)
	
	while(mapName == GetMapName()){
		WaitFrame()
	}
	RuiDestroy(devTest)
}

#endif