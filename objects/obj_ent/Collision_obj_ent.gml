/// @description Push Away
var hvec = x - other.x, vvec = y - other.y
hphys += hvec * col_mult / max(hvec, vvec)
vphys += vvec * col_mult / max(hvec, vvec)