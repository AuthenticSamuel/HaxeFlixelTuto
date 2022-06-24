package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class MenuState extends FlxState
{
	var titleText:FlxText;
	var playButton:FlxButton;
	var optionsButton:FlxButton;

	override public function create()
	{
		titleText = new FlxText(20, 0, 0, "HaxeFlixel\nTurn-Based\nRPG\n", 22);
		titleText.alignment = CENTER;
		titleText.screenCenter(X);
		add(titleText);

		playButton = new FlxButton(0, 0, "Play", clickPlay);
		playButton.onUp.sound = FlxG.sound.load(AssetPaths.select__wav);
		playButton.x = (FlxG.width / 2) - playButton.width - 10;
		playButton.y = FlxG.height - playButton.height - 10;
		add(playButton);

		optionsButton = new FlxButton(0, 0, "Options", clickOptions);
		optionsButton.onUp.sound = FlxG.sound.load(AssetPaths.select__wav);
		optionsButton.x = (FlxG.width / 2) + 10;
		optionsButton.y = FlxG.height - optionsButton.height - 10;
		add(optionsButton);

		if (FlxG.sound.music == null)
		{
			FlxG.sound.playMusic(AssetPaths.music__ogg, 1, true);
		}

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	function clickPlay()
	{
		FlxG.switchState(new PlayState());
	}

	function clickOptions()
	{
		FlxG.switchState(new OptionsState());
	}
}
