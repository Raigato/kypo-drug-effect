DURATION = 60*1000*1.0
ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)
--SetPedMovementClipset(GetPlayerPed(-1), "move_m@quick", true)

function DisplayNotification( text )
  SetNotificationTextEntry( "STRING" )
  AddTextComponentString( text )
  DrawNotification( false, false )
end

-- // EFFECTS
function beer()
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()

  RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK")
  while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
    Citizen.Wait(0)
  end
  DisplayNotification("You are very drunk!")
  TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_PARTYING", 0, 1)
  Citizen.Wait(3000)
  ClearPedTasksImmediately(playerPed)
  SetTimecycleModifier("spectator5")
  SetPedMotionBlur(playerPed, true)
  SetPedMovementClipset(playerPed, "MOVE_M@DRUNK@VERYDRUNK", true)
  SetPedIsDrunk(playerPed, true)
  AnimpostfxPlay("ChopVision", 10000001, true)
  ShakeGameplayCam("DRUNK_SHAKE", 3.0)
  Citizen.Wait(DURATION)
-- after wait stop all 
  SetPedIsDrunk(GetPlayerPed(-1), false)		
  SetPedMotionBlur(playerPed, false)
  ResetPedMovementClipset(GetPlayerPed(-1))
  AnimpostfxStopAll()
  ShakeGameplayCam("DRUNK_SHAKE", 0.0)
  SetTimecycleModifierStrength(0.0)
end

function coke()
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("MOVE_M@QUICK") 
    while not HasAnimSetLoaded("MOVE_M@QUICK") do
      Citizen.Wait(0)
    end    
    DisplayNotification('You took some coke!')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SUPERHERO", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator5")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "MOVE_M@QUICK", true)
    SetPedIsDrunk(playerPed, true)
    AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 3.0)
    Citizen.Wait(DURATION)
-- after wait stop all 
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end

function weed()
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
  RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK") 
  while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
    Citizen.Wait(0)
  end    
  DisplayNotification('You took some weed!')
  TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
  Citizen.Wait(3000)
  ClearPedTasksImmediately(playerPed)
  SetTimecycleModifier("spectator6")
  SetPedMotionBlur(playerPed, true)
  SetPedMovementClipset(playerPed, "MOVE_M@DRUNK@VERYDRUNK", true)
  SetPedIsDrunk(playerPed, true)
  AnimpostfxPlay("PPGreen", 10000001, true)
  ShakeGameplayCam("DRUNK_SHAKE", 1.0)
--vvvvvvvvvvvvvvvv
  Citizen.Wait(DURATION)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
  SetPedIsDrunk(GetPlayerPed(-1), false)		
  SetPedMotionBlur(playerPed, false)
  ResetPedMovementClipset(GetPlayerPed(-1))
  AnimpostfxStopAll()
  ShakeGameplayCam("DRUNK_SHAKE", 0.0)
  SetTimecycleModifierStrength(0.0)
end

function heroin()  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
  RequestAnimSet("move_m@hobo@a") 
  while not HasAnimSetLoaded("move_m@hobo@a") do
    Citizen.Wait(0)
  end    
  DisplayNotification('You took some Heroin!')
  TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
  Citizen.Wait(3000)
  ClearPedTasksImmediately(playerPed)
  SetTimecycleModifier("spectator3")
  SetPedMotionBlur(playerPed, true)
  SetPedMovementClipset(playerPed, "move_m@hobo@a", true)
  SetPedIsDrunk(playerPed, true)
  AnimpostfxPlay("HeistCelebPass", 10000001, true)
  ShakeGameplayCam("DRUNK_SHAKE", 3.0)
--vvvvvvvvvvvvvvvv
  Citizen.Wait(DURATION)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
  SetPedIsDrunk(GetPlayerPed(-1), false)		
  SetPedMotionBlur(playerPed, false)
  ResetPedMovementClipset(GetPlayerPed(-1))
  AnimpostfxStopAll()
  ShakeGameplayCam("DRUNK_SHAKE", 0.0)
  SetTimecycleModifierStrength(0.0)
end

function ecstasy()
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
  RequestAnimSet("move_m@buzzed") 
  while not HasAnimSetLoaded("move_m@buzzed") do
    Citizen.Wait(0)
  end    
  DisplayNotification('You took some LSD!')
  TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
  Citizen.Wait(3000)
  ClearPedTasksImmediately(playerPed)
  SetPedMotionBlur(playerPed, true)
  SetPedMovementClipset(playerPed, "move_m@buzzed", true)
  SetPedIsDrunk(playerPed, true)
  SetTimecycleModifier("spectator5")
  AnimpostfxPlay("DMT_flight", 10000001, true)
  ShakeGameplayCam("DRUNK_SHAKE", 1.5)
--vvvvvvvvvvvvvvvv
  Citizen.Wait(DURATION)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
  SetPedIsDrunk(GetPlayerPed(-1), false)		
  SetPedMotionBlur(playerPed, false)
  ResetPedMovementClipset(GetPlayerPed(-1))
  AnimpostfxStopAll()
  ShakeGameplayCam("DRUNK_SHAKE", 0.0)
  SetTimecycleModifierStrength(0.0)
end

function lsd()
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
  RequestAnimSet("move_m@buzzed") 
  while not HasAnimSetLoaded("move_m@buzzed") do
    Citizen.Wait(0)
  end    
  DisplayNotification('You took some LSD!')
  TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
  Citizen.Wait(3000)
  ClearPedTasksImmediately(playerPed)
  SetPedMotionBlur(playerPed, true)
  SetPedMovementClipset(playerPed, "move_m@buzzed", true)
  SetPedIsDrunk(playerPed, true)
  SetTimecycleModifier("spectator5")
  AnimpostfxPlay("PeyoteIn", 10000001, true)
  ShakeGameplayCam("DRUNK_SHAKE", 1.5)
--vvvvvvvvvvvvvvvv
  Citizen.Wait(DURATION)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
  SetPedIsDrunk(GetPlayerPed(-1), false)		
  SetPedMotionBlur(playerPed, false)
  ResetPedMovementClipset(GetPlayerPed(-1))
  AnimpostfxStopAll()
  ShakeGameplayCam("DRUNK_SHAKE", 0.0)
  SetTimecycleModifierStrength(0.0)
end

function meth()
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
  RequestAnimSet("move_m@drunk@slightlydrunk") 
  while not HasAnimSetLoaded("move_m@drunk@slightlydrunk") do
    Citizen.Wait(0)
  end    
  DisplayNotification('You took some Meth!')
  TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
  Citizen.Wait(3000)
  ClearPedTasksImmediately(playerPed)
  SetPedMotionBlur(playerPed, true)
  SetPedMovementClipset(playerPed, "move_m@drunk@slightlydrunk", true)
  SetPedIsDrunk(playerPed, true)
  SetTimecycleModifier("spectator5")
  AnimpostfxPlay("SuccessMichael", 10000001, true)
  ShakeGameplayCam("DRUNK_SHAKE", 1.5)
--vvvvvvvvvvvvvvvv
  Citizen.Wait(DURATION)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
  SetPedIsDrunk(GetPlayerPed(-1), false)		
  SetPedMotionBlur(playerPed, false)
  ResetPedMovementClipset(GetPlayerPed(-1))
  AnimpostfxStopAll()
  ShakeGameplayCam("DRUNK_SHAKE", 0.0)
  SetTimecycleModifierStrength(0.0)
end

function lsa()
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
  RequestAnimSet("move_m@buzzed") 
  while not HasAnimSetLoaded("move_m@buzzed") do
    Citizen.Wait(0)
  end    
  DisplayNotification('You took some LSA!')
  TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
  Citizen.Wait(3000)
  ClearPedTasksImmediately(playerPed)
  SetPedMotionBlur(playerPed, true)
  SetPedMovementClipset(playerPed, "move_m@buzzed", true)
  SetPedIsDrunk(playerPed, true)
  SetTimecycleModifier("spectator5")
  AnimpostfxPlay("PeyoteOut", 10000001, true)
  ShakeGameplayCam("DRUNK_SHAKE", 1.5)
--vvvvvvvvvvvvvvvv
  Citizen.Wait(DURATION)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
  SetPedIsDrunk(GetPlayerPed(-1), false)		
  SetPedMotionBlur(playerPed, false)
  ResetPedMovementClipset(GetPlayerPed(-1))
  AnimpostfxStopAll()
  ShakeGameplayCam("DRUNK_SHAKE", 0.0)
  SetTimecycleModifierStrength(0.0)
end

function sober()
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()

  SetPedIsDrunk(GetPlayerPed(-1), false)		
  SetPedMotionBlur(playerPed, false)
  ResetPedMovementClipset(GetPlayerPed(-1))
  AnimpostfxStopAll()
  ShakeGameplayCam("DRUNK_SHAKE", 0.0)
  SetTimecycleModifierStrength(0.0)
end

-- // EVENTS
RegisterNetEvent('kypo-drug-effect:onBeer')
AddEventHandler('kypo-drug-effect:onBeer', beer)

RegisterNetEvent('kypo-drug-effect:onCoke')
AddEventHandler('kypo-drug-effect:onCoke', coke)

RegisterNetEvent('kypo-drug-effect:onWeed')
AddEventHandler('kypo-drug-effect:onWeed', weed)

RegisterNetEvent('kypo-drug-effect:onHeroin')
AddEventHandler('kypo-drug-effect:onHeroin', heroin)

RegisterNetEvent('kypo-drug-effect:onEcstasy')
AddEventHandler('kypo-drug-effect:onEcstasy', ecstasy)

RegisterNetEvent('kypo-drug-effect:onLsd')
AddEventHandler('kypo-drug-effect:onLsd', lsd)

RegisterNetEvent('kypo-drug-effect:onMeth')
AddEventHandler('kypo-drug-effect:onMeth', meth)

RegisterNetEvent('kypo-drug-effect:onLsa')
AddEventHandler('kypo-drug-effect:onLsa', lsa)

RegisterNetEvent('kypo-drug-effect:onSober')
AddEventHandler('kypo-drug-effect:onSober', sober)

-- // COMMANDS
RegisterCommand("beer", function(source,args,rawCommand)
  beer()
end, false)

RegisterCommand("coke", function(source,args,rawCommand)
  coke()
end, false)

RegisterCommand("weed", function(source,args,rawCommand)
  weed()
end, false)

RegisterCommand("heroin", function(source,args,rawCommand)
  heroin()
end, false)

RegisterCommand("ecstasy", function(source,args,rawCommand)
  ecstasy()
end, false)

RegisterCommand("lsd", function(source,args,rawCommand)
  lsd()
end, false)

RegisterCommand("meth", function(source,args,rawCommand)
  meth()
end, false)

RegisterCommand("lsa", function(source,args,rawCommand)
  lsa()
end, false)

RegisterCommand("sober", function(source,args,rawCommand)
  sober()
end, false)