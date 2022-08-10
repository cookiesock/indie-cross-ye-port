import Math;
import openfl.filters.ShaderFilter;
import Conductor;

var brightFyreVal:Float = 0;
var brightMagnitude:Float = 0;
var brightSpeed:Float = 0;
var defaultBrightVal:Float = 0;

var brightShader:CustomShader;

// var test:FlxSprite;

function createPost() {
    brightShader = new CustomShader(Paths.shader("Bright"));
    PlayState.camHUD.setFilters([new ShaderFilter(brightShader)]);

    if (PlayState.song.song.toLowerCase() == 'devils-gambit') {
        defaultBrightVal = -0.05;
        brightSpeed = 0.2;
        brightMagnitude = 0.05;
    }

    // test = new FlxSprite(PlayState.camGame.x - ((PlayState.camGame.width * defaultCamZoom) / 2.42), PlayState.camGame.y - ((PlayState.camGame.height * defaultCamZoom) / 2.42)).makeGraphic(PlayState.camGame.width / defaultCamZoom, PlayState.camGame.height / defaultCamZoom, 0xFF000000);
    // test.scrollFactor.set();
    // test.blend = "add";
    // add(test);
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
}