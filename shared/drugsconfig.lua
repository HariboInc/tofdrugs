---------------------------------------------------
-------------- general parameters -----------------
---------------------------------------------------

dgsafkfarmdrugs = false     -- config if the afk farm is allow (true | false)
dgsafkcraftdrugs = false    -- config if the afk craft is allow (true | false)
dgsinventory = 'oxinventory'-- config your inventory here (oxinventory | default)

dgsmincopshv = 0            -- config here the minimum number of cops to harvest
dgsmincopsc = 0             -- config here the minimum number of cops to craft
dgsmincopss = 0             -- config here the minimum number of cops to sell to narcos
dgsmincopssnpc = 0          -- config here the minimum number of cops to sell to npc

dgsalertcopsnpc = 20        -- config here the % of chance that cops will be alerted when there's npc sell
dgsdelaycopsblip = 60000    -- config here the delay of the blip lspd when there' npc sell

---------------------------------------------------
------------------- language ----------------------
---------------------------------------------------

menu1 = 'Récolter '     -- modify your translate here
menu2 = 'Transformer '  -- modify your translate here
menu3 = 'Vente Narcos ' -- modify your translate here
menu4 = 'Vente NPC'    -- modify your translate here

-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------- config harvest items -------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------

drugsharvest = {
    ------------------------------------------------------------------------- Weed ------------------------------------------------------------------
    {item = 'drug_cannabis', itemlabel = 'Weed', harvestqty = 6, timeharvest = 60000, coordharvest = {x = 325.19, y = 6626.65, z = 28.71, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    ------------------------------------------------------------------------- Opium -----------------------------------------------------------------
    {item = 'drug_opium', itemlabel = 'Opium', harvestqty = 6, timeharvest = 60000, coordharvest = {x = -94.01, y = 2893.87, z = 51.58, h = 167.244}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    ------------------------------------------------------------------------- Lean ------------------------------------------------------------------
    {item = 'codein', itemlabel = 'Codein', harvestqty = 9, timeharvest = 60000, coordharvest = {x = 157.16, y = 6657.42, z = 31.56, h = 65.196}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    ----------------------------------------------------------------------- Cocaine -----------------------------------------------------------------
    {item = 'cocaleaves', itemlabel = 'Coca Leaves', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 3680.08, y = 4528.90, z = 24.81, h = 201.259}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    {item = 'gasoline', itemlabel = 'Gasoline', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 2758.04, y = 1478.64, z = 30.79, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    {item = 'solvent', itemlabel = 'Solvent', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 1050.85, y = -2483.52, z = 29.43, h = 351.496}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    --------------------------------------------------------------------- LSD / Ecstasy --------------------------------------------------------------
    {item = 'carbon', itemlabel = 'Carbon', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 2632.26, y = 2935.41, z = 40.42, h = 62.362}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    {item = 'hydrogen', itemlabel = 'Hydrogen', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 561.26, y = -485.30, z = 24.98, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    {item = 'oxygen', itemlabel = 'Oxygen', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 319.33, y = -560.18, z = 28.74, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    {item = 'nitrogen', itemlabel = 'Nitrogen', harvestqty = 8, timeharvest = 60000, coordharvest = {x = -190.13, y = 6067.82, z = 31.38, h = 104.881}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
     ------------------------------------------------------------------------ Meth -------------------------------------------------------------------
     {item = 'red_sulfur', itemlabel = 'Red Sulfur', harvestqty = 8, timeharvest = 60000, coordharvest = {x = -540.923, y = 2021.063, z = 203.007, h = 257.952}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
     {item = 'liquid_sulfur', itemlabel = 'Liquid Sulfur', harvestqty = 8, timeharvest = 60000, coordharvest = {x = -602, y = 2088.65, z = 132.69, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
     {item = 'muriatic_acid', itemlabel = 'Muriatic Acid', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 2675.7, y = 3499.38, z = 54.30, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
     {item = 'ammonium_nitrate', itemlabel = 'Ammonium Nitrate', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 3560.89, y = 3674.34, z = 28.12, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
     {item = 'sodium_hydroxide', itemlabel = 'Sodium Hydroxide', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 3538.20, y = 3660.09, z = 28.12, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
     {item = 'pseudoefedrine', itemlabel = 'pseudoefedrine', harvestqty = 8, timeharvest = 60000, coordharvest = {x = 249.41, y = -1374.78, z = 39.53, h = 221.103}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
     -------------------------------------------------------------------------------------------------------------------------------------------------
}

-------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------- config craft labos -------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------

drugscraft = {
    ------------------------------------------------------------------------ Lean -------------------------------------------------------------------
    {itemfinal = 'drug_lean', itemfinallabel = 'Lean', timecraft = 30000, coordcraft = {x = -1363.08, y = -756.03, z = 22.31, h = 274.960}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    ----------------------------------------------------------------------- Cocaine -----------------------------------------------------------------
    {itemfinal = 'drug_cocaine', itemfinallabel = 'Cocaine', timecraft = 30000, coordcraft = {x = 1091.74, y = -3196.88, z = -38.99, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    ----------------------------------------------------------------------- LSD ---------------------------------------------------------------------
    {itemfinal = 'drug_lsd', itemfinallabel = 'LSD', timecraft = 30000, coordcraft = {x = 1389.20, y = 3605.03, z = 38.94, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    ------------------------------------------------------------------- Ecstasy ---------------------------------------------------------------------
    {itemfinal = 'drug_ecstasy', itemfinallabel = 'Ecstasy', timecraft = 30000, coordcraft = {x = 2329.04, y = 2571.28, z = 46.68, h = 0.00}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    ------------------------------------------------------------------- Meth ---------------------------------------------------------------------
    {itemfinal = 'drug_meth', itemfinallabel = 'Methamphetamine', timecraft = 30000, coordcraft = {x = 1009.65, y = -3194.97, z = -38.99, h = 11.338}, ped = false, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    -------------------------------------------------------------------------------------------------------------------------------------------------
}

-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------- config craft recipes -------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------

drugscraftrecipes = {
    ------------------------------------------------------------------------ Lean -------------------------------------------------------------------
    {itemfinal = 'drug_lean', itemfinallabel = 'Lean', qtyfinal = 6, item1 = 'codeine', item2 = 'ice', item3 = 'drink_sprunk', item4 = '', item5 = '', item6 = '', qty1 = 6, qty2 = 6, qty3 = 6, qty4 = 0, qty5 = 0, qty6 = 0},
    ----------------------------------------------------------------------- Cocaine -----------------------------------------------------------------
    {itemfinal = 'drug_cocaine', itemfinallabel = 'Cocaine', qtyfinal = 6, item1 = 'cocaleaves', item2 = 'gasoline', item3 = 'solvent', item4 = '', item5 = '', item6 = '', qty1 = 6, qty2 = 6, qty3 = 6, qty4 = 0, qty5 = 0, qty6 = 0},
    ----------------------------------------------------------------------- LSD ---------------------------------------------------------------------
    {itemfinal = 'drug_lsd', itemfinallabel = 'LSD', qtyfinal = 6, item1 = 'carbon', item2 = 'hydrogen', item3 = 'oxygen', item4 = 'nitrogen', item5 = '', item6 = '', qty1 = 6, qty2 = 6, qty3 = 6, qty4 = 6, qty5 = 0, qty6 = 0},
    -------------------------------------------------------------------- Ecstasy --------------------------------------------------------------------
    {itemfinal = 'drug_ecstasy', itemfinallabel = 'Ecstasy', qtyfinal = 6, item1 = 'carbon', item2 = 'hydrogen', item3 = 'oxygen', item4 = 'nitrogen', item5 = 'jolly_ranchers', item6 ='', qty1 = 6, qty2 = 6, qty3 = 6, qty4 = 6, qty5 = 6, qty6 = 0},
    ---------------------------------------------------------------------- Meth ---------------------------------------------------------------------
    {itemfinal = 'drug_meth', itemfinallabel = 'Methamphetamine', qtyfinal = 6, item1 = 'red_sulfur', item2 = 'liquid_sulfur', item3 = 'muriatic_acid', item4 = 'ammonium_nitrate', item5 = 'sodium_hydroxide', item6 = 'pseudoefedrine', qty1 = 6, qty2 = 6, qty3 = 6, qty4 = 6, qty5 = 6, qty6 = 6},
    -------------------------------------------------------------------------------------------------------------------------------------------------
}

-------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------- config sell items --------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------

drugssellnarcos = {
    ------------------------------------------------------------------------ Lean -------------------------------------------------------------------
    {itemsell = 'drug_cannabis', itemselllabel = 'Weed', pricemin = 40, pricemax = 50, qtysell = 100, timetosell = 60000, coordsell = {x = -1691.27, y = -1071.257, z = 1.831, h = 141.732}, ped = true, typeped = 'a_m_m_og_boss_01', markerid = 31},
    ----------------------------------------------------------------------- Opium -------------------------------------------------------------------
    {itemsell = 'drug_opium', itemselllabel = 'Opium', pricemin = 50, pricemax = 60, qtysell = 100, timetosell = 60000, coordsell = {x = -298.852, y = -2768.716, z = 2.185, h = 320.314}, ped = true, typeped = 'a_m_o_salton_01', markerid = 31},
    ----------------------------------------------------------------------- Lean ---------------------------------------------------------------------
    {itemsell = 'drug_lean', itemselllabel = 'Lean', pricemin = 100, pricemax = 120, qtysell = 100, timetosell = 60000, coordsell = {x = 1554.197, y = -2710.193, z = 3.88, h = 124.724}, ped = true, typeped = 'a_m_y_genstreet_01', markerid = 31},
    ---------------------------------------------------------------------- Cocaine -------------------------------------------------------------------
    {itemsell = 'drug_cocaine', itemselllabel = 'Cocaine', pricemin = 150, pricemax = 180, qtysell = 100, timetosell = 60000, coordsell = {x = 2771.432, y = -727.147, z = 7.830, h = 218.267}, ped = true, typeped = 'a_m_y_genstreet_0', markerid = 31},
    -------------------------------------------------------------------------- LSD -------------------------------------------------------------------
    {itemsell = 'drug_lsd', itemselllabel = 'LSD', pricemin = 280, pricemax = 320, qtysell = 100, timetosell = 60000, coordsell = {x = 3760.839, y = 4580.545, z = 3.516, h = 256.118}, ped = true, typeped = 'a_m_y_mexthug_01', markerid = 31},
    ---------------------------------------------------------------------- Ecstasy -------------------------------------------------------------------
    {itemsell = 'drug_ecstasy', itemselllabel = 'Ecstasy', pricemin = 300, pricemax = 360, qtysell = 100, timetosell = 60000, coordsell = {x = 1579.305, y = 6663.046, z = 2.792, h = 59.527}, ped = true, typeped = 'a_m_y_vindouche_01', markerid = 31},
    -------------------------------------------------------------------------- Meth -------------------------------------------------------------------
    {itemsell = 'drug_meth', itemselllabel = 'Methamphetamine', pricemin = 400, pricemax = 480, qtysell = 100, timetosell = 60000, coordsell = {x = -2279.802, y = 4394.320, z = 17.097, h = 79.370}, ped = true, typeped = 'a_m_m_rurmeth_01', markerid = 31},
    --------------------------------------------------------------------------------------------------------------------------------------------------
}

drugssellNPC = {
    ------------------------------------------------------------------------ Weed -------------------------------------------------------------------
    {itemsell = 'drug_cannabis', itemselllabel = 'Weed', pricemin = 75, pricemax = 90, timetosell = 15000},
    ----------------------------------------------------------------------- Opium -------------------------------------------------------------------
    {itemsell = 'drug_opium', itemselllabel = 'Opium', pricemin = 80, pricemax = 95, timetosell = 15000},
    ----------------------------------------------------------------------- Lean ---------------------------------------------------------------------
    {itemsell = 'drug_lean', itemselllabel = 'Lean', pricemin = 180, pricemax = 250, timetosell = 15000},
    ---------------------------------------------------------------------- Cocaine -------------------------------------------------------------------
    {itemsell = 'drug_cocaine', itemselllabel = 'Cocaine', pricemin = 300, pricemax = 350, timetosell = 15000},
    -------------------------------------------------------------------------- LSD -------------------------------------------------------------------
    {itemsell = 'drug_lsd', itemselllabel = 'LSD', pricemin = 550, pricemax = 650, timetosell = 15000},
    ---------------------------------------------------------------------- Ecstasy -------------------------------------------------------------------
    {itemsell = 'drug_ecstasy', itemselllabel = 'Ecstasy', pricemin = 650, pricemax = 750, timetosell = 15000},
    -------------------------------------------------------------------------- Meth -------------------------------------------------------------------
    {itemsell = 'drug_meth', itemselllabel = 'Methamphetamine', pricemin = 900, pricemax = 1050, timetosell = 15000},
    --------------------------------------------------------------------------------------------------------------------------------------------------
 }