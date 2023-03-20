Config = Config or {}

Config.UseBlips = true                                 -- True / false option for toggling farm blips

Config.PedModel = "a_m_m_farmer_01"                    -- Ped model  https://wiki.rage.mp/index.php?title=Peds
Config.PedHash = 0x94562DD7                            -- Hash numbers for ped model

-- Blips
BarnSeller = {
    targetZone = vector3(407.72, 6495.41, 27.92),      -- qb-target vector
    targetHeading = 355,                                  -- qb-target box zone
    coords = vector4(407.72, 6495.41, 27.92 - 1, 173.67),   -- Move Location (Ped and blip)
    -- SetBlipSprite = 568,                                -- Blip Icon (https://docs.fivem.net/docs/game-references/blips/)
    -- SetBlipDisplay = 6,                                 -- Blip Behavior (https://docs.fivem.net/natives/?_0x9029B2F3DA924928)
    -- SetBlipScale = 0.65,                                -- Blip Size
    -- SetBlipColour = 35,                                 -- Blip Color
    BlipLabel = "Barn Owner",                       -- Blip Label
    minZ = 24.92,                                       -- qb-target Min
    maxZ = 28.92,                                       -- qb-target Max
}

Config.BuySlaughterKnife = 20
Config.SellSlaughterKnife = 10
CowFarmer = vector4(407.72, 6495.41, 27.92 - 1, 173.67) -- 1.00
CowFarmerTargetZone = vector3(407.72, 6495.41, 27.92)
CowFarmerHeading = 355
CowFarmerMinZ = 24.92
CowFarmerMaxZ = 28.92

-- Blips
FoodProcessor = {
    targetZone = vector3(2853.98, 4557.02, 46.15),      -- qb-target vector
    targetHeading = 5,                                  -- qb-target box zone
    coords = vector4(2853.98, 4557.02, 46.15, 25.64),   -- Move Location (Ped and blip)
    SetBlipSprite = 568,                                -- Blip Icon (https://docs.fivem.net/docs/game-references/blips/)
    SetBlipDisplay = 6,                                 -- Blip Behavior (https://docs.fivem.net/natives/?_0x9029B2F3DA924928)
    SetBlipScale = 0.65,                                -- Blip Size
    SetBlipColour = 35,                                 -- Blip Color
    BlipLabel = "Food Processor",                       -- Blip Label
    minZ = 43.95,                                       -- qb-target Min
    maxZ = 47.95,                                       -- qb-target Max
}
DairyProcessor = {
    targetZone = vector3(2567.92, 4684.44, 33.05),
    targetHeading = 330,
    coords = vector4(2567.92, 4684.44, 33.05, 47.10),
    SetBlipSprite = 568,
    SetBlipDisplay = 6,
    SetBlipScale = 0.65,
    SetBlipColour = 32,
    BlipLabel = "Dairy Processor",
    minZ = 32.05,
    maxZ = 35.00,
}

Seller = {
    targetZone = vector3(-1879.84, 2072.99, 141.0),
    targetHeading = 70,
    coords = vector4(-1879.84, 2072.99, 141.0 - 1.00, 339.82),--vector4(760.4, -3194.97, 6.07 - 1.00, 265.82),
    SetBlipSprite = 642,
    SetBlipDisplay = 6,
    SetBlipScale = 0.65,
    SetBlipColour = 17,
    BlipLabel = "Farm Seller",
    minZ=138.0,
    maxZ=142.0
}


-- Pig Farm (Food)

-- Config.PigFood = 5                                      -- Food Amount (Pig Food)
-- Config.FoodPrice = 10                                   -- Pig Farm Food Price
-- PigFarmer = vector4(2166.11, 5003.84, 40.39, 312.56)    -- Ped Location
-- PigFarmerTargetZone = vector3(2166.11, 5003.84, 40.39)  -- QB-Target location
-- PigFarmerTzHeading = 305                                -- QB-Target Heading
-- PigFarmerMinZ = 40				                    	-- QB-Target MinZ
-- PigFarmerMaxZ = 42				                    	-- QB-Target MaxZ

-- Processing Items
Config.AppleProcessing = 2                              -- Trading Amount
Config.BeefProcessing = 2
Config.BaconProcesing = 3
Config.HamProcessing = 2
Config.PorkProcessing = 2
Config.SausageProcessing = 2
Config.MilkProcessing = 2
Config.PumpkinProcessing = 2
Config.CornProcessing = 2
Config.GrapeProcessing = 2
Config.ChillyProcessing = 2
Config.TomatoesProcessing = 2

-- Processed Items
Config.AppleJuice = 1                                   -- Received Amount
Config.BaconProcessed = 2
Config.HamProcessed = 2
Config.PorkProcessed = 1
Config.SausageProcessed = 2
Config.CowMeat = 2
Config.Milk = 2
Config.PumpkinBoxes = 1
Config.CornProcessed = 1
Config.GrapeProcessed = 1
Config.ChillyProcessed = 1
Config.TomatoesProcessed = 1

-- Processing time
Config.ProcessingTime = {
    ["apple_processingtime"] = 3000 + math.random(1500,2000),                    -- MS = Seconds (5000 ms = 5 seconds)
    -- ["beef_processingtime"] = 3000 + math.random(1500,2000),
    -- ["bacon_processingtime"] = 3000 + math.random(1500,2000),
    -- ["ham_processingtime"] = 3000 + math.random(1500,2000),
    -- ["pork_processingtime"] = 3000 + math.random(1500,2000),
    -- ["sausage_processingtime"] = 3000 + math.random(1500,2000),
    ["milk_tradingtime"] = 3000 + math.random(1500,2000),
	["grab_cowbuckettime"] = 3000 + math.random(1500,2000),
    ["pumpkin_smashingtime"] = 3000 + math.random(1500,2000),
    ["grape_processingtime"] = 3000 + math.random(1500,2000),
    ["chillypepper_processingtime"] = 3000 + math.random(1500,2000),
    ["tomatoes_processingtime"] = 3000 + math.random(1500,2000),
}

-- Sell Items
Config.Sell = {
    ["apple"] = {
        ["price"] = math.random(1,2)                   -- Seller Price
    },
    ["apple_juice"] = {
        ["price"] = math.random(2,4)
    },
    ["milkbucket"] = {
        ["price"] = math.random(2,4)
    },
    -- ["raw_beef"] = {
    --     ["price"] = 0
    -- },
    -- ["beef"] = {
    --     ["price"] = 4
    -- },
    ["milk"] = {
        ["price"] = math.random(4,6)
    },
    ["rawpumpkin"] = {
        ["price"] = math.random(1,3)
    },
    ["pumpkinpiebox"] = {
        ["price"] = math.random(2,5)
    },
    ["slicedpie"] = {
        ["price"] = math.random(1,4)
    },
    ["corncob"] = {
        ["price"] = math.random(1,2)
    },
    ["canofcorn"] = {
        ["price"] = math.random(3,5)
    },
    ["grapes"] = {
        ["price"] = math.random(1,2)
    },
    ["grapejuice"] = {
        ["price"] = math.random(2,4)
    },
    ["greenpepper"] = {
        ["price"] = math.random(1,2)
    },
    ["chillypepper"] = {
        ["price"] = math.random(1,2)
    },
    ["hotsauce"] = {
        ["price"] = math.random(2,4)
    },
    ["tomato"] = {
        ["price"] = math.random(1,2)
    },
    ["tomatopaste"] = {
        ["price"] = math.random(2,4)
    }
    -- ["raw_bacon"] = {
    --     ["price"] = math.random(25, 35)
    -- },
    -- ["raw_sausage"] = {
    --     ["price"] = math.random(25, 35)
    -- },
    -- ["raw_pork"] = {
    --     ["price"] = math.random(25, 35)
    -- },
    -- ["raw_ham"] = {
    --     ["price"] = math.random(25, 35)
    -- },
    -- ["cooked_bacon"] = {
    --     ["price"] = math.random(25, 35)
    -- },
    -- ["cooked_sausage"] = {
    --     ["price"] = math.random(25, 35)
    -- },
    -- ["cooked_pork"] = {
    --     ["price"] = math.random(25, 35)
    -- },
    -- ["cooked_ham"] = {
    --     ["price"] = math.random(25, 35)
    -- },
    -- ["pig_leather"] = {
    --     ["price"] = math.random(25, 35)
    -- },
    -- ["cow_leather"] = {
    --     ["price"] = math.random(25, 35)
    -- }

}

-- Alert Notification
Config.Alerts = {
    ['cancel'] = 'Cancelled',
    ['weapon'] = 'You don\'t have a knife to do this',
    ['itemamount'] = 'You are trying to process a amount that is invalid try again!',

    ['apple_pickingbar'] = 'Picking Apples',
    ['apple_progressbar'] = 'Making Juice',
	['apple_pickingfront'] = 'You picked ',
    ['apple_pickingend'] = ' apples from the tree',
    ['apple_processing'] = 'You are processing ' ..Config.AppleProcessing.. ' amount of apples',
    ['apple_trader'] = 'Received ' ..Config.AppleJuice.. ' apple juice from the framer',
    ['error_appleprocessor'] = 'Hm, It seems like you don\'t have any apples to process... Come back later!',
    ['erroremptybucket'] = 'It seem like have a bucket',
	['get_buckets'] = 'Grabbing the Cow-Bucket',
    ['cow_milking'] = 'Milking The Cow',
    -- ['emptybucket'] = 'You don\'t have a empty bucket',
    -- ['killing_cow'] = 'Slaughtering Cow',
    -- ['error_rawmeat'] = 'Hm, It looks like you don\'t have any raw meat to process... Come back later!',
    -- ['cow_processbar'] = 'Cooking cow beef',
    -- ['cow_processing'] = 'You cooked ' ..Config.BeefProcessing.. ' raw cow beef',
    ['cow_dairyprocessorbar'] = 'Trading Raw Milk',
    ['milk_processing'] = 'You are processing ' ..Config.MilkProcessing.. ' buckets of raw milk',
    ['milk_trader'] = 'Received ' ..Config.Milk.. ' Bottles of milk',
    ['error_milkprocessor'] = 'It looks like you don\'t have any buckets of milk..',
    ['error_milklocation'] = 'Go to the Paleto Barn and milk the cows then come back!',
    ['error_hasbucket'] = 'You already has Empty Bucket!',

    ['picking_pumpkins'] = 'Picking Up Pumpkin',
    ['pumpkin_processingbar'] = 'Smashing Pumpkins',
    ['pumpkin_processing'] = 'Smashed ' ..Config.PumpkinProcessing,
    ['pumpkin_trader'] = 'Made ' ..Config.PumpkinBoxes.. ' Boxes of pumpkin pie',
    ['error_pumpkinsmashing'] = 'You don\'t have any pumpkins to smash',

    ['corn_picking'] = 'Picking Corn',
    ['corn_progressbar'] = 'Making Can Corn',
    ['corn_processing'] = 'Removed ' ..Config.CornProcessing.. ' corn',
    ['corn_processed'] = 'Made ' ..Config.CornProcessed.. ' Can\'s of corn',
    ['error_corncob'] = 'Seems like you don\'t have any corn cobs to process... Come Back Later!',

    ['grape_picking'] = 'Picking Grapes',
    ['grape_progressbar'] = 'Straining Grapes',
    ['grape_processing'] = 'Strained ' ..Config.GrapeProcessing.. ' grapes',
    ['grape_processed'] = 'Made ' ..Config.GrapeProcessed.. ' bottles of juice',
    ['error_grape'] = 'Hm, It seems like you don\'t have any grapes to process... Come back later!',

    ['greenpepper_picking'] = "Picking GreenPeppers",

    ['chillypepper_picking'] = 'Picking ChillyPeppers',
    ['chilly_hotsauce'] = 'Making Hot Sauce',
    ['chilly_processing'] = 'Crushed ' ..Config.ChillyProcessing.. ' chilly Peppers',
    ['chilly_processed'] = 'Made ' ..Config.ChillyProcessed.. ' hot sauce bottle\'s',
    ['error_chilly'] = 'Hm, It seems like you don\'t have any chilly peppers to process... Come back later!',

    ['tomatoes_picking'] = 'Picking Tomatoes',
    ['tomatoes_progressbar'] = 'Smashing Tomatoes',
    ['tomatoes_processing'] = 'Squeezed ' ..Config.TomatoesProcessing.. ' tomatoes',
    ['tomatoes_processed'] = 'Made ' ..Config.TomatoesProcessed.. ' jars of tomatopaste',
    ['error_tomatoes'] = 'Hm, It seems like you don\'t have any tomatoes to process... Come back later!',


    -- ['bacon_progressbar'] = 'Cooking Bacon',
    -- ['bacon_processing'] = 'You cooked ' ..Config.BaconProcessed.. ' pieces of bacon',
    -- ['error_bacon'] = 'Don\'t have any bacon to cook',

    -- ['ham_progressbar'] = 'Cooking Ham',
    -- ['ham_processing'] = 'You cooked ' ..Config.HamProcessed.. ' slices of ham',
    -- ['error_ham'] = 'Don\'t have any ham to cook',

    -- ['pork_progressbar'] = 'Cooking Pork',
    -- ['pork_cooking'] = 'You cooked ' ..Config.PorkProcessed.. ' slabs of pork',
    -- ['error_pork'] = 'Don\'t have any pork to cook',

    -- ['sausage_progressbar'] = 'Cooking Sausage',
    -- ['sausage_processing'] = 'You cooked ' ..Config.SausageProcessed.. ' pieces of sausages',
    -- ['error_sausage'] = 'Don\'t have any sausage to cook',

    -- ['killing_pig'] = 'Slaughtering Pig',
    -- ['pig_reward'] = 'Received items for killing the pig',

    -- ['error.soybean'] = 'You don\'t have any soybeans to feed the pigs',
    ['stress'] = 'Your Stress Was Relieved',
}