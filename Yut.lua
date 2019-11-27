Yut = Class{}

yut1 = 0
yut2 = 0
yut3 = 0
yut4 = 0

spritesheet = love.graphics.newImage('graphics/Yut.png')
tiles={}
FRONT = love.graphics.newQuad(0,0,64,64,spritesheet:getDimensions())
BACK = love.graphics.newQuad(64,0,64,64,spritesheet:getDimensions())
BACKDO = love.graphics.newQuad(0,64,64,64,spritesheet:getDimensions())

function Yut:mix()
    yut1 = math.random(2) - 1
    yut2 = math.random(2) - 1
    yut3 = math.random(2) - 1
    yut4 = math.random(2) - 1

    --love.graphics.printf(yut1, 200, VIRTUAL_HEIGHT / 2 - 60 , VIRTUAL_WIDTH, 'center')
    --love.graphics.printf(yut2, 250, VIRTUAL_HEIGHT / 2 - 60 , VIRTUAL_WIDTH, 'center')
    --love.graphics.printf(yut3, 300, VIRTUAL_HEIGHT / 2 - 60 , VIRTUAL_WIDTH, 'center')
    --love.graphics.printf(yut4, 350, VIRTUAL_HEIGHT / 2 - 60 , VIRTUAL_WIDTH, 'center')

    if yut1 == 0 then
        love.graphics.draw(spritesheet, FRONT, 650, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACKDO,650, VIRTUAL_HEIGHT / 2 - 100)
    end

    if yut2 == 0 then
        love.graphics.draw(spritesheet, FRONT,700, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,700, VIRTUAL_HEIGHT / 2 - 100)
    end

    if yut3 == 0 then
        love.graphics.draw(spritesheet, FRONT,750, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,750, VIRTUAL_HEIGHT / 2 - 100)
    end

    if yut4 == 0 then
        love.graphics.draw(spritesheet, FRONT,800, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,800, VIRTUAL_HEIGHT / 2 - 100)
    end

    result = yut1 + yut2 + yut3 + yut4

end


function Yut:render()

    if yut1 == 0 then
        love.graphics.draw(spritesheet, FRONT, 650, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACKDO,650, VIRTUAL_HEIGHT / 2 - 100)
    end

    if yut2 == 0 then
        love.graphics.draw(spritesheet, FRONT,700, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,700, VIRTUAL_HEIGHT / 2 - 100)
    end

    if yut3 == 0 then
        love.graphics.draw(spritesheet, FRONT,750, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,750, VIRTUAL_HEIGHT / 2 - 100)
    end

    if yut4 == 0 then
        love.graphics.draw(spritesheet, FRONT,800, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,800, VIRTUAL_HEIGHT / 2 - 100)
    end


    if result == 1 then
        if yut1 == 1 then
            love.graphics.printf('Back Do', 300, VIRTUAL_HEIGHT / 2 - 16 , VIRTUAL_WIDTH, 'center')
        else
            love.graphics.printf('Do', 300, VIRTUAL_HEIGHT / 2 - 16 , VIRTUAL_WIDTH, 'center')
        end
    end

    if result == 2 then
        
        love.graphics.printf('Gae', 300, VIRTUAL_HEIGHT / 2 - 16, VIRTUAL_WIDTH, 'center')
        
    end

    if result == 3 then
        
        love.graphics.printf('Gul', 300, VIRTUAL_HEIGHT / 2 - 16 , VIRTUAL_WIDTH, 'center')
        
    end

    if result == 4 then
        love.graphics.printf('Yut!', 300, VIRTUAL_HEIGHT / 2 - 16 , VIRTUAL_WIDTH, 'center')
    end

    if result == 0 then
        love.graphics.printf('Mo!', 300, VIRTUAL_HEIGHT / 2 - 16 , VIRTUAL_WIDTH, 'center')
    end

end