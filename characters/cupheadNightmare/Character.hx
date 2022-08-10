function create() {
    character.frames = Paths.getCharacter(character.curCharacter);
    character.animation.addByPrefix('idle', 'Idle instance 1', 24, true);
    character.animation.addByPrefix('singUP', 'Up instance 1', 24);
    character.animation.addByPrefix('singRIGHT', 'Right instance 1', 24);
    character.animation.addByPrefix('singDOWN', 'Down  instance 1', 24);
    character.animation.addByPrefix('singLEFT', 'Left instance 1', 24);
    character.animation.addByPrefix('attack1', 'Beamm instance 1', 24);
    character.animation.addByPrefix('attack2', 'ShootDown instance 1', 24, false);
    character.animation.addByPrefix('attackEnd', 'Dodgez instance 1', 24);
    character.animation.addByPrefix('singDOWN-alt', 'ShootDown instance 1', 24);
    character.animation.addByPrefix('singUP-alt', 'ShootUp instance 1', 24);
    character.animation.addByPrefix('singRIGHT-alt', 'ShootRight instance 1', 24);
    character.animation.addByPrefix('singLEFT-alt', 'ShootLeft instance 1', 24);
    character.animation.addByPrefix('hit', 'Dodgez instance 1', 24, false);

    character.addOffset('idle', 0, -76);
    character.addOffset('singUP', 118, 26);
    character.addOffset('singRIGHT', 29, -125);
    character.addOffset('singLEFT', 180, -176);
    character.addOffset('singDOWN', 22, -149);
    character.addOffset('attack1', -16, -308);
    character.addOffset('attack2', 52, -148);
    character.addOffset('attackEnd', 75, -179);
    character.addOffset('singUP-alt', 109, -94);
    character.addOffset('singRIGHT-alt', 9, -135);
    character.addOffset('singLEFT-alt', 121, -196);
    character.addOffset('singDOWN-alt', 51, -149);
    character.addOffset('hit', 77, -178);

    character.scale.x = 1.25;
    character.scale.y = 1.25;
    character.y += 300;

    character.camOffset.y = 250;
    character.camOffset.x = -50;

    character.playAnim('idle');

    character.addCameraOffset("singLEFT", -25, 0);
    character.addCameraOffset("singDOWN", 0, 25);
    character.addCameraOffset("singUP", 0, -25);
    character.addCameraOffset("singRIGHT", 25, 0);
}