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
	rec.x = math.random((rec.width + 10),W-10); rec.y = -10;
		
	-- Gravity --
	physics.addBody(rec,{density=math.random(-10,10)});


	-- Touch --
	function rec:touch(e)
		local tmp = e.target

		if (e.phase == "began") then

			physics.removeBody(self);

			tmp.x0 = e.x - tmp.x
			tmp.y0 = e.y - tmp.y
			
			display.getCurrentStage():setFocus(e.target, e.id);
		elseif (e.phase == "moved") then 

			transition.to(self,{x = e.x - tmp.x0, y = e.y - tmp.y0, time = 20});
		elseif (e.phase == "ended") then

			physics.addBody(self,"kinematic");

			display.getCurrentStage():setFocus(nil);
		end
	end

	rec:addEventListener("touch",rec);


	return rec;
end

r.new=new;	

return r;