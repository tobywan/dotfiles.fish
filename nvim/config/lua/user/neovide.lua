-- Neovide gui editor https://github.com/neovide/Neovide

-- Setting g:neovide_refresh_rate to a positive integer will set the refresh rate of the app. This is limited by the refresh rate of your physical hardware, but can be lowered to increase battery life.
vim.g.neovide_refresh_rate = 140

--Setting g:neovide_transparency to a value between 0.0 and 1.0 will set the opacity of the window to that value.
vim.g.neovide_transparency = 1.0
-- vim.g.neovide_transparency = 0.8

-- Setting g:neovide_floating_blur_amount_x and g:neovide_floating_blur_amount_y controls the blur radius on the respective axis for floating windows.
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0

-- Setting g:neovide_no_idle to a boolean value will force neovide to redraw all the time. This can be a quick hack if animations appear to stop too early.
-- vim.g.neovide_no_idle = true

-- Setting g:neovide_fullscreen to a boolean value will set whether the app should take up the entire screen. This uses the so called "windowed fullscreen" mode that is sometimes used in games which want quick window switching.
vim.g.neovide_fullscreen = false

-- Setting g:neovide_remember_window_size to a boolean value will determine whether the window size from the previous session or the default size will be used on startup. The commandline option --geometry will take priority over this value.
vim.g.neovide_remember_window_size = true

-- Setting this to true enables the profiler, which shows a frametime graph in the upper left corner.
vim.g.neovide_profiler = false

-- Setting g:neovide_input_use_logo to a boolean value will change how logo key (also known as super key, command key or windows key) is handled, allowing all key combinations containing logo to be forwarded to neovim.
vim.g.neovide_input_use_logo = false

--[[
Setting g:neovide_touch_deadzone to a value equal or higher than 0.0 will set how many pixels
the finger must move away from the start position when tapping on the screen for the touch to
to be interpreted as a scroll gesture. If the finger stayed in that area once lifted or the
drag timeout happened, however, the touch will be interpreted as tap gesture and the cursor
will move there. A value lower than 0.0 will cause this feature to be disabled and all touch
events will be interpreted as scroll gesture.
--]]
vim.g.neovide_touch_deadzone = 6.0

--[[
Setting g:neovide_touch_drag_timeout will affect how many seconds
the cursor has to stay inside g:neovide_touch_deadzone in order to begin
"dragging": Once started, the finger can be moved to another position inside
order to form a visual selection. If this happens too often accidentally to
you, set this to a higher value like 0.3 or 0.7
--]]
vim.g.neovide_touch_drag_timeout = 0.17

-- Setting g:neovide_cursor_animation_length determines the time it takes for the cursor to complete it's animation in seconds.
vim.g.neovide_cursor_animation_length = 0.02

-- Setting g:neovide_cursor_trail_length determines how much the trail of the cursor lags behind the front edge.
vim.g.neovide_cursor_trail_length = 0.5

-- Enables or disables antialiasing of the cursor quad. Disabling may fix some cursor visual issues.
vim.g.neovide_cursor_antialiasing = true

--[[
Specify cursor outline width in ems. You probably want this to be a positive value
less than 0.5. If the value is <=0 then the cursor will be integer visible. This setting
takes effect when the editor window is unfocused, at which time a block cursor will
be rendered as an outline instead of as a full rectangle.

--]]

vim.g.neovide_cursor_unfocused_outline_width = 0.125

-- There are a number of vfx modes you can enable which produce particles behind the cursor. These are enabled by setting g:neovide_cursor_vfx_mode to one of the following constants.
-- vim.g.neovide_cursor_vfx_mode = "railgun"
-- vim.g.neovide_cursor_vfx_mode = "torpedo"
-- vim.g.neovide_cursor_vfx_mode = "pixiedust"
-- vim.g.neovide_cursor_vfx_mode = "sonicboom"
-- vim.g.neovide_cursor_vfx_mode = "ripple"
-- vim.g.neovide_cursor_vfx_mode = "wireframe"

-- Particle Settings
-- Options for configuring the particle generation and behavior.

-- Particle Opacity
vim.g.neovide_cursor_vfx_opacity = 200.0
-- Sets the transparency of the generated particles.

-- Particle Lifetime
vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
-- Sets the amount of time the generated particles should survive.

-- Particle Density
vim.g.neovide_cursor_vfx_particle_density = 7.0
-- Sets the number of generated particles.

-- Particle Speed
vim.g.neovide_cursor_vfx_particle_speed = 10.0
-- Sets the speed of particle movement.

-- Particle Phase
vim.g.neovide_cursor_vfx_particle_phase = 1.5
-- Sets ... the phase? I'm not sure. Go poke @jonvaldes to figure out what it does.

-- Particle Curl
vim.g.neovide_cursor_vfx_particle_curl = 1.0
-- Sets the ... I guess curl. I believe it has something to do with how
-- the particles rotate in the Railgun trail. Again, go bug @jonvaldes.
