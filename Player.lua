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
    self.dy = 100
end

function Player:move()


    self.y = self.dy * yut.result

    

end



function Player:at_corner()

    if self.x == 50 and self.y == 50 then
        return true
    elseif self.x == 550 and self.y == 50 then
        return true
    elseif self.x == 300 and self.y == 300 then
        return true
    else
        return false
    end

end

function Player:catch()
    if gameState == 'player1ready' then
        if white1.x == black1.x and white1.y == black1.y or white2.x == black1.x and white2.y == black1.y or
        white3.x == black1.x and white3.y == black1.y or white4.x == black1.x and white4.y == black1.y then
            black1.x = P1_DEFAULT
            black1.y = BLACKHEIGHT_DEFAULT
            return true
        elseif white1.x == black2.x and white1.y == black2.y or white2.x == black2.x and white2.y == black2.y or
        white2.x == black2.x and white3.y == black2.y or white4.x == black2.x and white4.y == black2.y then
            black2.x = P2_DEFAULT
            black2.y = BLACKHEIGHT_DEFAULT
            return true
        elseif white1.x == black3.x and white1.y == black3.y or white2.x == black3.x and white2.y == black3.y or
        white3.x == black3.x and white3.y == black3.y or white4.x == black4.x and white4.y == black4.y then
            black3.x = P3_DEFAULT
            black3.y = BLACKHEIGHT_DEFAULT
            return true
        elseif white1.x == black4.x and white1.y == black4.y or white2.x == black4.x and white2.y == black4.y or
        white3.x == black4.x and white3.y == black4.y or white4.x == black4.x and white4.y == black4.y then
            black4.x = P4_DEFAULT
            black4.y = BLACKHEIGHT_DEFAULT
            return true
        else
            return false
        end
    elseif gameState == 'player2ready' then
        if black1.x == white1.x and black1.x == white1.y or black2.x == white1.y and black2.y == white1.y or
        black3.x == white1.x and black3.y == white1.y or black4.x == white1.x and black4.y == white1.y then
            white1.x = P1_DEFAULT
            white1.y = WHITEHEIGHT_DEFAULT
            return true
        elseif black1.x == white2.x and black1.x == white2.y or black2.x == white2.y and black2.y == white2.y or
        black3.x == white2.x and black3.y == white2.y or black4.x == white2.x and black4.y == white2.y then
            white2.x = P2_DEFAULT
            white2.y = WHITEHEIGHT_DEFAULT
            return true
        elseif black1.x == white3.x and black1.x == white3.y or black2.x == white3.y and black2.y == white3.y or
        black3.x == white3.x and black3.y == white3.y or black4.x == white3.x and black4.y == white3.y then
            white3.x = P3_DEFAULT
            white3.y = WHITEHEIGHT_DEFAULT
            return true
        elseif black1.x == white4.x and black1.x == white4.y or black2.x == white4.y and black2.y == white4.y or
        black3.x == white4.x and black3.y == white4.y or black4.x == white4.x and black4.y == white4.y then
            white4.x = P4_DEFAULT
            white4.y = WHITEHEIGHT_DEFAULT
            return true
        else
            return false
        end
    end

end

function Player:carry()
    if gameState == 'player1ready' then
        if white1.x == white4.x and white1.y == white4.y or white2.x == white4.x and white2.y == white4.y or
        white3.x == white4.x and white3.y == white4.y then
            w4state = 'carry'
        elseif white1.x == white3.x and white1.y == white3.y or white2.x == white3.x and white2.y == white3.y then
            w3state = 'carry'
        elseif white1.x == white2.x and white1.y == white2.y then
            w2state = 'carry'
        end
    elseif gameState == 'player2ready' then
        if black1.x == black4.x and black1.y == black4.y or black2.x == black4.x and black2.y == black4.y or
        black3.x == black4.x and black3.y  == black4.y then
            b4state =  'carry'
        elseif black1.x == black3.x and black1.y == black3.y or black2.x == black3.x and black2.y == black3.y then
            b3state =  'carry'
        elseif black1.x == black2.x and black1.y == black2.y then
            b2state =  'carry'
        end
    end
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