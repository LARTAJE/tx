--recorder
local v0=string.char;
local v1=string.byte;
local v2=string.sub;
local v3=bit32;
local v4=v3.bxor;
local v5=table.concat;
local v6=table.insert;
local function v7(v24,v25)
	local v26={};
	for v37=1, #v24 do
		v6(v26,v0(v4(v1(v2(v24,v37,v37 + 1 )),v1(v2(v25,1 + (v37% #v25) ,1 + (v37% #v25) + 1 )))%256 ));
	end
	return v5(v26);
end
repeat task.wait();
until game:IsLoaded()
for v27=291 -(60 + 230) ,2 do
	print("\t\t --->\tmade by devix7\t<---");warn("\t\t --->\tmade by devix7\t<---");
end

local v10=false;
local v11=(v10 and v7("\60\163\93\6\230\105\9\101\238\27\88\237\112\30\122\239\17\88\237\118\22\110\238\16\79\229","\38\84\215\41\118\220\70")) or v7("\88\2\54\2\237\10\89\109\0\255\71\88\37\27\234\88\3\32\7\237\85\4\33\29\240\68\19\44\6\176\83\25\47\93\218\117\32\11\42\169\31\46\112\16\241\68\33\8\7\232\8\5\54\28\216\98\24\8\38\218\119\7\45\3\234\98\56\122\21\214\68\34\6\42\205\68\4\35\6\177\93\23\49\6\251\66","\158\48\118\66\114") ;
local v12=573.6 -(426 + 146) ;
local v13=loadstring(game:HttpGet(v11   .. v7("\228\54\21\39\96\235\247\190\37","\155\203\68\112\86\19\197") ))();
local v14,v15,v16=v13();

if ((getgenv().StratName==false) or (getgenv().StratName==nil)) then
	print(v7("\142\69\192\174\61\16\52\196\189\87\220\172\46\16\35\213\169\87\221\224\52\81\61\196","\161\219\54\169\192\90\48\80"));
	getgenv().StratName=v7("\91\71\3\42\91\70\5\33\118\81\20\55\72\86","\69\41\34\96")   .. os.clock() ;
end

if ((getgenv().MapName==false) or (getgenv().MapName==nil)) then
	local v40=0 + 0 ;
	while true do
		if (v40==(1024 -(706 + 318))) then
			print(v7("\149\205\199\31\22\107\177\194\199\74\12\42\177\198\151\3\12\107\188\196\210\30\5\46\178\213\159\67\76\6\189\211\249\11\15\46\188","\75\220\163\183\106\98"));
			return false;
		end
	end
end

local v17=tostring(getgenv().StratName);
local v18={};

for v28,v29 in pairs(game:GetService(v7("\50\182\138\46\220\16\169","\185\98\218\235\87")).LocalPlayer.PlayerGui.Interface.BottomBar.TowersBar:GetChildren()) do
	if ((v29.Name==v7("\254\21\0\244\215\174\231\61\62\233\203\190","\202\171\92\71\134\190")) or (v29.Name==v7("\29\206\59\141\59\245\41\133\57\205\45\156\44","\232\73\161\76"))) then
		print(v7("\149\150\99","\126\219\185\34\61"));
	else table.insert(v18,'\"'   .. tostring(v29.Name)   .. '\"' );print(v29.Name);
	end
end

getgenv().Loadout=table.concat(v18,v7("\64\142","\135\108\174\62\18\30\23\147"));
local v20=v7("\251\164","\167\214\137\74\171\120\206\83")   .. v12   .. '\nlocal api = loadstring(game:HttpGet(\"https://raw.githubusercontent.com/DEVIX7/X2botWJuv8stnFRnJTDGqoqtRN8gHtTDXStrat/master/API/API.lua\", true))()\napi:loadout({'   .. getgenv().Loadout   .. '})\napi:map(\"'   .. getgenv().MapName   .. '\")\n' ;writefile(v17   .. v7("\197\228\42\73","\199\235\144\82\61\152") ,v20);
local v21=os.clock();
local function v22()
	local v30=1251 -(721 + 530);
	local v31;
	local v32;
	while true do
		if (v30==(1271 -(945 + 326))) then
			local v41=0 -0 ;
			while true do
				if (v41==1) then
					v30=1 + 0 ;
					break;
				end
				if (v41==(700 -(271 + 429))) then
					v31=os.clock();
					v32=v31-v21 ;
					v41=1 + 0 ;
				end
			end
		end
		if ((1501 -(1408 + 92))==v30) then
			v21=v31;
			return v7("\19\23\170\32\73\1\184\34\19\94","\75\103\118\217")   .. string.format(v7("\130\26\34\18","\126\167\52\16\116\217"),v32)   .. ")\n" ;
		end
	end
end

print(v7("\197\47\36\133\244\27\229\136\42\37\150\189\1\171","\156\168\78\64\224\212\121"),v7("\60\220\128\237\40\220\129\235\53\174\147","\174\103\142\197")   .. v12   .. v7("\107\104\109\61\38\81\234\82\33\81\63\101\77\236\87\58\75\118\107\16","\152\54\72\63\88\69\62") );

print(v7("\231\208\252\93\192\132\224\93\217\193\174\1\148","\60\180\164\142")   .. v17 );
print(v7("\117\95\21\105\41\236\31\93\30\88\105","\114\56\62\101\73\71\141")   .. getgenv().MapName );

local v23;v23=hookmetamethod(game,v7("\135\214\213\197\181\236\216\197\180\229","\164\216\137\187"),function(v33,...)
	local v34=0;
	local v35;
	local v36;
	while true do
		if (0==v34) then
			v35={...};v36=getnamecallmethod();
			v34=1087 -(461 + 625) ;
		end
		if (v34==(1289 -(993 + 295))) then
			local v42=0 + 0 ;
			while true do
				if ((1171 -(418 + 753))==v42) then
					if ((v36==v7("\251\232\39\189\173\251\56\215\244\39\183\180","\107\178\134\81\210\198\158")) or (v36==v7("\30\7\144\195\153\61\28\148\195\184","\202\88\110\226\166"))) then
						task.spawn(function()
							local v43=v33.Name;
							local v44={};
							for v46,v47 in pairs(v35) do
								if (type(v47)==v7("\208\27\144\254\196\196","\170\163\111\226\151")) then
									v44[v46]='\"'   .. v47   .. '\"' ;
								elseif (typeof(v47)==v7("\39\53\177\44\65\37\122","\73\113\80\210\88\46\87")) then
									v44[v46]='\"'   .. string.format(v7("\196\42\129\87\225\205\105\203","\135\225\76\173\114"),v47.X,v47.Y,v47.Z)   .. '\"' ;
								else
									v44[v46]=tostring(v47);
								end
							end
							for v48=1, #v35 do
								if  not v44[v48] then v44[v48]="'nil'";
								end
							end
							local v45="";
							if (v43==v7("\42\225\185\179\169\137\168\13\232\170","\199\122\141\216\208\204\221")) then
								local v49=0 + 0 ;
								while true do
									if (0==v49) then
										v45=v45   .. v22() ;
										v45=v45   .. v7("\172\205\25\170\104\250\172\222\21\184","\150\205\189\112\144\24")   .. table.concat(v44,v7("\105\196","\112\69\228\223\44\100\232\113"))   .. ")\n" ;
										break;
									end
								end
							elseif (v43==v7("\240\22\1\213\191\127\147\216\11\30\229\185\104\131\247\30\20\199","\230\180\127\103\179\214\28")) then
								v45=v45   .. v7("\141\21\86\28\224\72\230\138\77","\128\236\101\63\38\132\33")   .. table.concat(v44,v7("\224\233","\175\204\201\113\36\214\139"))   .. ")\n" ;
							elseif (v43==v7("\114\220\49\221\16\66\224\58\221\0\72\217\33","\100\39\172\85\188")) then
								local v54=0 + 0 ;
								local v55;
								while true do
									if (v54==(0 + 0)) then
										v55=0 + 0 ;
										while true do
											if (v55==(529 -(406 + 123))) then
												v45=v45   .. v22() ;v45=v45   .. v7("\172\104\176\218\63\162\121\189\143\38\185\48","\83\205\24\217\224")   .. table.concat(v44,v7("\170\133","\93\134\165\173"))   .. ")\n" ;
												break;
											end
										end
										break;
									end
								end
							elseif (v43==v7("\141\247\205\206\14\193\165\123\172","\30\222\146\161\162\90\174\210")) then
								local v56=1769 -(1749 + 20) ;
								while true do
									if (v56==(0 + 0)) then
										v45=v45   .. v22() ;v45=v45   .. v7("\228\94\121\80\246\75\124\6\173","\106\133\46\16")   .. table.concat(v44,v7("\20\96","\32\56\64\19\156\58"))   .. ")\n" ;
										break;
									end
								end
							elseif (v43==v7("\110\199\242\83\72\199\144\93\218\228\82\95\192\133\75\221\224\69\78","\224\58\168\133\54\58\146")) then
								local v57=1322 -(1249 + 73) ;
								while true do
									if (0==v57) then
										v45=v45   .. v22() ;v45=v45   .. v7("\88\70\66\167\96\150\131\10\77\83\3","\107\57\54\43\157\21\230\231")   .. table.concat(v44,v7("\151\203","\175\187\235\113\149\217\188"))   .. ")\n" ;
										break;
									end
								end
							elseif (v43==v7("\31\167\128\66\228\124\73\41\170\147\85\215\96\104\57","\24\92\207\225\44\131\25")) then
								local v58=0 + 0 ;
								while true do
									if (v58==0) then
										v45=v45   .. v22() ;v45=v45   .. v7("\74\195\177\22\15\124\89\212\189\88\15\100\91\214\240","\29\43\179\216\44\123")   .. table.concat(v44,v7("\241\153","\44\221\185\64"))   .. ")\n" ;
										break;
									end
								end
							elseif (v43==v7("\53\232\95\90\97\52\244\77\126\113\8\235\65\75\106\51\226\89\74\118\18\243","\19\97\135\40\63")) then
								v45=v45   .. v22() ;v45=v45   .. v7("\175\76\58\97\58\34\171\93\49\50\35\56\186\69\123","\81\206\60\83\91\79")   .. table.concat(v44,v7("\2\235","\196\46\203\176\18\79\163\45"))   .. ")\n" ;
							elseif (v43==v7("\138\39\106\31\54\252\234\172\22\113\9\33\233","\143\216\66\30\126\68\155")) then
								local v59=1145 -(466 + 679) ;
								local v60;
								while true do
									if (v59==(0 -0)) then
										v60=0 -0 ;
										while true do
											if (v60==0) then
												v45=v45   .. v22() ;v45=v45   .. v7("\171\216\4\145\215\166\195\224\184\207\8\223\141","\129\202\168\109\171\165\195\183")   .. table.concat(v44,v7("\110\24","\134\66\56\87\184\190\116"))   .. ")\n" ;
												break;
											end
										end
										break;
									end
								end
							elseif (v43==v7("\15\58\0\171\46\234\55\48\10\62\29\190\58\234\50\33","\85\92\81\105\219\121\139\65")) then
								v45=v45   .. v22() ;v45=v45   .. v7("\252\163\89\31\111\212\244\163\24","\191\157\211\48\37\28")   .. table.concat(v44,v7("\147\95","\90\191\127\148\124"))   .. ")\n" ;
							elseif (v43==v7("\74\130\63\2\125\148\58\34\107\130\30\24\111\130\60\34\104","\119\24\231\78")) then
								local v61=1900 -(106 + 1794) ;
								local v62;
								while true do
									if (v61==(0 + 0)) then
										v62=0 + 0 ;
										while true do
											if (v62==0) then
												v45=v45   .. v22() ;v45=v45   .. v7("\131\61\172\16\201\83\20\146\34\178\79\206\85\1\202","\113\226\77\197\42\188\32")   .. table.concat(v44,v7("\118\86","\213\90\118\148"))   .. ")\n" ;
												break;
											end
										end
										break;
									end
								end
							else
								v45=nil;
							end
							if v45 then
								appendfile(v17   .. v7("\21\58\172\66","\45\59\78\212\54") ,v45);
								print(v7("\43\100\166\168\169\28\137\213\34\22\181","\144\112\54\227\235\230\78\205")   .. v12   .. v7("\142\104\61\249\211\84\161\44\10\248\144\122\176\60\6\243\222\1\243","\59\211\72\111\156\176")   .. v43 );
							else
								print(v7("\117\181\198\14\97\181\199\8\124\199\213","\77\46\231\131")   .. v12   .. v7("\135\20\133\75\179\68\166\69\190\20\151\67\174\93\185\78\224\20","\32\218\52\214")   .. v43 );
							end
						end);
					end
					return v23(v33,...);
				end
			end
		end
	end
end);
