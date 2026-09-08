-- 60 secondes = 60 * 60 ticks
local INTERVALLE = 30 * 60

local function supprimer_ennemis()
    for _, surface in pairs(game.surfaces) do
        local ennemis = surface.find_entities_filtered({
            force = "enemy"
        })

        for _, ennemi in pairs(ennemis) do
            if ennemi.valid then
                ennemi.destroy()
            end
        end
    end

--    game.print("[Anti Enemies] Tous les ennemis et leurs bases ont été supprimés.")
end

-- Exécution toutes les 60 secondes
script.on_nth_tick(INTERVALLE, supprimer_ennemis)
