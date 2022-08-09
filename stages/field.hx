function create() {
    gf.visible = false;
    defaultCamZoom = 0.61;

    var bg:FlxSprite = new FlxSprite();
    if (PlayState.song.song.toLowerCase() == 'knockout') bg.loadGraphic(Paths.image('cup/images/angry/CH-RN-00'));
    else bg.loadGraphic(Paths.image('cup/images/BG-00'));
    bg.setGraphicSize(Std.int(bg.width * 0.7 * 4));
    bg.updateHitbox();
    bg.screenCenter();
    // bg.antialiasing = FlxG.save.data.highquality;
    bg.scrollFactor.set(0.2, 0.2);
    bg.active = false;
    add(bg);

    var trees:FlxSprite = new FlxSprite();
    if (PlayState.song.song.toLowerCase() == 'knockout') trees.loadGraphic(Paths.image('cup/images/angry/CH-RN-01'));
    else trees.loadGraphic(Paths.image('cup/images/BG-01'));
    trees.setGraphicSize(Std.int(trees.width * 0.7 * 4));
    trees.updateHitbox();
    trees.screenCenter();
    trees.x -= 75;
    trees.antialiasing = FlxG.save.data.highquality;
    trees.scrollFactor.set(0.45, 0.45);
    trees.active = false;
    add(trees);

    var fg:FlxSprite = new FlxSprite();
    if (PlayState.song.song.toLowerCase() == 'knockout') fg.loadGraphic(Paths.image('cup/images/angry/CH-RN-02'));
    else fg.loadGraphic(Paths.image('cup/images/Foreground'));
    fg.setGraphicSize(Std.int(fg.width * 0.9 * 4));
    fg.updateHitbox();
    fg.screenCenter();
    fg.x -= 100;
    fg.y -= 200;
    // fg.antialiasing = FlxG.save.data.highquality;
    fg.active = false;
    add(fg);

    if (PlayState.song.song.toLowerCase() != 'knockout') dad.y += 80;

    if (PlayState.song.song.toLowerCase() == 'knockout') {
        fgRain = new FlxSprite();
        fgRain.frames = Paths.getSparrowAtlas('cup/images/angry/NewRAINLayer01');
        fgRain.animation.addByPrefix('play', 'RainFirstlayer instance 1', 24, true);
        fgRain.animation.play('play', true);
        fgRain.setGraphicSize(FlxG.width);
        fgRain.updateHitbox();
        fgRain.screenCenter();
        // fgRain.antialiasing = FlxG.save.data.highquality;
        fgRain.scrollFactor.set();
        fgRain.cameras = [camHUD];
        add(fgRain);

        fgRain2 = new FlxSprite();
        fgRain2.frames = Paths.getSparrowAtlas('cup/images/angry/NewRainLayer02');
        fgRain2.animation.addByPrefix('play', 'RainFirstlayer instance 1', 24, true);
        fgRain2.animation.play('play', true);
        fgRain2.setGraphicSize(FlxG.width);
        fgRain2.updateHitbox();
        fgRain2.screenCenter();
        // fgRain2.antialiasing = FlxG.save.data.highquality;
        fgRain2.scrollFactor.set();
        fgRain2.cameras = [camHUD];
        add(fgRain2);
    }
}

// if (PlayState.song.song.toLowerCase() == 'knockout') {
//     daDad = 'angrycuphead';
//     daBF = 'rainbf';
// } else {
//     daBF = 'bfswag';
//     daDad = 'cuphead';
// }