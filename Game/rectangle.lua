-- rectangle.lua

local math = require ("math");

local r={}

local new = function(boja)
	
	local rec=nil;
	
	-- Type --
	if(boja=='red') then
		rec= display.newImage('img/prvi.png');
	end
	if(boja=='purple') then
		rec= display.newImage('img/drugi.png');
	end	

	-- Position --
	rec.anchorX = rec.width / 2; rec.anchorY = rec.height / 2; 
	rec.x = math.random((rec.width + 10),W-10); rec.y = -60;
		
	-- Gravity --
	physics.addBody(rec,{density=math.random(-20,20)});

	return rec;
end

r.new=new;	

return r;