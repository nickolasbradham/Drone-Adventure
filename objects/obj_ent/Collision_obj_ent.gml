/// @description Push Away
if(other.layer == layer){
	var hvec = x - other.x, vvec = y - other.y, l = point_distance(x, y, other.x, other.y)
	hphys += hvec * col_mult / l
	vphys += vvec * col_mult / l
}