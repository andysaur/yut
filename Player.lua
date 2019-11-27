require 'Yut'

Player = Class{}

local moving_speed = 70

yut = Yut()

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