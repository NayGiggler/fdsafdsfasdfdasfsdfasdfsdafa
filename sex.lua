local enemies = {}
local colors = {}
colors["visible"] = {1, 0, 0, 1} -- red
colors["occluded"] = {0, 0, 1, 1} -- blue

function drawESP()
    for i, enemy in ipairs(enemies) do
        local is_visible = engine.trace_line(local_player.eye_pos(), enemy.head_pos())
        local color = is_visible and colors["visible"] or colors["occluded"]
        renderer.circle(enemy.head_pos(), color, 10)
    end
end

function onPaint()
    if not engine.is_in_game() then
        return
    end

    local players = entitylist.get_players(true, true)
    for i, player in ipairs(players) do
        if player:get_team_number() ~= local_player:get_team_number() and player:is_alive() then
            enemies[player:get_name()] = player
        end
    end

    drawESP()
end

callbacks.register("paint", onPaint)
