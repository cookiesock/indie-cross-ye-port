var chromaticAberration:ShaderFilter = new ShaderFilter(new CustomShader(Paths.shader("ChromaticAbberation")));

function setChrome(chromeOffset:Float):Void
{
    chromaticAberration.shader.data.rOffset.value = [chromeOffset];
    chromaticAberration.shader.data.gOffset.value = [0.0];
    chromaticAberration.shader.data.bOffset.value = [chromeOffset * -1];
}