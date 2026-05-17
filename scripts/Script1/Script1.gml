global.money = 1000;
global.year = 1836;
global.sc1 = noone;
global.sc2 = noone;
global.connections = [];
global.leaveAustria = false;
global.events = [
    {year: 1842, text: "The Zollverein expands! Trade income boosted.", effect: function() {
        global.income_multiplier = 1.3;
    }},
    {year: 1848, text: "Revolution sweeps Germany! Workers strike.", effect: function() {
        global.income_multiplier = 0.5;
    }},
    {year: 1850, text: "Order restored. Industry resumes.", effect: function() {
        global.income_multiplier = 1.0;
    }},
    {year: 1856, text: "Economic boom! Rail investment surges.", effect: function() {
        global.money += 500;
    }},
    {year: 1866, text: "Austro-Prussian War! Never again will Austria oppress the German People.", effect: function() {
        for (var i = 0; i < array_length(global.connections); i++) {
			if (global.connections[i].city_a.country == "Austria" || global.connections[i].city_b.country == "Austria"){
				array_delete(global.connections,i,1);
				i--;
			}
			
		}
		with(city){
			if (country == "Austria"){
				instance_destroy();
			}
		}
    }},
    {year: 1871, text: "Germany unified! The Reich is born.", effect: function() {
        instance_destroy(inst_59162F76);
    }}
];

global.income_multiplier = 1.0;
global.current_event_text = "";
global.event_timer = 0;

function checkEvents(){
	for (var i = 0; i < array_length(global.events); i++) {
        var e = global.events[i];
        if e.year == global.year {

            e.effect();

            global.current_event_text = e.text;
            global.event_timer = 60;
        }
    }


}