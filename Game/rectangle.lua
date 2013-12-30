-- rectangle.lua


local r={}

local new = function(boja)
	
	local rec=nil;
	if(boja=='red') then
		rec= display.newImage('Images/prvi.png');
	end
	if(boja=='purple') then
		rec= display.newImage('Images/drugi.png');
	end	
	rec.anchorX = 0; rec.anchorY = rec.height / 2; 
	rec.x = 100; rec.y = 50;
	return rec;
end

r.new=new;	

return r;