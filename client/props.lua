local QBCore = exports['qb-core']:GetCoreObject()
local BarnMan = BarnSeller.coords
local FoodMan = FoodProcessor.coords
local DairyMan = DairyProcessor.coords
local PigMan = PigFarmer
local SellerMan = Seller.coords
local PedModel = Config.PedModel
local PedHash = Config.PedHash
local pedfarmer1
local pedfarmer2
local pedfarmer3
local pedfarmer4
local pedfarmer5
local pedfarmer6
local pedcow
local pedcow1
local pedcow2
local pedcow3
local pedpig1
local pedpig2
local pedpig3
local pedpig4
local pedpig5
local pedpig6
local pedpig7
local pedpig8
local pedpig9
local pedpig10
local pedpig11
local pedpig12
local pedpig13
local pedpig14
local pedpig15
local pedpig16

CreateThread(function()
    while (true) do
        ClearAreaOfPeds(431.28, 6467.48, 28.77, 17.5, 1)
        ClearAreaOfPeds(2162.89, 4982.4, 41.29, 35.0, 1)
        Wait(0)
    end
end)

-- Animals
CreateThread(function()
    RequestModel( GetHashKey( "a_c_cow" ) )
    while ( not HasModelLoaded( GetHashKey( "a_c_cow" ) ) ) do
        Wait(1)
    end
    RequestModel( GetHashKey( "a_c_pig" ) )
    while ( not HasModelLoaded( GetHashKey( "a_c_pig" ) ) ) do
        Wait(1)
    end
    RequestModel( GetHashKey( PedModel ) )
    while ( not HasModelLoaded( GetHashKey( PedModel ) ) ) do
        Wait(1)
    end

    -- pedfarmer1 = CreatePed(1, PedHash, PigMan, false, true)
    pedfarmer2 = CreatePed(1, PedHash, DairyMan, false, true)
    pedfarmer3 = CreatePed(1, PedHash, FoodMan, false, true)
    pedfarmer4 = CreatePed(1, PedHash, SellerMan, false, true)
    pedfarmer5 = CreatePed(1, PedHash, BarnMan, false, true)
    pedcow = CreatePed(1, 0xFCFA9E1E, 434.06, 6472.8, 28.1, 77.31, false, true)
    pedcow1 = CreatePed(1, 0xFCFA9E1E, 425.61, 6463.31, 28.78, 31.94, false, true)
    pedcow2 = CreatePed(1, 0xFCFA9E1E, 431.66, 6458.51, 28.75, 0, false, true)
    pedcow3 = CreatePed(1, 0xFCFA9E1E, 437.68, 6453.88, 28.76, 0, false, true)
    pedpig1 = CreatePed(1, 0xB11BAB56, 2149.41, 5013.96, 41.39, 223.72, 0, false, true)
    pedpig2 = CreatePed(1, 0xB11BAB56, 2142.8, 5005.94, 41.35, 226.42, false, true)
    pedpig3 = CreatePed(1, 0xB11BAB56, 2135.95, 4998.94, 41.41, 199.16, false, true)
    pedpig4 = CreatePed(1, 0xB11BAB56, 2127.58, 4991.87, 41.49, 245.32, false, true)
    pedpig5 = CreatePed(1, 0xB11BAB56, 2144.25, 4974.22, 41.45, 33.79, false, true)
    pedpig6 = CreatePed(1, 0xB11BAB56, 2151.87, 4981.88, 41.41, 41.26, false, true)
    pedpig7 = CreatePed(1, 0xB11BAB56, 2159.0, 4989.05, 41.35, 49.21, false, true)
    pedpig8 = CreatePed(1, 0xB11BAB56, 2165.9, 4996.88, 41.31, 358.34, false, true)
    pedpig9 = CreatePed(1, 0xB11BAB56, 2176.46, 4986.36, 41.31, 8.87, false, true)
    pedpig10 = CreatePed(1, 0xB11BAB56, 2161.61, 4973.24, 41.35, 250.45, false, true)
    pedpig11 = CreatePed(1, 0xB11BAB56, 2155.13, 4965.68, 41.5, 205.91, false, true)
    pedpig12 = CreatePed(1, 0xB11BAB56, 2170.84, 4943.63, 41.26, 34.41, false, true)
    pedpig13 = CreatePed(1, 0xB11BAB56, 2169.13, 4979.77, 41.31, 208.55, 0, false, true)
    pedpig14 = CreatePed(1, 0xB11BAB56, 2181.43, 4954.0, 41.33, 123.76, false, true)
    pedpig15 = CreatePed(1, 0xB11BAB56, 2188.21, 4960.37, 41.32, 359.98, false, true)
    pedpig16 = CreatePed(1, 0xB11BAB56, 2194.04, 4964.97, 41.31, 65.12, false, true)
    SetEntityInvincible(pedfarmer1, true)
    SetBlockingOfNonTemporaryEvents(pedfarmer1, true)
    FreezeEntityPosition(pedfarmer1, true)
    SetEntityInvincible(pedfarmer2, true)
    SetBlockingOfNonTemporaryEvents(pedfarmer2, true)
    FreezeEntityPosition(pedfarmer2, true)
    SetEntityInvincible(pedfarmer3, true)
    SetBlockingOfNonTemporaryEvents(pedfarmer3, true)
    FreezeEntityPosition(pedfarmer3, true)
    SetEntityInvincible(pedfarmer4, true)
    SetBlockingOfNonTemporaryEvents(pedfarmer4, true)
    FreezeEntityPosition(pedfarmer4, true)
    SetEntityInvincible(pedfarmer5, true)
    SetBlockingOfNonTemporaryEvents(pedfarmer5, true)
    FreezeEntityPosition(pedfarmer5, true)
  end)

local respawnTime       = 30000 -- respawn time in milliseconds (30 seconds)


Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)
      local cow = pedcow
      local cow1 = pedcow1
      local cow2 = pedcow2
      local cow3 = pedcow3

      --Ped Cow 1
      SetPedAsNoLongerNeeded(cow)
      SetEntityAsMissionEntity(cow, true, true)
      --FreezeEntityPosition(cow, true)
      SetBlockingOfNonTemporaryEvents(cow, true)
      SetPedDiesWhenInjured(cow, false)
      SetPedCanPlayAmbientAnims(cow, true)
      SetPedCanRagdollFromPlayerImpact(cow, false)
      SetEntityInvincible(cow, true)

      --Ped Cow 2
      SetPedAsNoLongerNeeded(cow1)
      SetEntityAsMissionEntity(cow1, true, true)
      --FreezeEntityPosition(cow, true)
      SetBlockingOfNonTemporaryEvents(cow1, true)
      SetPedDiesWhenInjured(cow1, false)
      SetPedCanPlayAmbientAnims(cow1, true)
      SetPedCanRagdollFromPlayerImpact(cow1, false)
      SetEntityInvincible(cow1, true)

      --Ped Cow 3
      SetPedAsNoLongerNeeded(cow2)
      SetEntityAsMissionEntity(cow2, true, true)
      --FreezeEntityPosition(cow, true)
      SetBlockingOfNonTemporaryEvents(cow2, true)
      SetPedDiesWhenInjured(cow2, false)
      SetPedCanPlayAmbientAnims(cow2, true)
      SetPedCanRagdollFromPlayerImpact(cow2, false)
      SetEntityInvincible(cow2, true)

      --Ped Cow 4
      SetPedAsNoLongerNeeded(cow3)
      SetEntityAsMissionEntity(cow3, true, true)
      --FreezeEntityPosition(cow, true)
      SetBlockingOfNonTemporaryEvents(cow3, true)
      SetPedDiesWhenInjured(cow3, false)
      SetPedCanPlayAmbientAnims(cow3, true)
      SetPedCanRagdollFromPlayerImpact(cow3, false)
      SetEntityInvincible(cow3, true)
  end
end)

RegisterNetEvent('cowKilled')
AddEventHandler('cowKilled', function()
    Citizen.Wait(respawnTime)
    TriggerEvent('respawnCow')
end)

RegisterNetEvent('cowKilled1')
AddEventHandler('cowKilled1', function()
    Citizen.Wait(respawnTime)
    TriggerEvent('respawnCow1')
end)

RegisterNetEvent('cowKilled2')
AddEventHandler('cowKilled2', function()
    Citizen.Wait(respawnTime)
    TriggerEvent('respawnCow2')
end)

RegisterNetEvent('cowKilled3')
AddEventHandler('cowKilled3', function()
    Citizen.Wait(respawnTime)
    TriggerEvent('respawnCow3')
end)

RegisterNetEvent('pigKilled')
AddEventHandler('pigKilled', function()
    Citizen.Wait(respawnTime)
    TriggerEvent('respawnPig')
    TriggerEvent('respawnPig1')
    TriggerEvent('respawnPig2')
    TriggerEvent('respawnPig3')
    TriggerEvent('respawnPig4')
    TriggerEvent('respawnPig5')
    TriggerEvent('respawnPig6')
    TriggerEvent('respawnPig7')
    TriggerEvent('respawnPig8')
    TriggerEvent('respawnPig9')
    TriggerEvent('respawnPig10')
    TriggerEvent('respawnPig11')
    TriggerEvent('respawnPig12')
    TriggerEvent('respawnPig13')
    TriggerEvent('respawnPig14')
    TriggerEvent('respawnPig15')
    TriggerEvent('respawnPig16')
end)

RegisterNetEvent('respawnCow')
AddEventHandler('respawnCow', function()
    pedcow = CreatePed(1, 0xFCFA9E1E, 433.68, 6473.67, 28.1, 0, false, true)
    SetPedAsNoLongerNeeded(pedcow)
    SetEntityAsMissionEntity(pedcow, true, true)
    --FreezeEntityPosition(pedcow, true)
    SetBlockingOfNonTemporaryEvents(pedcow, true)
    SetPedDiesWhenInjured(pedcow, false)
    SetPedCanPlayAmbientAnims(pedcow, true)
    SetPedCanRagdollFromPlayerImpact(pedcow, false)
    SetEntityInvincible(pedcow, true)
end)

RegisterNetEvent('respawnCow1')
AddEventHandler('respawnCow1', function()
    pedcow1 = CreatePed(1, 0xFCFA9E1E, 425.61, 6463.31, 28.78, 0, false, true)
    SetPedAsNoLongerNeeded(pedcow1)
    SetEntityAsMissionEntity(pedcow1, true, true)
    --FreezeEntityPosition(pedcow, true)
    SetBlockingOfNonTemporaryEvents(pedcow1, true)
    SetPedDiesWhenInjured(pedcow1, false)
    SetPedCanPlayAmbientAnims(pedcow1, true)
    SetPedCanRagdollFromPlayerImpact(pedcow1, false)
    SetEntityInvincible(pedcow1, true)
end)

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)
      for pedcow in ipairs(GetActivePlayers()) do
          local coords = GetEntityCoords(GetPlayerPed(ped))
          local cow = GetClosestPed(coords.x, coords.y, coords.z, 10.0, 28, 1, 0, 0, 0)
          if DoesEntityExist(cow) and IsPedDeadOrDying(cow, true) then
              TriggerEvent('cowKilled')
              -- TriggerEvent('cowKilled1')
              -- TriggerEvent('cowKilled2')
              -- TriggerEvent('cowKilled3')
          end
      end
  end
end)

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)
      for pedcow1 in ipairs(GetActivePlayers()) do
          local coords = GetEntityCoords(GetPlayerPed(ped))
          local cow = GetClosestPed(coords.x, coords.y, coords.z, 10.0, 28, 1, 0, 0, 0)
          if DoesEntityExist(cow) and IsPedDeadOrDying(cow, true) then
              -- TriggerEvent('cowKilled')
               TriggerEvent('cowKilled1')
              -- TriggerEvent('cowKilled2')
              -- TriggerEvent('cowKilled3')
          end
      end
  end
end)


RegisterNetEvent('qb-simplefarming:slaughter1', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedcow) then
        TriggerEvent('animations:client:EmoteCommandStart', {"Boxing2"})
        QBCore.Functions.Progressbar('killing_cow', Config.Alerts['killing_cow'], 500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {
          }, {}, {}, function()
              DeleteEntity(pedcow)
              TriggerEvent('animations:client:EmoteCommandStart', {"c"})
              ClearPedTasks(PlayerPedId())
              TriggerServerEvent('qb-simplefarming:cowkilling')
              TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
              Wait(3000) -- 20 minutes
              pedcow = CreatePed(1, 0xFCFA9E1E, 433.68, 6473.67, 28.77, 0, false, true)
          end, function()
          QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:slaughter2', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedcow1) then
        TriggerEvent('animations:client:EmoteCommandStart', {"Boxing2"})
        QBCore.Functions.Progressbar('killing_cow', Config.Alerts['killing_cow'], 500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {
          }, {}, {}, function()
              DeleteEntity(pedcow1)
              TriggerEvent('animations:client:EmoteCommandStart', {"c"})
              TriggerServerEvent('qb-simplefarming:cowkilling')
              TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
              Wait(3000) -- 20 minutes
              pedcow1 = CreatePed(1, 0xFCFA9E1E, 425.61, 6463.31, 28.78, 0, false, true)
          end, function()
          QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)


RegisterNetEvent('qb-simplefarming:slaughter3', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedcow2) then
        TriggerEvent('animations:client:EmoteCommandStart', {"Boxing2"})
        QBCore.Functions.Progressbar('killing_cow', Config.Alerts['killing_cow'], 500, false, true, {
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {
          }, {}, {}, function()
              DeleteEntity(pedcow2)
              TriggerEvent('animations:client:EmoteCommandStart', {"c"})
              TriggerServerEvent('qb-simplefarming:cowkilling')
              TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
              Wait(3000) -- 20 minutes
              pedcow2 = CreatePed(1, 0xFCFA9E1E, 431.66, 6458.51, 28.75, 0, false, true)
          end, function()
          QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:slaughter4', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedcow3) then
        TriggerEvent('animations:client:EmoteCommandStart', {"Boxing2"})
        QBCore.Functions.Progressbar('killing_cow', Config.Alerts['killing_cow'], 3000, false, true, {
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {
          }, {}, {}, function()
              DeleteEntity(pedcow3)
              TriggerEvent('animations:client:EmoteCommandStart', {"c"})
              TriggerServerEvent('qb-simplefarming:cowkilling')
              TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
              Wait(3000) -- 20 minutes
              pedcow3 = CreatePed(1, 0xFCFA9E1E, 437.68, 6453.88, 28.76, 0, false, true)
          end, function()
          QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig1', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig1) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig1 = CreatePed(1, 0xB11BAB56, 2149.41, 5013.96, 41.39, 223.72, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig2', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig2) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig2)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig2 = CreatePed(1, 0xB11BAB56, 2142.8, 5005.94, 41.35, 226.42, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig3', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig3) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig3)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig3 = CreatePed(1, 0xB11BAB56, 2135.95, 4998.94, 41.41, 199.16, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig4', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig4) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig4)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig4 = CreatePed(1, 0xB11BAB56, 2127.58, 4991.87, 41.49, 245.32, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig5', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig5) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig5)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig5 = CreatePed(1, 0xB11BAB56, 2144.25, 4974.22, 41.45, 33.79, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig6', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig6) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig6)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig6 = CreatePed(1, 0xB11BAB56, 2151.87, 4981.88, 41.41, 41.26, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig7', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig7) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig7)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig7 = CreatePed(1, 0xB11BAB56, 2159.0, 4989.05, 41.35, 49.21, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig8', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig8) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig8)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig8 = CreatePed(1, 0xB11BAB56, 2165.9, 4996.88, 41.31, 358.34, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig9', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig9) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig9)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig9 = CreatePed(1, 0xB11BAB56, 2176.46, 4986.36, 41.31, 8.87, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig10', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig10) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig10)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig10 = CreatePed(1, 0xB11BAB56, 2161.61, 4973.24, 41.35, 250.45, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig11', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig11) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig11)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig11 = CreatePed(1, 0xB11BAB56, 2155.13, 4965.68, 41.5, 205.91, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig12', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig12) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig12)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig12 = CreatePed(1, 0xB11BAB56, 2170.84, 4943.63, 41.26, 34.41, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig13', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig13) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig13)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig13 = CreatePed(1, 0xB11BAB56, 2169.13, 4979.77, 41.31, 208.55, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig14', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig14) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig14)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig14 = CreatePed(1, 0xB11BAB56, 2181.43, 4954.0, 41.33, 123.76, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig15', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig15) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig15)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig15 = CreatePed(1, 0xB11BAB56, 2188.21, 4960.37, 41.32, 359.98, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)

RegisterNetEvent('qb-simplefarming:killpig16', function()
  QBCore.Functions.TriggerCallback('qb-simplefarming:weapon_knife', function(hasItem)
    if hasItem then
      if DoesEntityExist(pedpig16) then
      TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic3"})
        QBCore.Functions.Progressbar('Killing_Pig', Config.Alerts['killing_pig'], 12000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
          }, {}, {}, {}, function()
            DeleteEntity(pedpig16)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-simplefarming:slayreward')
            TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
            Wait(3000) -- 20 minutes
            pedpig16 = CreatePed(1, 0xB11BAB56, 2194.04, 4964.97, 41.31, 65.12, 0, false, true)
          end, function()
            QBCore.Functions.Notify(Config.Alerts['cancel'], "error")
        end)
      end
    elseif not hasItem then
      QBCore.Functions.Notify(Config.Alerts['weapon'], "error", 3000)
    end
  end)
end)