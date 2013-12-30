-- rectangle.lua

local math = require ("math");

local r={}

local new = function(boja)
	
	local rec=nil;
	
	-- Type --
	if(boja=='red') then
		rec= display.newImage('Images/prvi.png');
	end
	if(boja=='purple') then
		rec= display.newImage('Images/drugi.png');
	end	

	-- Position --
	rec.anchorX = rec.width / 2; rec.anchorY = rec.height / 2; 
	rec.x = math.random((rec.width + 10),W-10); rec.y = -50;
		
	-- Gravity --
	physics.addBody(rec);

	return rec;
end

r.new=new;	

return r;