/// @description Set timer for bullet spawn.
// You can write your code in this editor

bullet_rate_multiplier = choose(2, 3, 4, 5, 6);
bullet_rate = 60 * bullet_rate_multiplier;
bullet_timer = 0;
killable = false;