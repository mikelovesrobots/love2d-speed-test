function love.load()
  screen_width = 400 -- 8000
  screen_height = 400 -- 2000

  love.graphics.setMode(screen_width, screen_height, false, false, 0)
end

function love.draw()
  love.graphics.setBackgroundColor(255, 255, 255)
  love.graphics.setLine(2, "smooth")

  fps = love.timer.getFPS()
  love.graphics.setColor(0, 0, 0)
  love.graphics.print(fps, 0, 0)

  step = 7
  for x = 0, screen_width, step do
    for y = 15, screen_height, step do
       love.graphics.setColor(x % 255, y % 255, (x + y) % 255)
       love.graphics.line(x, y, x + 10, y + 10, x, y + 20, x - 10, y + 10, x, y)
    end
  end
end