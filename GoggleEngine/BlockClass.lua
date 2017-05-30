local _Block = {}

function _Block:new(IsActive,x,y,z,blocktype)
	self.IsActive = IsActive
	self.x = x
	self.y = y
	self.z = z
	self.blocktype = "grass"
	return self
end

function _Block:draw(wx,wy)
	local sx1 = (self.x-1)/(self.z-1) + (wx/2)
	local sy1 = (self.y-1)/(self.z-1) + (wy/2)
	
	local sx2 = (self.x+1)/(self.z-1) + (wx/2)
	local sy2 = (self.y-1)/(self.z-1) + (wy/2)
	
	local sx3 = (self.x+1)/(self.z-1) + (wx/2)
	local sy3 = (self.y+1)/(self.z-1) + (wy/2)
	
	local sx4 = (self.x-1)/(self.z-1) + (wx/2)
	local sy4 = (self.y+1)/(self.z-1) + (wy/2)
	
	local sx5 = (self.x-1)/(self.z+1) + (wx/2)
	local sy5 = (self.y-1)/(self.z+1) + (wy/2)
	
	local sx6 = (self.x+1)/(self.z+1) + (wx/2)
	local sy6 = (self.y-1)/(self.z+1) + (wy/2)
	
	local sx7 = (self.x+1)/(self.z+1) + (wx/2)
	local sy7 = (self.y+1)/(self.z+1) + (wy/2)
	
	local sx8 = (self.x-1)/(self.z+1) + (wx/2)
	local sy8 = (self.y+1)/(self.z+1) + (wy/2)
	
	local face1 = {sx1,sy1,sx2,sy2,sx3,sy3,sx4,sy4,self.x,self.y,self.z-1}
	local face2 = {sx5,sy5,sx6,sy6,sx7,sy7,sx8,sy8,self.x,self.y,self.z+1}
	local face3 = {
end

return _Block