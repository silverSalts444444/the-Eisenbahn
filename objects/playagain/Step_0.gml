if (localtimer >= 0){
	localtimer--;
}
if (localtimer == 0){
	room_goto(Startscreene);
	global.money = 1000;
global.year = 1836;
global.sc1 = noone;
global.sc2 = noone;
global.connections = [];
global.leaveAustria = false;
}