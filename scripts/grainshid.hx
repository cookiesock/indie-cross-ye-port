import openfl.filters.ShaderFilter;

function createPost() {
    var fgStatic = new FlxSprite();
    fgStatic.frames = Paths.getSparrowAtlas('cup/images/CUpheqdshid');
    fgStatic.animation.addByPrefix('play', 'Cupheadshit_gif instance 1', 24, true);
    fgStatic.animation.play('play', true);
    fgStatic.setGraphicSize(FlxG.width);
    fgStatic.updateHitbox();
    fgStatic.screenCenter();
    fgStatic.antialiasing = true;
    fgStatic.scrollFactor.set();
    fgStatic.cameras = [PlayState.camHUD];
    add(fgStatic);

    var fgGrain = new FlxSprite();
    fgGrain.frames = Paths.getSparrowAtlas('cup/images/Grainshit');
    fgGrain.animation.addByPrefix('play', 'Geain instance 1', 24, true);
    fgGrain.animation.play('play', true);
    fgGrain.setGraphicSize(FlxG.width);
    fgGrain.updateHitbox();
    fgGrain.screenCenter();
    fgGrain.antialiasing = true;
    fgGrain.scrollFactor.set();
    fgGrain.cameras = [PlayState.camHUD];
    add(fgGrain);

    var chromaticAberration:CustomShader = new CustomShader(Paths.shader("ChromaticAbberation"));
    FlxG.camera.setFilters([new ShaderFilter(chromaticAberration)]);

    if (PlayState.song.song.toLowerCase() == "snake-eyes") {
        chromaticAberration.shaderData.rOffset.value = [0.001];
        chromaticAberration.shaderData.gOffset.value = [0.0];
        chromaticAberration.shaderData.bOffset.value = [0.001 * -1];
    }
    if (PlayState.song.song.toLowerCase() == "devils-gambit") {
        chromaticAberration.shaderData.rOffset.value = [0.001];
        chromaticAberration.shaderData.gOffset.value = [0.0];
        chromaticAberration.shaderData.bOffset.value = [0.001 * -1];
    }
}

function updatePost(elapsed) {
    PlayState.notes.forEach(function(n) {
        n.splash = Paths.splashes('splashes');
    });
}