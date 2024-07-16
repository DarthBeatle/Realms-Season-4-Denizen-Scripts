Custom_Death_Messages:
    debug: true
    type: world
    events:
        on player death:

            - define death_messages <script[custom_death_message_data]>

# Death Cause Types
            - choose <context.cause>:

                - case BLOCK_EXPLOSION:
                    #TODO: Add messages for when player blows themselves up
                    #TODO: Add messages for when player is blown up by another player
                    #TODO: Add explosion messages for: End Crystal, Firework Rocket, Creeper
                    #TODO: Add potion and dragon breath deaths. Wait for potion bugs to be fixed in Denizen
# Death by TNT
                    - if <context.projectile.exists> && <context.projectile.name> == TNT:
                        - determine <[death_messages].parsed_key[tnt].random>

# Death by Respawn Anchor
                    - if <player.has_flag[clicked_respawn_anchor_in_overworld]>:
                        - determine <[death_messages].parsed_key[respawn_anchor_overworld].random>
                    - if <player.has_flag[clicked_respawn_anchor_in_end]>:
                        - determine <[death_messages].parsed_key[respawn_anchor_end].random>
# Death by Bed
                    - if <player.has_flag[clicked_bed_in_nether]>:
                        - determine <[death_messages].parsed_key[bed_nether].random>
                    - if <player.has_flag[clicked_bed_in_end]>:
                        - determine <[death_messages].parsed_key[bed_end].random>

                - case CAMPFIRE:
                    - determine <[death_messages].parsed_key[campfire].random>

                - case CONTACT:

# Death by Dripstone
                    - if <player.has_flag[damaged_by_pointed_dripstone]>:
                        - determine <[death_messages].parsed_key[pointed_dripstone].random>
# Death by Berry Bush
                    - else if <player.has_flag[damaged_by_sweet_berry_bush]>:
                        - determine <[death_messages].parsed_key[sweet_berry_bush].random>
# Death by Cactus
                    - else if <player.has_flag[damaged_by_cactus]>:
                        - determine <[death_messages].parsed_key[cactus].random>

                # - case DRAGON_BREATH: - Potion data currenty bugged
                #     - determine <[death_messages].parsed_key[dragon_breath].random>

                - case DROWNING:
                    - determine <[death_messages].parsed_key[drowning].random>

                # - case ENTITY_SWEEP_ATTACK:?

                - case ENTITY_EXPLOSION:
                    - if <context.damager.entity_type> == TNT_MINECART:
                        - determine <[death_messages].parsed_key[tnt_minecart].random>

                - case FALL:
                    - determine <[death_messages].parsed_key[fall].random>

                - case FALLING_BLOCK:

# Death by Pointed Dripstone
                    - if <context.damager.fallingblock_material.name> == pointed_dripstone:
                        - determine <[death_messages].parsed_key[falling_pointed_dripstone].random>

# Death by Anvil
                    - if <context.damager.fallingblock_material.name> == anvil:
                        - determine <[death_messages].parsed_key[anvil].random>

                - case FIRE:
                    - determine <[death_messages].parsed_key[fire].random>

                - case FIRE_TICK:
                    - determine <[death_messages].parsed_key[fire_tick].random>

                - case FLY_INTO_WALL:
                    - determine <[death_messages].parsed_key[fly_into_wall].random>

                - case FREEZE:
                    - determine <[death_messages].parsed_key[freeze].random>

                - case HOT_FLOOR:
                    - determine <[death_messages].parsed_key[hot_floor].random>

                - case LAVA:
                    - determine <[death_messages].parsed_key[lava].random>

                - case LIGHTNING:
                    - determine <[death_messages].parsed_key[lightning].random>

                # - case MAGIC:
                # - case POISON:
                # - case PROJECTILE:?

                - case SONIC_BOOM:
                    - determine <[death_messages].parsed_key[warden_sonic_boom].random>

                - case STARVATION:
                    - determine <[death_messages].parsed_key[starvation].random>

                - case SUFFOCATION:
                    - determine <[death_messages].parsed_key[suffocation].random>

                # - case THORNS:

                - case VOID:
                    - determine <[death_messages].parsed_key[void].random>

                - case WITHER:
                    - determine <[death_messages].parsed_key[wither_effect].random>

# For death causes

# # For killed by player or mobs
#             - if <context.damager.exists>:
#                 - choose <context.damager.name>:
#                     - case SKELETON:
#                         - random:
#                             - determine "<gray><player.name>: I swear he had aimbot!"
#                             - determine "<gray><player.name> got dunked on"
#                             - determine "<gray><player.name> took an arrow to the knee"
#                             - determine "<gray><player.name> died from a pew pew"
#                             - determine "<gray><player.name> was shot by skelly boi"
#                     - case CREEPER:
#                         - random:
#                             - determine "<gray><player.name> went out with a bang!"
#                             - determine "<gray><player.name> hugged a creeper"
#                             - determine "<gray><player.name> did not hear the SSSsss"
#                             - determine "<gray><player.name> doesn't believe in shields"
#                     - case SLIME:
#                         - random:
#                             - determine "<gray><player.name> was slain by slime, and embarrassment as well"
#                             - determine "<gray><player.name> got slimed"
#                             - determine "<gray><player.name> is an embarrassment to the server"
#                             - determine "<gray><player.name> has no clue what they are doing"
#                             - determine "<gray>The lowly slime has slain <player.name>. Oh how the mighty have fallen!"
#                     - case ENDERMAN:
#                         - random:
#                             - determine "<gray><player.name> got berried by an enderman"
#                             - determine "<gray><player.name> incurred the wrath of the elder gods and lost"
#                             - determine "<gray><player.name> lost a staring contest"
#                             - determine "<gray><player.name> tried to hug an enderman"
#                     - default:
#                         - determine "<gray><player.name> died to an unknown cause"

# Death by Ender Pearl
            - if <context.damager.exists> && <context.damager.name> == <player.name> && <context.projectile.name> == ENDER_PEARL:
                - determine <[death_messages].parsed_key[ender_pearl].random>

#TODO: Player vs Player - Save for Version 2
#TODO: Upload to Github
# # For when a player kills themselves or is killed by another player
#             - if <context.damager.exists> && <context.damager.name> == <player.name>:
#                 - random:
#                     - determine "<gray><player.name>, WHY... JUST WHY?"
#                     - determine "<gray><player.name> killed themselves, smh"
#             - if <context.damager.name> != <player.name> && <context.damager> == PLAYER:
#                 - random:
#                     - determine "<green><context.damager.name> <gray>PWNED <red><player.name><gray>! WHAT A NOOB!"
#                    - determine "<red><player.name> <gray>was killed by <green><context.damager.name><gray>!"