#define shadowText
///shadowText(x, y, text, textcolor, shadowcolor, shadowdist, reset boolean)
//draw text with shadow and full vars
//store the argument in local variables
var textX = argument0,
    textY = argument1,
    text = argument2,
    tColor = argument3,
    sColor = argument4,
    sDist = argument5,
    reset = argument8;

//set the draw color to the shadow color
draw_set_colour(sColor)

//draw the shadow at the apropriate distance (it greatly varies depending on your game size ratio)
draw_text(textX + sDist, textY + sDist, text)

//set the text color
draw_set_colour(tColor)

//draw the actual text
draw_text(textX, textY, text)

//reset the aligment and color if the var is true
if reset {
    shadowTextReset()
}

#define shadowTextSimple
///shadowTextSimple(x, y, text)
//draw the text with the minimum var possible

var textX = argument0;
var textY = argument1;
var text = argument2;

shadowText(textX, textY, text, c_white, c_black, 1, false)

#define shadowTextColored
///shadowTextColored(x, y, text, color)
//draw the text only colored

var textX = argument0;
var textY = argument1;
var text = argument2;
var color = argument3;

shadowText(textX, textY, text, color, c_black, 1, false)

#define shadowTextReset
///shadowTextReset()
//reset the draw text variables
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_black)