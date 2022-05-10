# How to get  ꭙoverse ΔELTA ?

**THINGS TO KNOW FIRST**

Delta is made in and can **only** be ran using **lua**, this means that you need to know how to run lua into your game.

## Method 1 (RunString) **RECOMMENDED**

```lua
http.Fetch("https://raw.githubusercontent.com/Xoverse/DELTA/main/DeltaLoader.lua", function(b)
    RunString(b)
end)
```

## Method 2 (CompileString)

```lua
http.Fetch("https://raw.githubusercontent.com/Xoverse/DELTA/main/DeltaLoader.lua", function(b)
        local x = CompileString(b, "LuaCmd", false)
        
        if isfunction(x) then
            x()
	end
end)
```

## Method 3 **NOT RECOMMENDED**

1. Download [ΔELTA](https://github.com/Xoverse/DELTA/blob/main/ΔELTA.lua)
2. Place it in your scripts folder
3. Run it

