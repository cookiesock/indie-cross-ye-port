function create() {
    var tex = Paths.getCharacter(textureOverride != "" ? textureOverride : mod + ":bf");
    character.frames = tex;
    character.animation.addByPrefix('idle', '0Idle', 24, false);
    character.animation.addByPrefix('singUP', '0UPPP', 24, false);
    character.animation.addByPrefix('singLEFT', '0EERR', 24, false);
    character.animation.addByPrefix('singRIGHT', '0EEEE', 24, false);
    character.animation.addByPrefix('singDOWN', '0Ouu', 24, false);
    character.animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
    character.animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
    character.animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
    character.animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
    character.animation.addByPrefix('attack', '0BF attack', 24, false);

    character.animation.addByPrefix('firstDeath', "BF dies", 24, false);
    character.animation.addByPrefix('deathLoop', "BF Dead Loop", 24, false);
    character.animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

    character.animation.addByPrefix('dodge', '0Dodge', 24, false);
    character.animation.addByPrefix('dodge2', '0Dodge02', 24, false);

    character.addOffset('idle', -5, 0);
    character.addOffset('singUP', -46, 36);
    character.addOffset('singRIGHT', -37, -7);
    character.addOffset('singLEFT', 0, -10);
    character.addOffset('singDOWN', -13, -57);
    character.addOffset('singUPmiss', -53, 24);
    character.addOffset('singRIGHTmiss', -53, 15);
    character.addOffset('singLEFTmiss', -10, 13);
    character.addOffset('singDOWNmiss', -25, -25);
    character.addOffset('attack', 944, -15);
    character.addOffset('firstDeath', 11, 4);
    character.addOffset('deathLoop', 11, -2);
    character.addOffset('deathConfirm', 11, 61);
    character.addOffset('dodge', 54, -15);
    character.addOffset('dodge2', -9, -18);

    character.playAnim('idle');

    character.flipX = true;
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