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
physics.setGravity(0,3);

--  CUSTOM MODULES  --
local rectangle=require("rectangle");

--  Body  --
local function spawnRactangle()
	local rec=rectangle.new('purple');
end

tmr = timer.performWithDelay(math.random(500,2000),spawnRactangle, -1);

