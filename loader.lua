if not game:IsLoaded()then game.Loaded:Wait()end;do ("Hosted by Flow Enchantments. JNKIE Game Loader - Unauthorized tampering or debugging of protected scripts is strictly prohibited and may result in a global blacklist from JNKIE protected scripts."):sub(1,1);do local c={PlaceId=game.PlaceId,GameId=game.GameId,Key=getgenv().SCRIPT_KEY or SCRIPT_KEY};local a,r=pcall(function(...)
local ctx = ctx.PlaceId
local gtx = ctx.GameId
local ktx = ctx.Key
local Players = game:GetService("Players")
local player = Player.LocalPlayer

if ctx and gtx then
 print("Game Checked: True")
else
player:kick("Unsupported Game detected or  CTX/GTX FAILED. Error Code: 404 (Unsupported) or 204 (CTX/GTX Failed)")
end
end,c);if not a then warn(r)elseif r==false then return end end;local S,P,G={"ee7abee1d24a0017ecc25d37cb759b8082a2cdd6c1071c1ecdee39def84b5c17"},{[17625359962]=1},{[17625359962]=1};local i=P[game.PlaceId]or G[game.GameId];if not i then local h="This game is an unsupported game. See our supported games: .gg/M7g5GG5M29";warn(h);task.spawn(function()pcall(function()game:GetService("Players").LocalPlayer:Kick(h)end);task.wait();pcall(function()local p=game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt;p.TitleFrame.ErrorTitle.Text="Unsupported Game";p.MessageArea.ErrorFrame.ErrorMessage.Text=h end)end);return end;

local Sigil = loadstring(game:HttpGet("https://cdn.jnkie.com/SigilUI.lua"))()

Sigil.Appearance = {
    Title           = "Flow Enchantments - Free Build",
    Subtitle        = "Enter your given key or get a key from our discord",
    KeylessTitle    = "Flow Enchantments - Free Build",
    KeylessSubtitle = "No Key needed anymore! You are verified.",
    Icon = "", 
}

Sigil.Links.Discord = "discord.gg/M7g5GG5M29"
Sigil.Storage.FileName = "JnkieKeySystemFlow.envstorage"

Sigil.Shop = {
    Enabled = true,
    Icon = "",
    Title = "Get Premium",
    Subtitle = "Best Script, better with premium • 24/7 support",
    ButtonText = "Buy",
    Link = "enchantmentsfe.sell.app"
}


Sigil:LaunchJunkie({
    Service = "FE Enchantments",
    Identifier = "1228513",
    Provider = "Flow Enchantments"
})
do local k=getgenv().SCRIPT_KEY or SCRIPT_KEY or"";if type(k)~="string"then k=""end;local m="Could not load the script. Check your internet connection and try again later.";local function v(h)warn(h);task.spawn(function()pcall(function()game:GetService("Players").LocalPlayer:Kick(h)end);task.wait();pcall(function()local p=game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt;p.TitleFrame.ErrorTitle.Text="JNKIE";p.MessageArea.ErrorFrame.ErrorMessage.Text=h end)end)end;local r=(type(syn)=="table"and type(syn.request)=="function"and syn.request)or(type(request)=="function"and request)or(type(http_request)=="function"and http_request)or(type(http)=="table"and type(http.request)=="function"and http.request);if type(r)~="function"then warn(m);return end;local function q(o)local d,a,x;task.spawn(function()a,x=pcall(r,o);d=true end);local s=os.clock();repeat task.wait()until d or os.clock()-s>15;if not d then return false,nil end;return a,x end;local a,x=q({Url="https://api.jnkie.com/api/v1/luascripts/delivery/"..S[i].."?v=2&errors=text",Method="POST",Headers={["Content-Type"]="text/plain"},Body=k});local h=a and type(x)=="table"and type(x.Body)=="string"and(x.StatusCode==400 or x.StatusCode==401 or x.StatusCode==403)and x.Body;if h then local c,n=h:match("^([^\r\n]+)\n([^\r\n]+)$");c=c or h;if#c<=75 and(c=="LDR-DENIED"or c:match("^LDR%-DENIED:[A-Z_]+$"))then if not n or#n>512 then n=m;if k==""or k:match("^%s*$")then n="No key provided. Get a key from the script provider, enter it, then try again." end end;v(n.." ("..c..")");return end end;if not a or type(x)~="table"or x.StatusCode~=200 or type(x.Body)~="string"then warn(m);return end;if not (string.sub(x.Body,1,8)=="https://")then warn(m);return end;a,x=q({Url=x.Body,Method="GET"});if not a or type(x)~="table"or x.StatusCode~=200 or type(x.Body)~="string"or#x.Body==0 then warn(m);return end;local b=x.Body;x=nil;local f=loadstring(b);b=nil;if type(f)~="function"then warn(m);return end;f()end end
