depth = -y * 2;

x_speed_ = 0;
y_speed_ = 0;
max_speed_ = 2;
acceleration_ = .5;

instance_create_layer(x, y, "Instances", oCamera);


sprite [RIGHT] = pSpriteZhara_WalkLeft32x32;
sprite [UP] = pSpriteZhara_WalkUp32x32;
sprite [LEFT] = pSpriteZhara_WalkRight32x32;
sprite [DOWN] = pSprite_Zhara_WalkDown32x32;


/*
sprite [RIGHT] = pSpriteGodhard_WalkRight64x64;
sprite [UP] = pSpriteGodhard_WalkUp64x64;
sprite [LEFT] = pSpriteGodhard_WalkLeft64x64;
sprite [DOWN] = pSpriteGodhard_WalkDown64x64;
*/
face = DOWN;
