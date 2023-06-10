/// @description Physics

//If so or not moving max speed, influence movement
var himp = hphys + hctrl * ctrl_mult
var vimp = vphys + vctrl * ctrl_mult

hspeed += himp - sign(hspeed) * drag
vspeed += vimp - sign(vspeed) * drag

var zero = sqrt(hspeed * hspeed + vspeed * vspeed) < drag && himp == 0 && vimp == 0
hspeed = zero ? 0 : hspeed
vspeed = zero ? 0 : vspeed

hphys = 0
vphys = 0
hctrl = 0
vctrl = 0