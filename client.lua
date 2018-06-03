Citizen.CreateThread(function()
	LoadMpDlcMaps() -- required to load heist ipl?
	EnableMpDlcMaps(true) -- not needed?
	RequestAllIpls()
end)

Citizen.CreateThread(function()
	for _,ipl in pairs(allIpls) do
		loadInt(ipl.coords, ipl.interiorsProps)
	end
end)

function loadInt(coordsTable, table)
	for _,coords in pairs(coordsTable) do
		local interiorID = GetInteriorAtCoords(coords[1], coords[2], coords[3])
		LoadInterior(interiorID)
		for _,propName in pairs(table) do
			Citizen.Wait(25)
			EnableInteriorProp(interiorID, propName)
		end

		RefreshInterior(interiorID)
	end
end

-- https://wiki.gtanet.work/index.php?title=Online_Interiors_and_locations
-- IPL list 1.0.1290: https://pastebin.com/iNGLY32D
-- Extra IPL info: https://pastebin.com/SE5t8CnE
function RequestAllIpls()
	-- Simeon: -47.16170 -1115.3327 26.5
	RequestIpl("shr_int")

	-- Trevor: 1985.48132, 3828.76757, 32.5
	-- Trash or Tidy. Only choose one.
	RequestIpl("TrevorsTrailerTrash")
	--RequestIpl("TrevorsTrailerTidy")

	-- Vangelico Jewelry Store: -637.20159, -239.16250, 38.1
	RequestIpl("post_hiest_unload")

	-- Max Renda: -585.8247, -282.72, 35.45475
	RequestIpl("refit_unload")

	-- Heist Union Depository: 2.69689322, -667.0166, 16.1306286
	RequestIpl("FINBANK")

	-- Morgue: 239.75195, -1360.64965, 39.53437
	RequestIpl("Coroner_Int_on")
	RequestIpl("coronertrash")

	-- Cluckin Bell: -146.3837, 6161.5, 30.2062
	RequestIpl("CS1_02_cf_onmission1")
	RequestIpl("CS1_02_cf_onmission2")
	RequestIpl("CS1_02_cf_onmission3")
	RequestIpl("CS1_02_cf_onmission4")

	-- Grapeseed's farm: 2447.9, 4973.4, 47.7
	RequestIpl("farm")
	RequestIpl("farmint")
	RequestIpl("farm_lod")
	RequestIpl("farm_props")
	RequestIpl("des_farmhouse")

	-- FIB lobby: 105.4557, -745.4835, 44.7548
	RequestIpl("FIBlobby")

	-- Billboard: iFruit
	RequestIpl("FruitBB")
	RequestIpl("sc1_01_newbill")
	RequestIpl("hw1_02_newbill")
	RequestIpl("hw1_emissive_newbill")
	RequestIpl("sc1_14_newbill")
	RequestIpl("dt1_17_newbill")

	-- Lester's factory: 716.84, -962.05, 31.59
	RequestIpl("id2_14_during_door")
	RequestIpl("id2_14_during1")

	-- Life Invader lobby: -1047.9, -233.0, 39.0
	RequestIpl("facelobby")

	-- Tunnels
	RequestIpl("v_tunnel_hole")

	-- Carwash: 55.7, -1391.3, 30.5
	RequestIpl("Carwash_with_spinners")

	-- Stadium "Fame or Shame": -248.4916, -2010.509, 34.5743
	RequestIpl("sp1_10_real_interior")
	RequestIpl("sp1_10_real_interior_lod")

	-- House in Banham Canyon: -3086.428, 339.2523, 6.3717
	RequestIpl("ch1_02_open")

	-- Garage in La Mesa (autoshop): 970.27453, -1826.56982, 31.11477
	RequestIpl("bkr_bi_id1_23_door")

	-- Hill Valley church - Grave: -282.4638, 2835.845, 55.91446
	RequestIpl("lr_cs6_08_grave_closed")

	-- Lost's trailer park: 49.49379, 3744.472, 46.38629
	RequestIpl("methtrailer_grp1")

	-- Lost safehouse: 984.1552, -95.3662, 74.50
	RequestIpl("bkr_bi_hw1_13_int")

	-- Raton Canyon river: -1652.83, 4445.28, 2.52
	RequestIpl("CanyonRvrShallow")

	-- Zancudo Gates (GTAO like): -1600.301, 2806.731, 18.7968
	RequestIpl("CS3_07_MPGates")

	-- Pillbox hospital:
	RequestIpl("rc12b_default")

	-- Josh's house: -1117.1632080078, 303.090698, 66.52217
	RequestIpl("bh1_47_joshhse_unburnt")
	RequestIpl("bh1_47_joshhse_unburnt_lod")

	-- Zancudo River (need streamed content): 86.815, 3191.649, 30.463
	RequestIpl("cs3_05_water_grp1")
	RequestIpl("cs3_05_water_grp1_lod")
	RequestIpl("cs3_05_water_grp2")
	RequestIpl("cs3_05_water_grp2_lod")

	-- Cassidy Creek (need streamed content): -425.677, 4433.404, 27.3253
	RequestIpl("canyonriver01")
	RequestIpl("canyonriver01_lod")

	-- Graffitis
	RequestIpl("ch3_rd2_bishopschickengraffiti") -- 1861.28, 2402.11, 58.53
	RequestIpl("cs5_04_mazebillboardgraffiti") -- 2697.32, 3162.18, 58.1
	RequestIpl("cs5_roads_ronoilgraffiti") -- 2119.12, 3058.21, 53.25
	
	-- Heist Carrier: 3082.3117 -4717.1191 15.2622
	RequestIpl("hei_carrier")
	RequestIpl("hei_carrier_distantlights")
	RequestIpl("hei_Carrier_int1")
	RequestIpl("hei_Carrier_int2")
	RequestIpl("hei_Carrier_int3")
	RequestIpl("hei_Carrier_int4")
	RequestIpl("hei_Carrier_int5")
	RequestIpl("hei_Carrier_int6")
	RequestIpl("hei_carrier_lodlights")
	RequestIpl("hei_carrier_slod")

	-- Heist Yatch: -2043.974,-1031.582, 11.981
	RequestIpl("hei_yacht_heist")
	RequestIpl("hei_yacht_heist_Bar")
	RequestIpl("hei_yacht_heist_Bedrm")
	RequestIpl("hei_yacht_heist_Bridge")
	RequestIpl("hei_yacht_heist_DistantLights")
	RequestIpl("hei_yacht_heist_enginrm")
	RequestIpl("hei_yacht_heist_LODLights")
	RequestIpl("hei_yacht_heist_Lounge")

	-- Bahama Mamas: -1388.0013, -618.41967, 30.819599
	--RequestIpl("hei_sm_16_interior_v_bahama_milo_")

	-- Red Carpet: 300.5927, 199.7589, 104.3776
	--RequestIpl("redCarpet")

	-- UFO
	-- Zancudo: -2051.99463, 3237.05835, 1456.97021
	-- Hippie base: 2490.47729, 3774.84351, 2414.035
	-- Chiliad: 501.52880000, 5593.86500000, 796.23250000
	-- RequestIpl("ufo")
	-- RequestIpl("ufo_eye")
	-- RequestIpl("ufo_lod")
	
	--
	-- Appartments & Offices
	-- Some have multiple choices, in that case pick one
	--

	--
	-- Arcadius Business Centre: -141.2896, -620.9618, 168.8204
	--

	-- RequestIpl("ex_dt1_02_office_01a")	-- Old Spice: Warm
	RequestIpl("ex_dt1_02_office_01b")	-- Old Spice: Classical
	-- RequestIpl("ex_dt1_02_office_01c")	-- Old Spice: Vintage

	-- RequestIpl("ex_dt1_02_office_02a")	-- Executive: Contrast
	-- RequestIpl("ex_dt1_02_office_02b")	-- Executive: Rich
	-- RequestIpl("ex_dt1_02_office_02c")	-- Executive: Cool

	-- RequestIpl("ex_dt1_02_office_03a")	-- Power Broker: Ice
	-- RequestIpl("ex_dt1_02_office_03b")	-- Power Broker: Conservative
	-- RequestIpl("ex_dt1_02_office_03c")	-- Power Broker: Polished

	--
	-- Maze Bank Building: -75.49827, -827.1889, 243.386
	--

	-- RequestIpl("ex_dt1_11_office_01a")	-- Old Spice: Warm
	RequestIpl("ex_dt1_11_office_01b")	-- Old Spice: Classical
	-- RequestIpl("ex_dt1_11_office_01c")	-- Old Spice: Vintage

	-- RequestIpl("ex_dt1_11_office_02b")	-- Executive: Rich
	-- RequestIpl("ex_dt1_11_office_02c")	-- Executive: Cool
	-- RequestIpl("ex_dt1_11_office_02a")	-- Executive: Contrast

	-- RequestIpl("ex_dt1_11_office_03a")	-- Power Broker: Ice
	-- RequestIpl("ex_dt1_11_office_03b")	-- Power Broker: Conservative
	-- RequestIpl("ex_dt1_11_office_03c")	-- Power Broker: Polished

	--
	-- Lom Bank: -1579.756, -565.0661, 108.523
	--

	-- RequestIpl("ex_sm_13_office_01a")	-- Old Spice: Warm
	RequestIpl("ex_sm_13_office_01b")	-- Old Spice: Classical
	-- RequestIpl("ex_sm_13_office_01c")	-- Old Spice: Vintage
	-- RequestIpl("ex_sm_13_office_02a")	-- Executive: Contrast
	-- RequestIpl("ex_sm_13_office_02b")	-- Executive: Rich
	-- RequestIpl("ex_sm_13_office_02c")	-- Executive: Cool
	-- RequestIpl("ex_sm_13_office_03a")	-- Power Broker: Ice
	-- RequestIpl("ex_sm_13_office_03b")	-- Power Broker: Conservative
	-- RequestIpl("ex_sm_13_office_03c")	-- Power Broker: Polished

	--
	-- Maze Bank West: -1392.667, -480.4736, 72.04217
	--

	-- RequestIpl("ex_sm_15_office_01a")	-- Old Spice: Warm
	RequestIpl("ex_sm_15_office_01b")	-- Old Spice: Classical
	-- RequestIpl("ex_sm_15_office_01c")	-- Old Spice: Vintage
	-- RequestIpl("ex_sm_15_office_02b")	-- Executive: Rich
	-- RequestIpl("ex_sm_15_office_02c")	-- Executive: Cool
	-- RequestIpl("ex_sm_15_office_02a")	-- Executive: Contrast
	-- RequestIpl("ex_sm_15_office_03a")	-- Power Broker: Ice
	-- RequestIpl("ex_sm_15_office_03b")	-- Power Broker: Convservative
	-- RequestIpl("ex_sm_15_office_03c")	-- Power Broker: Polished


	-- Modern 1 Apartment: -786.8663, 315.7642, 217.6385
	RequestIpl("apa_v_mp_h_01_a")
	-- Modern 2 Apartment: -786.9563, 315.6229, 187.9136
	RequestIpl("apa_v_mp_h_01_c")
	-- Modern 3 Apartment: -774.0126, 342.0428, 196.6864
	RequestIpl("apa_v_mp_h_01_b")

	-- Mody 1 Apartment: -787.0749, 315.8198, 217.6386
	RequestIpl("apa_v_mp_h_02_a")
	-- Mody 2 Apartment: -786.8195, 315.5634, 187.9137
	RequestIpl("apa_v_mp_h_02_c")
	-- Mody 3 Apartment: -774.1382, 342.0316, 196.686
	RequestIpl("apa_v_mp_h_02_b")

	-- Vibrant 1 Apartment: -786.6245, 315.6175, 217.6385
	RequestIpl("apa_v_mp_h_03_a")
	-- Vibrant 2 Apartment: -786.9584, 315.7974, 187.9135
	RequestIpl("apa_v_mp_h_03_c")
	-- Vibrant 3 Apartment: -774.0223, 342.1718, 196.6863
	RequestIpl("apa_v_mp_h_03_b")

	-- Sharp 1 Apartment: -787.0902, 315.7039, 217.6384
	RequestIpl("apa_v_mp_h_04_a")
	-- Sharp 2 Apartment: -787.0155, 315.7071, 187.9135
	RequestIpl("apa_v_mp_h_04_c")
	-- Sharp 3 Apartment: -773.8976, 342.1525, 196.6863
	RequestIpl("apa_v_mp_h_04_b")

	-- Monochrome 1 Apartment: -786.9887, 315.7393, 217.6386
	RequestIpl("apa_v_mp_h_05_a")
	-- Monochrome 2 Apartment: -786.8809, 315.6634, 187.9136
	RequestIpl("apa_v_mp_h_05_c")
	-- Monochrome 3 Apartment: -774.0675, 342.0773, 196.6864
	RequestIpl("apa_v_mp_h_05_b")

	-- Seductive 1 Apartment: -787.1423, 315.6943, 217.6384
	RequestIpl("apa_v_mp_h_06_a")
	-- Seductive 2 Apartment: -787.0961, 315.815, 187.9135
	RequestIpl("apa_v_mp_h_06_c")
	-- Seductive 3 Apartment: -773.9552, 341.9892, 196.6862
	RequestIpl("apa_v_mp_h_06_b")

	-- Regal 1 Apartment: -787.029, 315.7113, 217.6385
	RequestIpl("apa_v_mp_h_07_a")
	-- Regal 2 Apartment: -787.0574, 315.6567, 187.9135
	RequestIpl("apa_v_mp_h_07_c")
	-- Regal 3 Apartment: -774.0109, 342.0965, 196.6863
	RequestIpl("apa_v_mp_h_07_b")

	-- Aqua 1 Apartment: -786.9469, 315.5655, 217.6383
	RequestIpl("apa_v_mp_h_08_a")
	-- Aqua 2 Apartment: -786.9756, 315.723, 187.9134
	RequestIpl("apa_v_mp_h_08_c")
	-- Aqua 3 Apartment: -774.0349, 342.0296, 196.6862
	RequestIpl("apa_v_mp_h_08_b")

	--
	-- Bunkers, Biker clubhouses & Warehouses
	--

	-- Clubhouse 1: 1107.04, -3157.399, -37.51859
	RequestIpl("bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo")

	-- Clubhouse 2: 998.4809, -3164.711, -38.90733
	RequestIpl("bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo")

	-- Warehouse 1: 1009.5, -3196.6, -38.99682
	RequestIpl("bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo")
	RequestIpl("bkr_biker_interior_placement_interior_2_biker_dlc_int_ware02_milo")
	RequestIpl("bkr_biker_interior_placement_interior_2_biker_dlc_int_ware03_milo")
	RequestIpl("bkr_biker_interior_placement_interior_2_biker_dlc_int_ware04_milo")
	RequestIpl("bkr_biker_interior_placement_interior_2_biker_dlc_int_ware05_milo")

	-- Warehouse 2: 1051.491, -3196.536, -39.14842
	RequestIpl("bkr_biker_interior_placement_interior_3_biker_dlc_int_ware02_milo")

	-- Warehouse 3: 1093.6, -3196.6, -38.99841
	RequestIpl("bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo")

	-- Warehouse 4: 1121.897, -3195.338, -40.4025
	RequestIpl("bkr_biker_interior_placement_interior_5_biker_dlc_int_ware04_milo")

	-- Warehouse 5: 1165, -3196.6, -39.01306
	RequestIpl("bkr_biker_interior_placement_interior_6_biker_dlc_int_ware05_milo")

	-- Warehouse Small: 1094.988, -3101.776, -39.00363
	RequestIpl("ex_exec_warehouse_placement_interior_1_int_warehouse_s_dlc_milo")

	-- Warehouse Medium: 1056.486, -3105.724, -39.00439)
	RequestIpl("ex_exec_warehouse_placement_interior_0_int_warehouse_m_dlc_milo")

	-- Warehouse Large: 1006.967, -3102.079, -39.0035
	RequestIpl("ex_exec_warehouse_placement_interior_2_int_warehouse_l_dlc_milo")

	-- Import / Export Garage: 994.5925, -3002.594, -39.64699
	RequestIpl("imp_impexp_interior_placement")
	RequestIpl("imp_impexp_interior_placement_interior_0_impexp_int_01_milo_")
	RequestIpl("imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_")
	RequestIpl("imp_impexp_interior_placement_interior_2_imptexp_mod_int_01_milo_")
	RequestIpl("imp_impexp_interior_placement_interior_3_impexp_int_02_milo_")

	-- Import / Export Garages: Interiors
	RequestIpl("imp_dt1_02_modgarage")
	RequestIpl("imp_dt1_02_cargarage_a")
	RequestIpl("imp_dt1_02_cargarage_b")
	RequestIpl("imp_dt1_02_cargarage_c")

	RequestIpl("imp_dt1_11_modgarage")
	RequestIpl("imp_dt1_11_cargarage_a")
	RequestIpl("imp_dt1_11_cargarage_b")
	RequestIpl("imp_dt1_11_cargarage_c")

	RequestIpl("imp_sm_13_modgarage")
	RequestIpl("imp_sm_13_cargarage_a")
	RequestIpl("imp_sm_13_cargarage_b")
	RequestIpl("imp_sm_13_cargarage_c")

	RequestIpl("imp_sm_15_modgarage")
	RequestIpl("imp_sm_15_cargarage_a")
	RequestIpl("imp_sm_15_cargarage_b")
	RequestIpl("imp_sm_15_cargarage_c")

	-- Bunkers: Exteriors
	RequestIpl("gr_case0_bunkerclosed") -- 848.6175, 2996.567, 45.81612
	RequestIpl("gr_case1_bunkerclosed") -- 2126.785, 3335.04, 48.21422
	RequestIpl("gr_case2_bunkerclosed") -- 2493.654, 3140.399, 51.28789
	RequestIpl("gr_case3_bunkerclosed") -- 481.0465, 2995.135, 43.96672
	RequestIpl("gr_case4_bunkerclosed") -- -391.3216, 4363.728, 58.65862
	RequestIpl("gr_case5_bunkerclosed") -- 1823.961, 4708.14, 42.4991
	RequestIpl("gr_case6_bunkerclosed") -- 1570.372, 2254.549, 78.89397
	RequestIpl("gr_case7_bunkerclosed") -- -783.0755, 5934.686, 24.31475
	RequestIpl("gr_case9_bunkerclosed") -- 24.43542, 2959.705, 58.35517
	RequestIpl("gr_case10_bunkerclosed") -- -3058.714, 3329.19, 12.5844
	RequestIpl("gr_case11_bunkerclosed") -- -3180.466, 1374.192, 19.9597
	
	-- Bunkers: Interior: 892.6384, -3245.8664, -98.2645
	--[[
	RequestIpl("gr_entrance_placement")
	RequestIpl("gr_grdlc_interior_placement")
	RequestIpl("gr_grdlc_interior_placement_interior_0_grdlc_int_01_milo_")
	RequestIpl("gr_grdlc_interior_placement_interior_1_grdlc_int_02_milo_")
	--]]

	-- North Yankton: 3217.697, -4834.826, 111.8152
	--[[
	RequestIpl("prologue01")
	RequestIpl("prologue01c")
	RequestIpl("prologue01d")
	RequestIpl("prologue01e")
	RequestIpl("prologue01f")
	RequestIpl("prologue01g")
	RequestIpl("prologue01h")
	RequestIpl("prologue01i")
	RequestIpl("prologue01j")
	RequestIpl("prologue01k")
	RequestIpl("prologue01z")
	RequestIpl("prologue02")
	RequestIpl("prologue03")
	RequestIpl("prologue03b")
	RequestIpl("prologue04")
	RequestIpl("prologue04b")
	RequestIpl("prologue05")
	RequestIpl("prologue05b")
	RequestIpl("prologue06")
	RequestIpl("prologue06b")
	RequestIpl("prologue06_int")
	RequestIpl("prologuerd")
	RequestIpl("prologuerdb")
	RequestIpl("prologue_DistantLights")
	RequestIpl("prologue_LODLights")
	RequestIpl("prologue_m2_door")
	--]]
end