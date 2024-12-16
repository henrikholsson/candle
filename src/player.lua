-- define sprite numbers for the animation frames
stand_frame = 1

-- Idle --
idle_frames = {0,2,4}
idle_frame = 0
idle_timer = 0
idle_speed = 0.2


player_framewidth = 2
player_frameheight = 2



walk_frames = {2, 3, 4, 3} -- cycle through these frames
anim_frame = 1
anim_timer = 0
anim_speed = 0.1 -- adjust for faster/slower animation

-- character's position
player_x = 64
player_y = 64

-- movement speed
player_speed = 2


function update_idle_animation()
    idle_timer += idle_speed -- Increment the timer

    if idle_timer >= 1 then
        idle_timer = 0 -- Reset the timer
        idle_frame = (idle_frame % #idle_frames) + 1 -- Cycle to the next frame
        print(idle_frame)
    end
end


function renderplayer()   
    print(idle_frame)
    spr(idle_frames[idle_frame], player_x, player_y, player_framewidth, player_frameheight)
end


function _update()

    update_idle_animation();
    -- player movement
    -- moving = false
    -- if btn(0) then -- left
    --     player_x -= player_speed
    --     moving = true
    -- elseif btn(1) then -- right
    --     player_x += player_speed
    --     moving = true
    -- elseif btn(2) then -- up
    --     player_y -= player_speed
    --     moving = true
    -- elseif btn(3) then -- down
    --     player_y += player_speed
    --     moving = true
    -- end

    -- -- update animation if moving
    -- if moving then
    --     anim_timer += anim_speed
    --     if anim_timer >= 1 then
    --         anim_timer = 0
    --         anim_frame = (anim_frame % #walk_frames) + 1
    --     end
    -- else
    --     -- reset to standing frame when not moving
    --     anim_frame = 1
    -- end
end

function _draw()
    cls()
    -- draw the character using the current animation frame
    print("drawing player");
    renderplayer()
    -- if moving then
    --     spr(walk_frames[anim_frame], player_x, player_y)
    -- else
    --     spr(stand_frame, player_x, player_y)
    -- end
end