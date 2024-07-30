repeat task.wait();
until game:IsLoaded()

for v27 = 1,2 do
	print("\t\t --->\tmade by devix7\t<---");
	warn("\t\t --->\tmade by devix7\t<---");
end

local v10 = false;
local v11= (v10 and "http://192.168.88.100:9999") or "https://raw.githubusercontent.com/DEVIX7/X2botWJuv8stnFRnJTDGqoqtRN8gHtTDXStrat/master" ;
local v12 = "1.6";
local v13 = loadstring(game:HttpGet(v11.."/reqs.lua"))();
local v14, v15, v16 = v13();

if ((getgenv().StratName == false) or (getgenv().StratName == nil)) then
	print("Using default strat name");
	getgenv().StratName = "recorded_strat"..os.clock();
end

if ((getgenv().MapName == false) or (getgenv().MapName == nil)) then
	local v40 = 0;
	print("Input map name in `getgenv().MapName`");
	return false;
end

local v17=tostring(getgenv().StratName);
local v18={};

for v28,v29 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Interface.BottomBar.TowersBar:GetChildren()) do
	if ((v29.Name == "UIGridLayout") or (v29.Name == "TowerTemplate")) then
		print("N/A");
	else table.insert(v18,'\"'   .. tostring(v29.Name)   .. '\"' );print(v29.Name);
	end
end

getgenv().Loadout = table.concat(v18,",");
local v20 = "--"..v12..'\nlocal api = loadstring(game:HttpGet(\"https://raw.githubusercontent.com/DEVIX7/X2botWJuv8stnFRnJTDGqoqtRN8gHtTDXStrat/master/API/API.lua\", true))()\napi:loadout({'   .. getgenv().Loadout   .. '})\napi:map(\"'   .. getgenv().MapName   .. '\")\n' ;
writefile(v17.. ".txt",v20);
local v21 = tick();

local function v22()
	local v30 = 0;
	local v31 = 0;
	local v32 = 0;

	while true do

		if (v30 == 0) then
			local v41 = 0;

			while true do

				if (v41 == 1) then
					v30 = 1;
					break;
				end

				if (v41 == 0) then
					v31 = tick();
					v32 = v31 - v21;
					v41 = 1;
				end

			end

		end

		if (v30 == 1) then
			v21 = v31;
			return "task.wait("..string.format("%.2f",v32).. ")\n" ;
		end
	end
end

print("made by devix7","[RECORDER V".. v12.. "] Recording start...");

print("Strat name = "..v17);
print("Map name = "..getgenv().MapName);

local v23;
v23 = hookmetamethod(game,"__namecall",function(v33,...)
	local v34=0;
	local v35;
	local v36;

	while true do

		if (0 == v34) then
			v35 = {...};
			v36 = getnamecallmethod();
			v34 = 1;
		end

		if (v34 == 1) then
			if ((v36 == "InvokeServer") or (v36 == "FireServer")) then

				task.spawn(function()
					local v43=v33.Name;
					local v44={};

					for v46,v47 in pairs(v35) do
						if (type(v47)== "string") then
							v44[v46]='\"'..v47..'\"';
						elseif (typeof(v47)== "Vector3") then
							v44[v46]='\"'..string.format("%f,%f,%f",v47.X,v47.Y,v47.Z)..'\"';
						else
							v44[v46]=tostring(v47);
						end
					end

					for v48 = 1, #v35 do
						if  not v44[v48] then v44[v48]="'nil'";
						end
					end

					local v45="";

					if (v43 == "PlaceTower") then
						v45 = v45..v22();
						v45 = v45.."api:place("..table.concat(v44,",")..")\n";
					elseif (v43 == "DifficultyVoteCast") then
						v45 = v45.."api:diff(".. table.concat(v44,",").. ")\n";
					elseif (v43 == "UpdateLoadout") then
						v45 = v45..v22();
						v45 = v45.."api:loadout(".. table.concat(v44,",")..")\n";
					elseif (v43=="SellTower") then
						v45 = v45..v22();
						v45 = v45.."api:sell("..table.concat(v44,",")..")\n";
					elseif (v43 == "TowerUpgradeRequest") then
						v45 = v45.. v22();
						v45 = v45.."api:update("..table.concat(v44,",").. ")\n";
					elseif (v43 == "ChangeQueryType") then
						local v58=0;
						v45 = v45.. v22();
						v45 = v45.."api:targettype("..table.concat(v44,",")..")\n";
					elseif (v43 == "TowerUseAbilityRequest") then
						v45 = v45..v22();
						v45 = v45.."api:useability("..table.concat(v44,",")..")\n" ;
					elseif (v43 == "RetargetTower") then
						v45 = v45.. v22();
						v45 = v45.."api:retarget("..table.concat(v44,",")..")\n";
					elseif (v43=="SkipWaveVoteCast") then
						v45 = v45..v22();
						v45 = v45.."api:skip("..table.concat(v44,",")..")\n";
					elseif (v43=="RequestUsePowerUp") then
						v45 = v45..v22();
						v45 = v45.."api:usepowerup(".. table.concat(v44,",")..")\n" ;
					elseif (v43=="ToggleSpeedupTier1") then
						v45 = v45..v22();
						v45 = v45.."api:SpeedUp()";
					else
						v45 = nil;
					end

					if v45 then
						appendfile(v17..".txt", v45);
						print("[RECORDER V"..v12.."] Recorded Action:"..v43);
					else
						print("[RECORDER V".. v12.."] Skipped Action:"..v43);
					end

				end);
			end
			return v23(v33,...);
		end
	end
end);
