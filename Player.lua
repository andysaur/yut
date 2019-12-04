require 'Yut'

Player = Class{}

local moving_speed = 70

yut = Yut()

malsprite = love.graphics.newImage('graphics/Mal.png')

tiles={}

WHITE = love.graphics.newQuad(0,32,32,32,malsprite:getDimensions())
BLACK = love.graphics.newQuad(0,0,32,32,malsprite:getDimensions())

function Player:init(x, y)

    self.x = x
    self.y = y

end

function Player:update(i)

    count = yut:mix()
    

    
    

end


function Player:render()
    love.graphics.draw(malsprite, WHITE, white1.x, white1.y)
    love.graphics.draw(malsprite, WHITE, white2.x, white2.y)
    love.graphics.draw(malsprite, WHITE, white3.x, white3.y)
    love.graphics.draw(malsprite, WHITE, white4.x, white4.y)

    love.graphics.draw(malsprite, BLACK, black1.x, black1.y)
    love.graphics.draw(malsprite, BLACK, black2.x, black2.y)
    love.graphics.draw(malsprite, BLACK, black3.x, black3.y)
    love.graphics.draw(malsprite, BLACK, black4.x, black4.y)
    
end

function Player:at_corner()


end

function Player:catch()
    
end

function Player:carry()

end
