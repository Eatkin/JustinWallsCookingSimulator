/// @description

//Create the barrels
button=0;
for (var i=0; i<3; i+=1)
	for (var j=0; j<2; j+=1)
		button[i+3*j]=instance_create_layer(56+64*i,32+64*j,layer,obj_lockBarrel);
		
scr_addDialogue("Always forget this fucking number");