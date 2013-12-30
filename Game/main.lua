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

--  BODY  --

-- object creation --
local function spawnRactangle()
	local rec=rectangle.new('purple');
end

tmr = timer.performWithDelay(math.random(2000,2500),spawnRactangle, -1);

