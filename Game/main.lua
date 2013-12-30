-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
H = display.viewableContentHeight;
W = display.viewableContentWidth;

local physics = require("physics");

local rec1= display.newImage('Images/prvi.png');
rec1.anchorX = 0; rec1.anchorY = rec1.height / 2; 
rec1.x = 50; rec1.y = 50;

local rec2= display.newImage('Images/drugi.png');
rec2.anchorX = 0; rec2.anchorY = rec2.height / 2; 
rec2.x = W - 50; rec2.y = 50;