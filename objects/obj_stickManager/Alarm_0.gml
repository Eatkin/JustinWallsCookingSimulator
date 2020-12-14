/// @description

var num=instance_number(obj_stick);

var _destroyList=ds_list_create();

for (var i=0; i<num; i+=1)	{
	var stickId=instance_find(obj_stick,i);
	var mapValue=ds_map_find_value(stickMap,stickId);
	if (is_undefined(mapValue))
		ds_map_set(stickMap,stickId,0);
	else if (mapValue==1)
		ds_list_add(_destroyList,stickId);
}

//Loop through the list and destroy stuff
var len=ds_list_size(_destroyList);
for (var i=0; i<len; i+=1)
	instance_destroy(ds_list_find_value(_destroyList,i));

ds_list_destroy(_destroyList);