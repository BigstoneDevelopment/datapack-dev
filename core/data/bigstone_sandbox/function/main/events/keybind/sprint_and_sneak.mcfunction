
execute unless entity @s[tag=bigstone_sandbox.sprint_and_sneak_keybind] run return fail
advancement revoke @s only bigstone_sandbox:keybind/on_sprint_and_sneak
say test
function bigstone_sandbox:menu/dialog_action/open_menu