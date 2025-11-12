give @s music_disc_creator[ \
                        custom_name={ \
                            "color": "red", \
                            "text": "Component Breaker", \
                            "italic": 0b, \
                            "font": "bigstone_sandbox:small_caps" \
                        }, \
                        item_model="bigstone_sandbox:component_breaker", \
                        lore=[ \
                            { \
                                "color": "gray", \
                                "text": "Used to break Bigstone components safely.", \
                                "italic": 0b \
                            }, \
                            "", \
                            { \
                                "color": "yellow", \
                                "text": "Right click to use", \
                                "font": "bigstone_sandbox:small_caps" \
                            } \
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