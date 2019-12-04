require 'Yut'

Player = Class{}

local moving_speed = 70

yut = Yut()
malsprite = love.graphics.newImage('graphics/Mal.png')
tiles={}
WHITE = love.graphics.newQuad(0,32,32,32,malsprite:getDimensions())
BLACK = love.graphics.newQuad(0,0,32,32,malsprite:getDimensions())


function Player:init(x, y, width, height)

    self.x = x
    self.y = y
    self.width = width
    self.height = height
    

    

end

function Player:update(i)

    m = i

    self.y = self.y - (100 * m)
    

end


function Player:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end