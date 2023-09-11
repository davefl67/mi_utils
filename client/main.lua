-- remove idle cam
AddEventHandler('onResourceStart', function()
	if CG.idle then
		DisableIdleCamera(true)
	end
	if CG.skill.allow then
		StatSetInt('MP0_SHOOTING_ABILITY', CG.skill.shooting, true)
		StatSetInt('MP0_STAMINA', CG.skill.stamina, true)
		StatSetInt('MP0_STRENGTH', CG.skill.strength, true)
		StatSetInt('MP0_LUNG_CAPACITY', CG.skill.breathing, true)
		StatSetInt('MP0_WHEELIE_ABILITY', CG.skill.wheelie, true)
		StatSetInt('MP0_FLYING_ABILITY', CG.skill.flying, true)
		StatSetInt('MP0_STEALTH_ABILITY', CG.skill.stealth, true)
	end
end)

Citizen.CreateThread(function()
	while CG.dispatch do
		Wait(500)
		for i = 1, 12 do
			EnableDispatchService(i, false)
		end
		ClearAreaOfCops(0.0, 0.0, 0.0, 10000.0, true)
	end
end)

-- main thread
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if CG.radios then
			local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
			SetVehicleRadioEnabled(vehicle, false)
		end
		if CG.hud then
			HideHudComponentThisFrame(2)
			HideHudComponentThisFrame(3)
			HideHudComponentThisFrame(4)
			HideHudComponentThisFrame(6)
			HideHudComponentThisFrame(7)
			HideHudComponentThisFrame(8)
			HideHudComponentThisFrame(9)
		end
		if CG.aim then
			HideHudComponentThisFrame(14)
		end
		if CG.dmg then
			SetWeaponDamageModifier(0x92A27487, 0.35) -- cavalry dagger
			SetWeaponDamageModifier(0x958A4A8F, 0.20) -- baseball bat
			SetWeaponDamageModifier(0xF9E6AA4B, 0.30) -- broken bottle
			SetWeaponDamageModifier(0xA2719263, 0.20) -- unarmed
			SetWeaponDamageModifier(0x8BB05FD7, 0.15) -- flashligh
			SetWeaponDamageModifier(0x440E4788, 0.20) -- golfclub
			SetWeaponDamageModifier(0x84BD7BFD, 0.30) -- crowbar
			SetWeaponDamageModifier(0x4E875F73, 0.25) -- hammer
			SetWeaponDamageModifier(0xF9DCBF2D, 0.30) -- hatchet
			SetWeaponDamageModifier(0xD8DF3C3C, 0.25) -- brass knuckles
			SetWeaponDamageModifier(0x99B507EA, 0.35) -- knife
			SetWeaponDamageModifier(0xDD5DF8D9, 0.40) -- machete
			SetWeaponDamageModifier(0xDFE37640, 0.25) -- switch blade
			SetWeaponDamageModifier(0x678B81B1, 0.20) -- nightstick
			SetWeaponDamageModifier(0x19044EE0, 0.30) -- pipe wrench
			SetWeaponDamageModifier(0xCD274149, 0.40) -- battle axe
			SetWeaponDamageModifier(0x94117305, 0.20) -- poolcue
			SetWeaponDamageModifier(0x3813FC08, 0.30) -- stone hatched
			SetWeaponDamageModifier(0x6589186A, 0.20) -- candycane
		end
		if CG.water then
			WaterOverrideSetStrength(0.6)
		end
	end
end)
