function SpawnCircleAtRandomLocation()
{
	local r = 870.4 * rand() / RAND_MAX + 153.6
	local t = 2.0 * PI * rand() / RAND_MAX

	local pos = Vector(-5784.0 + r * cos(t), -10760.0 + r * sin(t), -11600.0)
	self.SpawnEntityAtLocation(pos, Vector(0.0, 0.0, 0.0))
}