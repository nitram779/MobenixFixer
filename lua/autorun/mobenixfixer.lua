-- Mobenix Fixer v1.1
-- Made by nitram779
-- TODO:
-- 	Find a way to properly disable Wire Door Controller dynamic shadows.
if SERVER then
	local function MobenixFix()
		print("Mobenix detected! Fixing HDR and some other stuff...")

		-- Adds the missing tonemap controller. Now the map will no longer burn your eyes.
		local tonemap = ents.Create("env_tonemap_controller")
		tonemap:Fire("SetTonemapRate", "1")
		tonemap:Fire("SetBloomScale", "0.2")
		tonemap:Fire("SetAutoExposureMin", "0.5")
		tonemap:Fire("SetAutoExposureMax", "1.8")

		-- Disables dynamic shadows on prop_door_rotating's.
		for k,v in ipairs(ents.FindByClass("prop_door_rotating")) do
			v:Fire("DisableShadow")
		end

		-- Disables the annoying Easter egg sounds.
		for k,v in ipairs(ents.FindByName("eggsound*")) do
			v:Remove()
		end
	end

	hook.Add( "InitPostEntity", "mobenixfix", function()
		if (game.GetMap())=="gm_mobenix_v3_final" then
			MobenixFix()
		end
	end)

	hook.Add( "PostCleanupMap", "mobenixfix", function()
		if (game.GetMap())=="gm_mobenix_v3_final" then
			MobenixFix()
		end
	end)
end
