//Z Bounce Variables
zmod = 0;
zgrav = .2;
bounces = 3;

//Initial Z Bounce Velocity
zvelocity = random_range(-5,-7);

//Oscillating Effect Variables
oscillating = false;
t = 0;
increment = 6; 
amplitude = 10; 

yy = y;

speed     = 3 + random_range(-1, 2);
direction = random(360);