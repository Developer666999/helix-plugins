local PLUGIN = PLUGIN

PLUGIN.name = "Эффекты выстрелов"
PLUGIN.author = "developer"
PLUGIN.description = "Очень просто скрипт на клиентский огонь от оружия."

if CLIENT then
	function PLUGIN:EntityFireBullets(ent, data)
		local dlight = DynamicLight( ent:EntIndex() )

		if ( dlight ) then
			dlight.pos = ent:GetShootPos()
			dlight.dir = (ent:GetPos() - ent:GetPos()) * -1
			dlight.r = 255
			dlight.g = 255
			dlight.b = 255
			dlight.brightness = 2.5
			dlight.Decay = 3000
			dlight.Size = 175
			dlight.DieTime = CurTime() + 0.4
		end
	end
end

--developer#8523