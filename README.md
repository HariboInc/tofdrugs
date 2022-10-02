# tofdrugs - a complete drugs script
* harvest | craft | sell narcos | sell npc | drugs effects etc.
* resmon 0.00 to 0.02ms

# fully configurable

# Dependencies
* ESX Legacy
* ox_lib
* qtarget
* polyzone
* optionnal : ox_inventory

# Install

* Put the ressource tofdrugs in your 'resources' and start it in the server.cfg
* ox_lib, qtarget, polyzone and ox_inventory must start before tofdrugs.

# Drugs

* weed / opium / lean / cocaine / lsd / ecstasy / meth

# Recicpes

* lean = codeine + ice (sell in maket) + sprunk (sell in market)
* cocaine = cocaleaves + gasoline + solvent
* lsd = carbon + hydrogen + nitrogen + oxygen
* ecstasy = carbon + hydrogen + nitrogen + oxygen + jollyranchers (candies sell in market)
* methampletamine = red sulfur + liquid sulfur + muriatic acid + ammonium nitrate + sodium hydroxide + pseudoephedrine

# Items to add in items.lua(ox_inventory) or 'item' table in sql(default inventory)

* drug_cannabis
* 

# drugsconfig.lua

```
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
```

## Harvest items

```
