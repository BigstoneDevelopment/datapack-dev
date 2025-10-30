give @s music_disc_creator[ \
                        custom_name={ \
                            "color": "green", \
                            "text": "Component Saver", \
                            "italic": 0b, \
                            "font": "bigstone_sandbox:small_caps" \
                        }, \
                        item_model="bigstone_sandbox:component_saver", \
                        lore=[ \
                            { \
                                "color": "gray", \
                                "text": "Used to save Bigstone components safely.", \
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
                                "effects":["store_component"], \
                                "betrow_effects":["creative_self_delete_component"] \
                            } \
                        }, \
                        consumable={ \
                            consume_seconds:0.0, \
                            sound:"intentionally_empty", \
                            has_consume_particles:false \
                        }, \
                        use_cooldown={ \
                            seconds:10, \
                            cooldown_group:"bigstone_saver" \
                        }, \
                        !jukebox_playable, \
                        tooltip_style="bigstone_sandbox:bigstone_sandbox", \
                        max_stack_size=1 \
                     ] 1

dialog clear @s