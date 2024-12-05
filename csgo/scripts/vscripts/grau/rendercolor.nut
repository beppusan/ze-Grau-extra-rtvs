function SetBeamsColor(h, s, v)
{
	local r = 0
	local g = 0
	local b = 0
	local cl = null
	local ent = null

	if (s == 0.0)
		r = g = b = v
	else
	{
		local i = floor(h * 6.0)
		local f = h * 6.0 - i
		local p = v * (1.0 - s)
		local q = v * (1.0 - f * s)
		local t = v * (1.0 - (1.0 - f) * s)

		switch (i % 6)
		{
			case 0: r = v; g = t; b = p; break
			case 1: r = q; g = v; b = p; break
			case 2: r = p; g = v; b = t; break
			case 3: r = p; g = q; b = v; break
			case 4: r = t; g = p; b = v; break
			case 5: r = v; g = p; b = q; break
		}
	}

	r = floor(r * 255.0)
	g = floor(g * 255.0)
	b = floor(b * 255.0)
	cl = Vector(r, g, b)

	while ((ent = Entities.FindByName(ent, "st3_boss_a8_beam*")) != null)
		ent.__KeyValueFromVector("rendercolor", cl)

	while ((ent = Entities.FindByName(ent, "st3_boss_a6_beam*")) != null)
		ent.__KeyValueFromVector("rendercolor", cl)

	while ((ent = Entities.FindByName(ent, "st3_boss_a9_beam*")) != null)
		ent.__KeyValueFromVector("rendercolor", cl)

	while ((ent = Entities.FindByName(ent, "rtv_beam_1*")) != null)
		ent.__KeyValueFromVector("rendercolor", cl)
}