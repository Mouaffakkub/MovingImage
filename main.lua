-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Mouaffak Koubeisy
-- Created on: Mar 5 2018
-- This code makes an image scroll across the screen
-----------------------------------------------------------------------------------------
display.setStatusBar(display.HiddenStatusBar)

local scrollSpeeddog = 3
local scrollSpeedcat = 10

local backgroundImage = display.newImageRect("./assets/sprites/Desert.png", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "desert background image"

local dog = display.newImageRect("./assets/sprites/dogJump.png", 600, 600)
dog.x = 0
dog.y = display.contentHeight - 210
dog.ID = "dog"
local cat = display.newImageRect("./assets/sprites/catJump.png", 600, 600)
cat.x = 0
cat.y = display.contentHeight - 210
cat.ID = "cat"
local function MoveImage(event)
    dog.x = dog.x + scrollSpeeddog
    cat.x = cat.x + scrollSpeedcat
    print( display.fps )
end

Runtime:addEventListener("enterFrame", MoveImage)