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
$data modify storage bigstone_sandbox struc_ID set value $(ID)
execute store result score #c bs.ctx run data get storage bigstone_sandbox struc_ID[0] 1

scoreboard players operation #r bs.ctx = #c bs.ctx
scoreboard players operation #r bs.ctx /= 65536 bs.const
scoreboard players operation #g bs.ctx = #c bs.ctx
scoreboard players operation #g bs.ctx /= 256 bs.const
scoreboard players operation #b bs.ctx = #c bs.ctx

execute store result storage bs:ctx x int 1 run scoreboard players operation #r bs.ctx %= 256 bs.const
execute store result storage bs:ctx y int 1 run scoreboard players operation #g bs.ctx %= 256 bs.const
execute store result storage bs:ctx z int 1 run scoreboard players operation #b bs.ctx %= 256 bs.const

execute store result score #c bs.ctx run data get storage bigstone_sandbox struc_ID[1] 1

scoreboard players operation #r bs.ctx = #c bs.ctx
scoreboard players operation #r bs.ctx /= 65536 bs.const
scoreboard players operation #g bs.ctx = #c bs.ctx
scoreboard players operation #g bs.ctx /= 256 bs.const
scoreboard players operation #b bs.ctx = #c bs.ctx

execute store result storage bs:ctx x1 int 1 run scoreboard players operation #r bs.ctx %= 256 bs.const
execute store result storage bs:ctx y1 int 1 run scoreboard players operation #g bs.ctx %= 256 bs.const
execute store result storage bs:ctx z1 int 1 run scoreboard players operation #b bs.ctx %= 256 bs.const

function bigstone_sandbox:util/uuid_to_hex/get_hexes with storage bs:ctx
function bigstone_sandbox:util/uuid_to_hex/concat_hexes with storage bs:ctx _
