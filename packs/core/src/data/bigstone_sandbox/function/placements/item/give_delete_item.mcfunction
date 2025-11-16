give @s music_disc_creator[ \
                        custom_name=[ \
                            { \
                                "color": "red", \
                                "translate": "bigstone_sandbox.item.component_breaker", \
                                "fallback": "", \
                                "italic": 0b, \
                                "font": "bigstone_sandbox:small_caps" \
                            }, \
                            { \
                                "color": "red", \
                                "translate": "bigstone_sandbox.dialog_menu.empty", \
                                "fallback": "Component Breaker", \
                                "italic": 0b, \
                                "font": "minecraft:default" \
                            } \
                        ], \
                        item_model="bigstone_sandbox:component_breaker", \
                        lore=[ \
                            { \
                                "color": "gray", \
                                "translate": "bigstone_sandbox.item.component_breaker_description", \
                                "fallback": "Used to break Bigstone components safely.", \
                                "italic": 0b \
                            }, \
                            "", \
                            [ \
                                { \
                                    "color": "yellow", \
                                    "translate": "bigstone_sandbox.item.right_click_action", \
                                    "fallback": "", \
                                    "font": "bigstone_sandbox:small_caps" \
                                }, \
                                { \
                                    "color": "yellow", \
                                    "translate": "bigstone_sandbox.dialog_menu.empty", \
                                    "fallback": "Right click to use", \
                                    "font": "minecraft:default" \
                                } \
                            ] \
                        ], \
                        custom_data={ \
                            "item_use_effect":{ \
                                "type":"bigstone_sandbox", \
                                "effects":["delete_component"] \
                            } \
                        }, \
                        consumable={ \
                            consume_seconds:0.0, \
                            sound:"intentionally_empty", \
                            has_consume_particles:false \
                        }, \
                        use_cooldown={ \
                            seconds:0.1, \
                            cooldown_group:"bigstone_component" \
                        }, \
                        !jukebox_playable, \
                        tooltip_style="bigstone_sandbox:bigstone_sandbox", \
                        max_stack_size=1 \
                     ] 1

dialog clear @s