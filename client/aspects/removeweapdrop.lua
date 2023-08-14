-- credit to Dolu for the method
-- https://forum.cfx.re/t/release-delete-weapon-drops-from-npc/60818/26?u=agimir
function RemoveWeaponDrops()
	RemoveAllPickupsOfType(14)
end

Citizen.CreateThread(function()
    while CG.noweapdrop do
        Citizen.Wait(0)
        RemoveWeaponDrops();
    end
end)