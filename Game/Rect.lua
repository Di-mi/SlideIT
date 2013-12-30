-- Rect.lua


local r={}

r.boja= function()
	print("blabla")
end

 local new = function()

	local rec1= display.newImage('Images/prvi.png');
	rec1.anchorX = 0; rec1.anchorY = rec1.height / 2; 
	rec1.x = 50; rec1.y = 50;
	return rec1;
end
r.new=new;	
return r;