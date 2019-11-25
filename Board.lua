Board = Class{}

function Board:init()

end


function Board:update()


end

function Board:render()
    love.graphics.rectangle('line', 50, 50, 500, 500)
    love.graphics.line(50,50,550,550)
    love.graphics.line(550,50,50,550)

    -- four corners
    love.graphics.circle('fill',50,50,20)
    love.graphics.circle('fill',550,50,20)
    love.graphics.circle('fill',50,550,20)
    love.graphics.circle('fill',550,550,20)

    -- dots on the rectangle
    love.graphics.circle('fill',150,50,10)
    love.graphics.circle('fill',250,50,10)
    love.graphics.circle('fill',350,50,10)
    love.graphics.circle('fill',450,50,10)

    love.graphics.circle('fill',150,550,10)
    love.graphics.circle('fill',250,550,10)
    love.graphics.circle('fill',350,550,10)
    love.graphics.circle('fill',450,550,10)

    love.graphics.circle('fill',50,150,10)
    love.graphics.circle('fill',50,250,10)
    love.graphics.circle('fill',50,350,10)
    love.graphics.circle('fill',50,450,10)

    love.graphics.circle('fill',550,150,10)
    love.graphics.circle('fill',550,250,10)
    love.graphics.circle('fill',550,350,10)
    love.graphics.circle('fill',550,450,10)

    -- dots on diagonals
    love.graphics.circle('fill',300,300,20)

    love.graphics.circle('fill',133,133,10)
    love.graphics.circle('fill',216,216,10)
    love.graphics.circle('fill',383,383,10)
    love.graphics.circle('fill',466,466,10)

    love.graphics.circle('fill',466,133,10)
    love.graphics.circle('fill',383,216,10)
    love.graphics.circle('fill',216,383,10)
    love.graphics.circle('fill',133,466,10)
    
    

end