repeat task.wait();
until game:IsLoaded()

task.wait(5);

local v8=1.25 + 0;

for v42=1,2 do
	local v43=0 -0 ;
	while true do
		if (v43==0) then
			print("\n\n\t\t\t\t API v"   .. v8   .. " made by DEVIX7\n" );
			warn("\n\n\t\t\t\t API v"   .. v8   .. " made by DEVIX7\n" );
			break;
		end
	end
end

local v9 = {};
local v10 = os.clock();
local v11 = game:WaitForChild("ReplicatedStorage"):WaitForChild("Remotes");
local v12=game:GetService("ProximityPromptService");
local v13=game:GetService("TeleportService");
local v14 = {9503261072,11730053939 -  -9712473 };
local v15 = false;
local v16 = (v15 and "http://192.168.88.100:9999") or "https://raw.githubusercontent.com/DEVIX7/X2botWJuv8stnFRnJTDGqoqtRN8gHtTDXStrat/master";
local v17=loadstring(game:HttpGet(v16   ..  "/reqs.lua"))();
local v18,v19,v20=v17();

if (tostring(v18)~=tostring(v8)) then
	local v86=753 -(239 + 514);
	local v87;
	while true do
		if ((0 + 0)==v86) then
			v87=0;
			while true do
				if (v87==0) then
					warn("Use last script version!", "Script stopped!", "\n\t\t\tMade by DEVIX7");
					warn("Current V".. v8 ,"Last V"..v18 );
					v87=1;
				end 
				if (v87==(1330 -(797 + 532))) then
					return false;
				end
			end
			break;
		end
	end
end

print("branch :",v20);
getgenv().API = v9;
getgenv().API.IsLoaded = false;

task.spawn(function()
	local v44=0 + 0 ;
	while true do
		if (v44==(0 + 0)) then
			v10=os.clock();
			repeat task.wait();
			until getgenv().API.IsLoaded v44=2 -1 ;
		end
		if (v44==(1203 -(373 + 829))) then
			print("API Loaded:",os.clock() -v10 );
			break;
		end
	end
end);
local function v23(v45)
	if  not isfolder(v45) then
		local v88=731 -(476 + 255) ;
		while true do
			if (v88==(1130 -(369 + 761))) then
				makefolder(v45);
				print("Make Folder:",v45);

				break;
			end
		end
	else
		print("...");
	end
end

local v24 = "DEVIX7/TDX Strat";
v23("DEVIX7");
v23(v24);

local function v25(v46)
	if (tostring(v46) == "true") then
		return true;
	elseif (tostring(v46) == "false") then
		return false;
	end
end

local function v26(v47)
	local v48=0 + 0 ;
	local v49;
	local v50;
	local v51;
	while true do
		if (v48 == 0) then
			if (type(v47)~= "string") then
				local v115 = 0;
				while true do
					if (v115 == 0) then
						local v126 = 0;
						while true do
							if (0 == v126) then
								local v132 = 0;
								while true do 
									if (v132 == 0) then
										warn("Invalid argument for parseVector3, expected string but got:",type(v47));
										return Vector3.new(0,336 -(144 + 192) ,216 -(42 + 174) );
									end
								end
							end
						end
					end
				end
			end
			v49, v50, v51 = v47:match("([^,]+),([^,]+),([^,]+)");
			v48=1;
		end
		if (v48==(1)) then
			return Vector3.new(tonumber(v49),tonumber(v50),tonumber(v51));
		end
	end
end
task.spawn(function()
	if (game.PlaceId == 9503261072) then
		local v89 = 0;
		local v90;
		while true do
			if (v89 == 0) then 
				v90 = game:GetService("ReplicatedStorage"):WaitForChild("Network");
				if (game:GetService("Players").LocalPlayer.PlayerGui.GUI.DailyRewards.Visible == true) then
					v90:WaitForChild("DailyRewardClaim"):InvokeServer();
				end
				break;
			end
		end
	end
end);

task.spawn(function()
	local v52 = 0;
	while true do
		if (0 == v52) then
			if (game.PlaceId == 11739766412) then
				local v116=0;
				local v117;
				
				while true do
					if (v116 == (1)) then
						if ((game:GetService("Workspace"):GetAttribute("PlayerCount") > 1) or (#game:GetService("Players"):GetChildren() > 1)) then
							local v130 = 0;
							while true do
								if (v130 == 0) then
									task.wait(3);
									v13:Teleport(9503261072,game:GetService("Players").LocalPlayer);
									break;
								end
							end
						end
						break;
					end
					if (v116 == 0) then
						v117=game:GetService("Players").LocalPlayer.PlayerGui.Interface.GameOverScreen;
						v117:GetPropertyChangedSignal("Visible"):Connect(function()
							if v117.Visible then
								local v133=0;
								while true do
									if (1 == v133) then
										if (getgenv().PrivateServer==true) then
											print("Rejoin to private server...");
											local v134 = WebSocket.connect("ws://localhost:8126");
											v134:Send("connect-to-vip-server");
											task.wait();
											v11:WaitForChild("RequestTeleportToLobby"):FireServer();
										else
											v11:WaitForChild("RequestTeleportToLobby"):FireServer();
										end
										break;
									end
									if (v133==0) then
										print("Game over");
										task.wait(3);
										v133=1;
									end
								end
							end
						end);
						v116 = 1;
					end
				end
			end
			if (game.PlaceId==(11739766412)) then
				local v118=0;
				while true do
					if (v118==(0 -0)) then
						if (getgenv().Debug==true) then
							print("Debug Index : ",tostring(getgenv().Debug));
							loadstring(game:HttpGet(v16.."/modules/debug.lua"))();
						end
						if (getgenv().AllowPowerUps==true) then
							print("Using Power-Up's:",getgenv().tostring(getgenv().AllowPowerUps));
						end
						break;
					end
				end
			end
			break;
		end
	end
end);

v9.map = function(v53,v54)
	if (game.PlaceId==9503261072) then
		local v91 = 0;
		local v92;
		local v93;
		local v94;
		while true do
			if ((1) == v91) then
				v94=nil;
				while true do
					if ((0)==v92) then
						getgenv().map=tostring(v54);
						print("Loading elevator module...");
						v92=1;
					end
					if (v92==(1)) then
						v93,v94=pcall(function()
							loadstring(game:HttpGet("https://raw.githubusercontent.com/LARTAJE/tx/main/Elevator.lua"))();
						end);
						if v93 then
							print("Elevator module loaded successfully.");
						else
							warn("Failed to load elevator module:",v94);
						end
						break;
					end
				end
				break;
			end
			if (v91==(0)) then
				v92 = 0;
				v93 = nil;
				v91 = 1;
			end
		end
	end
end;

v9.loadout = function(v55,v56)
	if (game.PlaceId==9503261072) then
		local v95=0;
		local v96;
		local v97;
		local v98;
		while true do
			if (v95==(1)) then
				v98={v97};
				if v96 then
					if v96:FindFirstChild("UpdateLoadout") then
						v96:WaitForChild("UpdateLoadout"):FireServer(unpack(v98));
					else
						warn("UpdateLoadout not found in Network");
					end
				else
					warn("Cannot update loadout: Network not available");
				end
				break;
			end
			
			if (v95 == (0)) then
				local v119=0;
				local v120;
				while true do
					if ((0 -0)==v119) then
						v120=0;
						while true do
							if (v120 == 0) then
								v96 = game:GetService("ReplicatedStorage"):WaitForChild("Network");
								v97=
									{[1] = v56[1] or "",
										[2] = v56[2] or "",
										[3] = v56[3] or "",
										[4] = v56[4] or "",
										[5] = v56[5] or "",
										[6] = v56[6] or ""
									};

								v120 = 1;
							end
							if (v120==(2 -1)) then
								v95=1 + 0 ;
								break;
							end
						end
						break;
					end
				end
			end
		end
	end
end;

local function CheckPlace()
	return game.PlaceId == 11739766412
end

v9.diff = function(v57,v58)
	if CheckPlace() then
		local v99=0;
		local v100;
		while true do
			if (v99==(1)) then
				v11:WaitForChild("DifficultyVoteCast"):FireServer(unpack(v100));
				print("Ready");
				v99 = 2;
			end
			if (v99==2) then
				v11:WaitForChild("DifficultyVoteReady"):FireServer();
				if (getgenv().SpeedUp==true) then
					local v124={true};
					print("Speed Up :",unpack(v124));
					v11:WaitForChild("ToggleSpeedupTier1"):FireServer(unpack(v124));
				end
				break;
			end
			if (v99==(0)) then
				v100={tostring(v58)};
				print("Setting difficulty : ",unpack(v100));
				v99 = 1;
			end
		end
	end
end;

v9.place = function(v59,v60,v61,v62,v63,v64)
	if CheckPlace() then
		local v101 = 0;
		local v102;
		while true do
			if (v101==(0 + 0)) then
				local v121= 0;
				while true do
					if (v121==(0)) then
						v102={tonumber(v60),tostring(v61), v26(v62),tonumber(v63)};
						if v64 then
							v102[5]= v26(v64);
						end
						v121 = 1;
					end
					if (v121==1) then
						v101 = 1;
						break;
					end
				end
			end
			if ((1)==v101) then
				print("Placing tower : ",tostring(v102[2]));
				v11:WaitForChild("PlaceTower"):InvokeServer(unpack(v102));
				break;
			end
		end
	end
end;

v9.update = function(v65,v66,v67)
	if CheckPlace() then
		local v103 = 0;
		local v104;
		while true do
			if (v103 ==1 ) then
				v11:WaitForChild("TowerUpgradeRequest"):FireServer(unpack(v104));
				break;
			end
			
			if (v103==(0)) then
				local v122 = 0;
				while true do
					if (v122 == 1) then
						v103 = 1;
						break;
					end
					if (v122 == (0)) then
						v104 = {tonumber(v66),tonumber(v67)};
						print("Updating tower : ",unpack(v104));
						v122 = 1;
					end
				end
			end
		end
	end
end;

v9.targettype = function(v68,v69,v70)
	if CheckPlace() then
		local v105={tonumber(v69),tonumber(v70)};
		print("Changing target type :",unpack(v105));
		v11:WaitForChild("ChangeQueryType"):FireServer(unpack(v105));
	end
end;

v9.sell = function(v71,v72)
	if CheckPlace() then
		local v106={tonumber(v72)};
		print("Selling tower : ",unpack(v106));
		v11:WaitForChild("SellTower"):FireServer(unpack(v106));
	end
end;

v9.useability = function(v73,v74,v75,v76,v77)
	if CheckPlace() then
		local v107 = 0;
		local v108;
		while true do
			if (v107==(0)) then
				v108={tonumber(v74),tonumber(v75)};

				if (v76 and (type(v76) == "string") and (v76 ~= "nil")) then
					v108[3]=v26(v76);
				elseif ( (v76 == "nil") and v77 and (type(v77) == "number")) then
					v108[4]=v77;
				end

				v107 = 1;
			end
			if (v107==1) then
				v11:WaitForChild("TowerUseAbilityRequest"):InvokeServer(unpack(v108));
				print("Using ability : ","N?A");
				break;
			end
		end
	end
end;

v9.retarget = function(v78,v79,v80)
	if CheckPlace() then
		local v109=0;
		local v110;
		while true do
			if (v109==(1)) then
				v11:WaitForChild("RetargetTower"):FireServer(unpack(v110));
				break;
			end
			
			if (v109==0) then
				local v123=0;
				
				while true do
					if (v123==(1 + 0)) then
						v109=1;
						break;
					end
					if (v123==(0 + 0)) then
						v110={tonumber(v79),v26(v80)};
						print("Retargeting tower : ",unpack(v110));
						v123=1;
					end
				end
				
			end
		end
	end
end;

v9.skip = function(v81,v82)
	if CheckPlace() then
		local v111=0;
		local v112 = {v25(v82)};
		print("Skipping wave : ", unpack(v112));
		v11:WaitForChild("SkipWaveVoteCast"):FireServer(unpack(v112));
	end
end;

v9.usepowerup = function(v83,v84)
	if CheckPlace() then
		
		if getgenv().AllowPowerUps==true then
			local v113 = 0;
			local v114;
			
			while true do
				
				if (v113 == 0) then
					v114={tostring(v84)};
					v11:WaitForChild("RequestUsePowerUp"):InvokeServer(unpack(v114));
					v113 = 1;
				end
				
				if (v113 == 1) then
					print("Using power-up:", unpack(v114));
					break
				end
				
			end
			
		else
			print("Skipped: Power Up don't used",tostring(v84),"!!!");
		end
		
	end
end;

getgenv().API.IsLoaded=true;
return v9;
