-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
H = display.viewableContentHeight;
W = display.viewableContentWidth;


--  DEFAULT MODULES  --	
local physics = require("physics");
physics.start();
physics.setGravity(0,0.5);
--physics.setDrawMode ("hybrid");

--  CUSTOM MODULES  --
local rectangle=require("rectangle");

--  BODY  --
display.setStatusBar( display.HiddenStatusBar )

-- wallpaper --
local background = display.newImageRect( "img/back.png", W, H);
background.x = W/2;
background.y = H/2;

-- object creation --
local function spawnRactangle()
	local pravi=rectangle.new('purple');
end

tmr = timer.performWithDelay(math.random(2000,2500),spawnRactangle, -1);

