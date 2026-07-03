# Class File Structure
```
imaginative /
	backend /
		events /
			EventHandler.hx
		input /
			Controls.hx
			MenuNavigator.hx
		macro /
			Macro.hx
		native /
			Native.hx
		scripting /
			types /
				HaxeScript.hx
				LuaScript.hx
			Script.hx
			ScriptGroup.hx
			ScriptInstance.hx (abstract)
			ScriptRetCall.hx (abstract)
		states /
			GameState.hx
			ModdedState.hx
			ScriptedState.hx
		systems /
			Assets.hx
			Conductor.hx
			Paths.hx
		utils /
			FileUtil.hx
			PathUtil.hx
			PlatformUtil.hx
	data /
		...
	gameplay /
		arrows /
			ArrowField.hx
			Note.hx
			Strum.hx
			Sustain.hx
		hud /
			engines /
				...
			BaseHUD.hx
			HUDType.hx (enum abstract)
			ModdedHUD.hx
			ScriptedHUD.hx
		Character.hx
		HealthBar.hx
		StageProp.hx
	sprites /
		BaseSprite.hx
		BeatSprite.hx
		MenuBGSprite.hx
	states /
		editors /
			...
		initial /
			LaunchScreen.hx
		menus /
			FreeplayMenu.hx
			StoryMenu.hx
		LoadingScreen.hx
		PlayState.hx
		TitleScreen.hx
		TransitionScreen.hx
	ui /
		BaseBar.hx
		HealthIcon.hx
		SpriteText.hx
Game.hx
```

# Assets/Mod File Structure
```
... /
	data /
		events /
			{...}.hx
			{...}.json
		levels /
			{...}.hx
			{...}.json
		scripts /
			states /
				{...}.hx
		songs /
			... /
				audio /
					{...}.ogg
				charts /
					{...}.json
				variants /
					... /
						...
				audio.json
				info.json
				song.json
		sprites /
			characters /
				{...}.json
			icons /
				{...}.json
			menus /
				... /
					{...}.json
			stages /
				... /
					{...}.json
	fonts /
		...
	images /
		characters /
			... /
				... /
					{...}.png
					{...}.xml
		credits /
			{...}.png
		gameplay /
			arrows /
				... /
					...
			countdowns /
				... /
					...
			popups /
				... /
					...
			stages /
				... /
					...
		menus /
			... /
				...
		stages /
			... /
				...
		ui /
			difficulties /
				...
			fonts /
				...
			icons /
				...
	music /
		... /
			audio.json
			end.ogg
			intro.ogg
			audio.ogg
	shaders /
		...
	sounds /
		gameover /
			...
		gameplay /
			...
		menus /
			...
		...
	videos /
		...
```