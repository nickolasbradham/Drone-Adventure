/// @description Push Away
if(other.layer == layer){
	var l = point_distance(x, y, other.x, other.y)
	hphys += (x - other.x) * col_mult / l
	vphys += (y - other.y) * col_mult / l
}