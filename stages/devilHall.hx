function create() {
    defaultCamZoom = 0.45;
    curStage = 'devilHall';

    var bg:FlxSprite = new FlxSprite();
    if (PlayState.song.song.toLowerCase() == 'devils-gambit')
        bg.loadGraphic(Paths.image('cup/images/nightmarecupbg'));
    else
        bg.loadGraphic(Paths.image('bonusSongs/devil'));
    
    bg.setGraphicSize(Std.int(bg.width * 2));
    bg.updateHitbox();
    bg.screenCenter();
    bg.antialiasing = true;
    bg.scrollFactor.set(0.7, 0.7);
    add(bg);

    // cup = true;
    // specialIntro = true;

    // daBF = 'bfswag';
    // daDad = 'devilFull';

    if (PlayState.song.song.toLowerCase() == 'devils-gambit')
    {
        defaultCamZoom = 0.65;

        PlayState.boyfriend.y += 285;
        PlayState.boyfriend.x += 190;
        PlayState.dad.y += 50;
        PlayState.dad.x -= 200;

        var bgGlow:FlxSprite = new FlxSprite(dad.x - 460, dad.y - 370);
        bgGlow.frames = Paths.getSparrowAtlas('cup/images/NMClight');
        bgGlow.animation.addByPrefix('play', 'rgrrr instance 1', 30, true);
        bgGlow.animation.play('play', true);
        bgGlow.updateHitbox();
        bgGlow.antialiasing = true;
        bgGlow.scrollFactor.set(0.7, 0.7);
        add(bgGlow);
    }

    PlayState.boyfriend.scrollFactor.set(0.7, 0.7);
    PlayState.dad.scrollFactor.set(0.7, 0.7);
    PlayState.gf.visible = false;
}