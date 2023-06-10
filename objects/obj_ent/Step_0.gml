/// @description Physics

//Is control fighting movement?
var hfight = sign(hctrl) != sign(hspeed)
var vfight = sign(vctrl) != sign(vspeed)

//If so or not moving max speed, influence movement
var himp = hphys + (hfight || abs(hspeed) < max_ctrl ? hctrl * ctrl_mult : 0)
var vimp = vphys + (vfight || abs(vspeed) < max_ctrl ? vctrl * ctrl_mult : 0)

//Add impulses - drag
hspeed += himp - sign(hspeed) * drag
vspeed += vimp - sign(vspeed) * drag

hspeed = abs(hspeed) > 1 ? hspeed : 0
vspeed = abs(vspeed) > 1 ? vspeed : 0