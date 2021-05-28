TelepadA = script.Parent.TelepadA

local red  = BrickColor.Red()
local green = BrickColor.Green()
local gray = BrickColor.Gray()
local white = BrickColor.White()
local blue = BrickColor.Blue()
local black = BrickColor.Black()
local yellow = BrickColor.Yellow()
local darkgray = BrickColor.DarkGray()
----------------------------------------------------------------------------------------

TelepadA.Anchored = true
-----------------------------------------------------------------------------------------

--// Debounce/Cooldown
local debounce = false
local cool = 5 -- How long the debounce takes in between
------------------------------------------------------------------------------------------

--// PadA
TelepadA.Touched:connect(function(hit)
	
		
	if debounce == false then -- Debounce
		debounce = true
	end
	
	
	
	if hit.Parent:FindFirstChild('Humanoid') then
	   local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	   if hit.Parent.Humanoid.health > 0 then -- To make sure the player is not dead
		  if player ~= nil then -- To make sure its a player
			  hit.Parent.HumanoidRootPart.CFrame = CFrame.new(-876, 8.5, -3)
		  end
	   end
	end
	
	if hit.Parent.Humanoid.health > 0 then

	   TelepadA.Material = 'Neon'
	
	   print("The Color is Changing!")
	
	   TelepadA.BrickColor = red
	   wait(cool)
	   TelepadA.BrickColor = green
	   wait(cool)
	   TelepadA.BrickColor = gray
	   wait(cool)
	   TelepadA.BrickColor = white
	   wait(cool)
	   TelepadA.BrickColor = blue
       wait(cool)
       TelepadA.BrickColor = black
       wait(cool)
       TelepadA.BrickColor = yellow
       wait(cool)
       TelepadA.BrickColor = darkgray
       wait(cool)
    
       TelepadA.Material = 'Plastic'
    end
end)

wait(1)
