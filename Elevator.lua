--elevator joiner
local v0=string.char;
local v1=string.byte;
local v2=string.sub;
local v3=bit32
local v4=v3.bxor;
local v5=table.concat;
local v6=table.insert;

local function v7(v19,v20)
	local v21={};
	for v24=1, #v19 do v6(v21,v0(v4(v1(v2(v19,v24,v24 + 1 )),v1(v2(v20,1 + (v24% #v20) ,1 + (v24% #v20) + 1 )))%256 ));
	end
	return v5(v21);
end

print("elevator joiner v1.2");

local v8 = "made by devix7";
local v9 = game:GetService("Workspace"):FindFirstChild("APCs2");
local v10 = game:GetService("Workspace"):FindFirstChild("APCs");
local v11 = game:GetService("Workspace"):FindFirstChild("Helis");
local v12 = game:GetService("Players").LocalPlayer;
local v13 = v12.Character or v12.CharacterAdded:Wait();
local v14 = v13:WaitForChild("Humanoid");
local v15 = getgenv().map;
getgenv().apc=nil;
getgenv().reached=nil;

local function v18()
	while not getgenv().apc do
		print("Searching for APC...");
		local v25={v10,v9,v11};
		for v26,v27 in ipairs(v25) do
			if v27 then
				for v28,v29 in pairs(v27:GetChildren()) do
					if ((v29:GetAttribute("MapName") == v15) and (v29:GetAttribute("ActivePlayers")== 0)) then
	local v30= "Unknown";

	if (v27==v10) then
		v30="LVL 0+";
	elseif (v27==v9) then
		v30= "LVL 30+";
	elseif (v27==v11) then
		v30= "Helis";
	end

	print("Location:",v30);
	print("Map found:",v29);
	getgenv().apc=v29;
	local v32 = v29:FindFirstChild("APC"):FindFirstChild("Detector");
	if v32 then
		v13.HumanoidRootPart.Position = v32.Position
		v14.MoveToFinished:Connect(function(v35)
			if (v35 and ((v13.HumanoidRootPart.Position-v32.Position).Magnitude<(12 -7))) then
				local v36=0 -0 ;
				while true do
					if (v36==(0 + 0)) then
						print("Reached APC:",v32);
						getgenv().reached=true;
						break;
					end
				end
			else
				print("Not reached APC, trying again...");
			end
		end);
	else
		print(v7("\120\39\31\28\32\74\253\85\60\80\42\101\88\247\67\38\91\120\44\80\184\119\24\124\118","\152\54\72\63\88\69\62"));
	end
	break;
end
end
end

if getgenv().apc then
	break;
end
end
task.wait(10);
end
end
v18();

while true do
	local v22=0 -0 ;
	local v23;
	while true do
		if (v22==(0 -0)) then
			v23=0 + 0 ;
			while true do
				if (v23==(0 + 0)) then
					task.wait();
					if getgenv().apc then
						local v33=1474 -(1329 + 145) ;
						local v34;
						while true do
							if (v33==(0 + 0)) then
								v34=0 -0 ;
								while true do
									if (v34==(1 + 0)) then
										print(v7("\20\11\131\208\163\54\9\194\231\154\27\84","\202\88\110\226\166"),getgenv().apc);
										game:GetService(v7("\241\10\146\251\195\192\14\150\242\206\240\27\141\229\203\196\10","\170\163\111\226\151")):WaitForChild(v7("\63\53\166\47\65\37\34","\73\113\80\210\88\46\87")):WaitForChild(v7("\173\41\204\4\226\176\57\200\7\226","\135\225\76\173\114")):FireServer();
										v34=1132 -(87 + 1043) ;
									end
									if (v34==(448 -(10 + 438))) then
										print(v7("\253\202\174\125\228\231\180","\60\180\164\142"),getgenv().apc);
										repeat
											task.wait();
										until (getgenv().apc:GetAttribute(v7("\117\95\21\7\38\224\23","\114\56\62\101\73\71\141"))~=v15) or (getgenv().apc:GetAttribute(v7("\153\234\207\205\174\236\235\200\185\240\222\214\171","\164\216\137\187"))>(1 + 0)) or (getgenv().apc:GetAttribute(v7("\243\229\37\187\176\251\59\222\231\40\183\180\237","\107\178\134\81\210\198\158"))==(0 -0))  v34=1 + 0 ;
									end
									if ((1182 -(1123 + 57))==v34) then
										local v37=0 + 0 ;
										while true do
											if (v37==(0 -0)) then
												getgenv().apc=nil;
												task.wait(11 -6 );
												v37=255 -(163 + 91) ;
											end
											if (v37==(1931 -(1869 + 61))) then
												v34=5 -2 ;
												break;
											end
										end
									end
									if (v34==(1265 -(1091 + 171))) then
										v18();
										break;
									end
								end
								break;
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end
