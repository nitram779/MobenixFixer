# MobenixFixer
Fixes HDR and some other stuff on a GMod map "gm_mobenix_v3_final".

Server-side only! You must ask the server owner or admin with access to the server codebase to add it to a server with a Mobenix map.

### What does it fix?:
* Adds the missing tonemap controller. Now the map will no longer burn your eyes.
* Disables dynamic shadows on prop_door_rotating's. Fixes glitchy door shadows, especially in apartments.
* Disables Easter egg sounds. (Because it has a "Play everywhere" spawnflag and can confuse players in multiplayer. It is currently impossible to override the spawnflag without modifying the map.)

### TODO:
* Find a way to properly disable Wire Door Controller dynamic shadows.
