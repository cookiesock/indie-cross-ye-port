function create() {
    var tex = Paths.getCharacter(textureOverride != "" ? textureOverride : mod + ":bfswag");
    character.frames = tex;
    
    character.animation.addByPrefix('idle', 'BF idle dance instance 1', 24, false);
    character.animation.addByPrefix('singUP', 'BF NOTE UP instance 1', 24, false);
    character.animation.addByPrefix('singLEFT', 'BF NOTE LEFT instance 1', 24, false);
    character.animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT instance 1', 24, false);
    character.animation.addByPrefix('singDOWN', 'BF NOTE DOWN instance 1', 24, false);
    character.animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS instance 1', 24, false);
    character.animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS instance 1', 24, false);
    character.animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS instance 1', 24, false);
    character.animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS instance 1', 24, false);
    character.animation.addByPrefix('attack', '0BF attack instance 1', 24, false);
    character.animation.addByPrefix('hurt', 'BF hit instance 1', 24, false);
    character.animation.addByPrefix('dodge', 'boyfriend dodge instance 1', 24, false);

    character.addOffset('idle', -4, 2);
    character.addOffset("singUP", -51, 55);
    character.addOffset("singRIGHT", -38, 1);
    character.addOffset("singLEFT", 24, 3);
    character.addOffset("singDOWN", -32, -35);
    character.addOffset("singUPmiss", -60, 17);
    character.addOffset("singRIGHTmiss", -60, 24);
    character.addOffset("singLEFTmiss", -27, 19);
    character.addOffset("singDOWNmiss", -37, -17);
    character.addOffset("attack", 1083, -7);
    character.addOffset("hurt", 42, 53);
    character.addOffset("dodge", -20, -7);

    character.playAnim('idle');

    character.flipX = true;
    
    character.x = 770;

    // if the stage is "field"
    character.x += 175;

    character.y = 450;

	var offsetX = 0;
	var offsetY = 0;
	var pXOff = 0;
    // this is temporary, check line 12280
    // update from sj: good enough
    character.camOffset.y = -25;
    character.camOffset.x = -500;

    character.addCameraOffset("singLEFT", -25, 0);
    character.addCameraOffset("singDOWN", 0, 25);
    character.addCameraOffset("singUP", 0, -25);
    character.addCameraOffset("singRIGHT", 25, 0);
}

function getColors(altAnim) {
    return [
        0xFF31B0D1,
        EngineSettings.arrowColor0,
        EngineSettings.arrowColor1,
        EngineSettings.arrowColor2,
        EngineSettings.arrowColor3
    ];
}