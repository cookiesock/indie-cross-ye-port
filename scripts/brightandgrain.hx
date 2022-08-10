import Math;
import openfl.filters.ShaderFilter;
import Conductor;
import flixel.math.FlxMath;

var brightFyreVal:Float = 0;
var brightMagnitude:Float = 0;
var brightSpeed:Float = 0;
var defaultBrightVal:Float = 0;

var brightShader:CustomShader;
var chromaticAberration:CustomShader;

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
    
    brightShader = new CustomShader(Paths.shader("Bright"));
    chromaticAberration = new CustomShader(Paths.shader("ChromaticAbberation"));
    FlxG.camera.setFilters([new ShaderFilter(chromaticAberration), new ShaderFilter(brightShader)]);
    PlayState.camHUD.setFilters([new ShaderFilter(chromaticAberration), new ShaderFilter(brightShader)]);

    if (PlayState.song.song.toLowerCase() == "snake-eyes") {
        chromaticAberration.shaderData.rOffset.value = [0.001];
        chromaticAberration.shaderData.gOffset.value = [0.0];
        chromaticAberration.shaderData.bOffset.value = [-0.001];
    }
    if (PlayState.song.song.toLowerCase() == "technicolor-tussle") {
        chromaticAberration.shaderData.rOffset.value = [0.001];
        chromaticAberration.shaderData.gOffset.value = [0.0];
        chromaticAberration.shaderData.bOffset.value = [-0.001];
    }
    if (PlayState.song.song.toLowerCase() == "knockout") {
        chromaticAberration.shaderData.rOffset.value = [0.001];
        chromaticAberration.shaderData.gOffset.value = [0.0];
        chromaticAberration.shaderData.bOffset.value = [-0.001];
        defaultBrightVal = -0.05;
        brightSpeed = 0.2;
        brightMagnitude = 0.05;
    }
    if (PlayState.song.song.toLowerCase() == "devils-gambit") {
        chromaticAberration.shaderData.rOffset.value = [0.001];
        chromaticAberration.shaderData.gOffset.value = [0.0];
        chromaticAberration.shaderData.bOffset.value = [-0.001];
        defaultBrightVal = -0.05;
        brightSpeed = 0.2;
        brightMagnitude = 0.05;
    }
}

function update(elapsed) {
    if (brightSpeed != 0)
    {
        brightFyreVal = defaultBrightVal + Math.sin((Conductor.songPosition / 1000) * (Conductor.bpm / 60) * brightSpeed) * brightMagnitude;
        brightShader.shaderData.brightness.value = [brightFyreVal];
    }
    else
    {
        brightShader.shaderData.brightness.value = [defaultBrightVal];
    }

    brightShader.shaderData.contrast.value = [1.0];

    if (PlayState.song.song.toLowerCase() == "devils-gambit") {
        if (chromaticAberration.shaderData.rOffset.value[0] > 0.001) {
            chromaticAberration.shaderData.rOffset.value[0] -= 0.1 * elapsed;
        }
        if (chromaticAberration.shaderData.bOffset.value[0] < -0.001) {
            chromaticAberration.shaderData.bOffset.value[0] -= -0.1 * elapsed;
        }
    }
}

function updatePost(elapsed) {
    PlayState.notes.forEach(function(n) {
        n.splash = Paths.splashes('splashes');
    });
}

function onDadHit(direction:Int) {
    if (PlayState.song.song.toLowerCase() == "devils-gambit") {
        chromaticAberration.shaderData.rOffset.value = [0.02];
        chromaticAberration.shaderData.bOffset.value = [-0.02];
        FlxG.camera.shake(0.01, 0.1);
        PlayState.camHUD.shake(0.01, 0.1);
        // note to self (sj): make chroma offset not vomit inducing
    }
}