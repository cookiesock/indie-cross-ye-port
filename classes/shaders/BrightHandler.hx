import flixel.FlxG;
import openfl.filters.ShaderFilter;

var brightShader:ShaderFilter = new ShaderFilter(new CustomShader(Paths.shader("Bright")));

function setBrightness(brightness:Float):Void
{
    brightShader.shader.data.brightness.value = [brightness];
}

function setContrast(contrast:Float):Void
{
    brightShader.shader.data.contrast.value = [contrast];
}