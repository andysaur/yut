Class = require 'class'
push = require 'push'

require 'Board'
require 'Player'
require 'Yut'

VIRTUAL_WIDTH = 900
VIRTUAL_HEIGHT = 600

-- actual window resolution
WINDOW_WIDTH = 1080
WINDOW_HEIGHT = 720


-- makes upscaling look pixel-y instead of blurry
love.graphics.setDefaultFilter('nearest', 'nearest')

-- an object to contain our board data
board = Board()

-- setting up the fonts
small_font = love.graphics.newFont('fonts/font.ttf', 8)
mid_font = love.graphics.newFont('fonts/font.ttf', 16)
big_font = love.graphics.newFont('fonts/font.ttf', 50)

-- performs initialization of all objects and data needed by program
function love.load()


    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true,
        vsync = true
    })

    love.window.setTitle('Game of YUT')

    player1_1 = Player(525, 525, 50, 50)

    gameState = 'start'

    
end

-- called whenever window is resized
function love.resize(w, h)
    push:resize(w, h)
end


function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    elseif key == 'enter' or key == 'return' then
        if gameState == 'start' then
            gameState = 'play'
        elseif gameState == 'play' then
            gameState = 'start'
        end
    end
end

-- global key pressed function
function love.keyboard.wasPressed(key)
    if (love.keyboard.keysPressed[key]) then
        return true
    else
        return false
    end
end

-- global key released function
function love.keyboard.wasReleased(key)
    if (love.keyboard.keysReleased[key]) then
        return true
    else
        return false
    end
end


-- called whenever a key is released
function love.keyreleased(key)
    love.keyboard.keysReleased[key] = true
end



-- called every frame, with dt passed in as delta in time since last frame
function love.update(dt)
    love.keyboard.keysPressed = {}
    love.keyboard.keysReleased = {}
end

local i = 0
-- called each frame, used to render to the screen
function love.draw()
    -- begin virtual resolution drawing
    push:apply('start')

    -- clear screen using Mario background blue
    love.graphics.clear(108/255, 140/255, 255/255, 255/255)

    player1_1:render()

    love.graphics.setFont(mid_font)

    love.graphics.printf('Hold Space to Mix', 300, 100 , VIRTUAL_WIDTH, 'center')
    
    local c = 0
    
    love.graphics.setFont(big_font)
    Board:render()

    if love.keyboard.isDown('space') then
        i = Yut:mix()
    else
        c = 1
    end

    if c == 1 then
        Yut:render()
    end


    -- end virtual resolution
    push:apply('end')
end