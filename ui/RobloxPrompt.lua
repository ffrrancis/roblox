local ErrorPrompt = getrenv().require(game.CoreGui.RobloxGui.Modules.ErrorPrompt)
local prompt = ErrorPrompt.new("Default")

prompt._hideErrorCode = true

local gui = Instance.new("ScreenGui", game.CoreGui)

prompt:setParent(gui)
prompt:setErrorTitle("Title")

local blur = Instance.new("BlurEffect")
blur.Parent = game:GetService("Lighting")
blur.Size = 24

prompt:updateButtons({{
   Text = "Cancel",
   Callback = function() prompt:_close()
    blur:Destroy()
   end
},
{
   Text = "Confirm",
   Primary = true,
   Callback = function() prompt:_close()
    blur:Destroy()
   end,
}}, 'Default')

prompt:_open("Description")

