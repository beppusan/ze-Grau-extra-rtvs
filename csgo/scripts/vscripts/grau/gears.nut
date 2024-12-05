function SpawnMultipleGears(c)
{
	local ent = Entities.CreateByClassname("logic_case")
	EntFireByHandle(ent, "AddOutput", "OnCase01 rtv_rng_random_gear:RunScriptCode:SpawnGearByIndex(1):0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase02 rtv_rng_random_gear:RunScriptCode:SpawnGearByIndex(2):0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase03 rtv_rng_random_gear:RunScriptCode:SpawnGearByIndex(3):0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase04 rtv_rng_random_gear:RunScriptCode:SpawnGearByIndex(4):0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase05 rtv_rng_random_gear:RunScriptCode:SpawnGearByIndex(5):0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase06 rtv_rng_random_gear:RunScriptCode:SpawnGearByIndex(6):0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase07 rtv_rng_random_gear:RunScriptCode:SpawnGearByIndex(7):0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase08 rtv_rng_random_gear:RunScriptCode:SpawnGearByIndex(8):0:-1", 0.0, null, null)

	for (local i = 1; i <= c; i++)
		EntFireByHandle(ent, "PickRandomShuffle", "", 0.0, null, null)

	EntFireByHandle(ent, "Kill", "", 0.0, null, null)
}

function SpawnGearByIndex(i)
{
	local t = 2.0 * PI * rand() / RAND_MAX
	local r = 1080.0 * rand() / RAND_MAX + 120.0
	local pos = Vector(-5784.0 + r * cos(t), -10760.0 + r * sin(t), -9588.0)

	local w = 360.0 * rand() / RAND_MAX
	local ang = Vector(0.0, w, 0.0)

	local ent = Entities.FindByName(null, "st3_last_maker_gear" + i)
	ent.SpawnEntityAtLocation(pos, ang)
}