function IsPedInAnyEVVehicle(ped)
    ped = ped or GetPlayerPed(-1)
    return IsPedInAnyVehicle(ped) and IsEV(GetPedVehicleName(ped))
end

function IsPlayersLastVehicleEV()
    return IsEV(GetVehicleDisplayName(GetPlayersLastVehicle()))
end

function IsEV(name)
    for _, evName in ipairs(Config.VehicleNames) do
        if name == evName then
            return true
        end
    end
    return false
end

function IsPedDriving(ped)
    ped = ped or GetPlayerPed(-1)
    return ped == GetPedInVehicleSeat(GetVehiclePedIsIn(ped, false), -1)
end

function GetPedVehicleName(ped)
    ped = ped or GetPlayerPed(-1)
    return GetVehicleDisplayName(
            GetVehiclePedIsUsing(ped))
end

function GetVehicleDisplayName(veh)
    return GetDisplayNameFromVehicleModel(
            GetEntityModel(veh))
end

function GetEpoch()
    return Citizen.InvokeNative(0x9a73240b49945c76)
end

function LoadAnimDict(dict)
	while(not HasAnimDictLoaded(dict)) do
		Citizen.Wait(1)
		RequestAnimDict(dict)
	end
end


