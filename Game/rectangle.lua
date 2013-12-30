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
	physics.addBody(rec,{density=math.random(-10,10)});


	-- Touch --
	function rec:touch(e)
		if (e.phase == "began") then
			print("djoka");
		elseif (e.phase == "moved") then 
			print("djoka2");
		elseif (e.phase == "ended") then
			print("djoka3");
		end
	end

	rec:addEventListener("touch",rec);

	return rec;
end

r.new=new;	

return r;