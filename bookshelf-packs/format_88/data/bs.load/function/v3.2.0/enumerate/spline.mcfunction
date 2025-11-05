# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2025 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

# Add the version of the module to the list of available modules
data modify storage bs:data load.modules append value {module:"bs.spline",version:"3.2.0",enabled:0b}
scoreboard players add $bs.spline.major load.status 0
scoreboard players add $bs.spline.minor load.status 0
scoreboard players add $bs.spline.patch load.status 0

# Count the number of major versions
execute unless score $bs.spline.major load.status matches 3 run scoreboard players add #bs.spline.major_versions load.status 1

# Set the latest available version for the module
execute unless score $bs.spline.major load.status matches ..3 run return 0
execute if score $bs.spline.major load.status matches 3 unless score $bs.spline.minor load.status matches ..2 run return 0
execute if score $bs.spline.major load.status matches 3 if score $bs.spline.minor load.status matches 2 unless score $bs.spline.patch load.status matches ..0 run return 0
scoreboard players set $bs.spline.major load.status 3
scoreboard players set $bs.spline.minor load.status 2
scoreboard players set $bs.spline.patch load.status 0
