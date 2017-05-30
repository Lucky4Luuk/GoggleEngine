BlockClass = require("BlockClass")

CHUNK_SIZE = 16

local _Chunk = {}

function _Chunk:new(cx,cy,cz)
	_Chunk.cx = cx
	_Chunk.cy = cy
	_Chunk.cz = cz
	_Chunk.blocks = {}
	for x=1,CHUNK_SIZE do
		_Chunk.blocks[x] = {}
		for y=1,CHUNK_SIZE do
			_Chunk.blocks[x][y] = BlockClass:new(true,x,y,0,"grass")
		end
	end
	return _Chunk
end

function _Chunk.draw()
	
end

return _Chunk