Yut = Class{}

yut1 = 1
yut2 = 1
yut3 = 0
yut4 = 0

count = 1

results = {}

for reset = 1, 9 do
    results[reset] = 0
end

results_font = love.graphics.newFont('fonts/font.ttf', 16)

spritesheet = love.graphics.newImage('graphics/Yut.png')
tiles = {}
FRONT = love.graphics.newQuad(0,0,64,64,spritesheet:getDimensions())
BACK = love.graphics.newQuad(64,0,64,64,spritesheet:getDimensions())


function Yut:mix()
    fake1 = math.random(2) - 1
    fake2 = math.random(2) - 1
    fake3 = math.random(2) - 1
    fake4 = math.random(2) - 1

    if fake1 == 0 then
        love.graphics.draw(spritesheet, FRONT, 650, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,650, VIRTUAL_HEIGHT / 2 - 100)
    end

    if fake2 == 0 then
        love.graphics.draw(spritesheet, FRONT,700, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,700, VIRTUAL_HEIGHT / 2 - 100)
    end

    if fake3 == 0 then
        love.graphics.draw(spritesheet, FRONT,750, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,750, VIRTUAL_HEIGHT / 2 - 100)
    end

    if fake4 == 0 then
        love.graphics.draw(spritesheet, FRONT,800, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,800, VIRTUAL_HEIGHT / 2 - 100)
    end
    --self.result = yut1 + yut2 + yut3 + yut4
end

function Yut:get_result()

    self.result = yut1 + yut2 + yut3 + yut4

    results[count] = self.result

    if Yut:again(self.result) == true then
        count = count + 1
    end
end

function Yut:again(result)
    if result == 4 or result == 0 then
        return true
    else
        return false
    end
end


function Yut:render()

    yut1 = math.random(2) - 1
    yut2 = math.random(2) - 1
    yut3 = math.random(2) - 1
    yut4 = math.random(2) - 1

    if yut1 == 0 then
        love.graphics.draw(spritesheet, FRONT, 650, VIRTUAL_HEIGHT / 2 - 100)
    else
        love.graphics.draw(spritesheet, BACK,650, VIRTUAL_HEIGHT / 2 - 100)
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

    result = yut1+yut2+yut3+yut4
    if result == 1 then
        love.graphics.printf('Do', 300, VIRTUAL_HEIGHT / 2 - 16 , VIRTUAL_WIDTH, 'center')
    end

    if result == 2 then
        
        love.graphics.printf('Gae', 300, VIRTUAL_HEIGHT / 2 - 16, VIRTUAL_WIDTH, 'center')
        
    end

    if result == 3 then
        
        love.graphics.printf('Gul', 300, VIRTUAL_HEIGHT / 2 - 16 , VIRTUAL_WIDTH, 'center')
        
    end

    if result == 4 then
        love.graphics.printf('Yut!', 300, VIRTUAL_HEIGHT / 2 - 16 , VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Throw Again', 300, VIRTUAL_HEIGHT / 2 + 25, VIRTUAL_WIDTH, 'center')
    end

    if result == 0 then
        love.graphics.printf('Mo!', 300, VIRTUAL_HEIGHT / 2 - 16 , VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Throw Again', 300, VIRTUAL_HEIGHT / 2 + 25, VIRTUAL_WIDTH, 'center')
    end


    love.graphics.setFont(results_font)
    love.graphics.printf('1: ', 450, 300 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(results[1], 470, 300 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf('2: ', 450, 320 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(results[2], 470, 320 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf('3: ', 450, 340 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(results[3], 470, 340 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf('4: ', 450, 360 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(results[4], 470, 360 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf('5: ', 450, 380 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(results[5], 470, 380 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf('6: ', 450, 400 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(results[6], 470, 400 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf('7: ', 450, 420 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(results[7], 470, 420 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf('8: ', 450, 440 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(results[8], 470, 440 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf('9: ', 450, 460 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(results[9], 470, 460 , VIRTUAL_WIDTH, 'center')
    love.graphics.printf(count, 470, 480 , VIRTUAL_WIDTH, 'center')
end
