-- rectangle.lua


local r={}

local new = function()

	local rec= display.newImage('Images/prvi.png');
	rec.anchorX = 0; rec.anchorY = rec.height / 2; 
	rec.x = 50; rec.y = 50;
	return rec;
end

r.new=new;	

return r;