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

data modify storage bs:ctx _ set value {r:"",g:"",b:"",r1:"",g1:"",b1:""}
$data modify storage bs:ctx _.r set from storage bs:const color.hex_chars[$(x)]
$data modify storage bs:ctx _.g set from storage bs:const color.hex_chars[$(y)]
$data modify storage bs:ctx _.b set from storage bs:const color.hex_chars[$(z)]
$data modify storage bs:ctx _.r1 set from storage bs:const color.hex_chars[$(x1)]
$data modify storage bs:ctx _.g1 set from storage bs:const color.hex_chars[$(y1)]
$data modify storage bs:ctx _.b1 set from storage bs:const color.hex_chars[$(z1)]
