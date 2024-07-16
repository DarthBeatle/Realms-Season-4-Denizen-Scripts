Debug_Death_Messages:
    debug: true
    type: world
    events:
        on player death:
        ## For Debugging
            - narrate "<yellow>Cause: <green><context.cause>"
            - narrate "<yellow>Context Message: <green><context.message>"
            - if <context.damager.exists>:
                - narrate "<yellow>Damager: <green><context.damager>"
                - if <context.damager.name.exists>:
                    - narrate "<yellow>Damager Name: <green><context.damager.name>"
            - if <context.projectile.exists>:
                - narrate "<yellow>Projectile: <green><context.projectile.name>"
            - narrate "<yellow>Death Location: <green><player.last_death_location.xyz>"
            - narrate "<yellow>World: <green><player.location.world.name>"
            - if <context.damager.fallingblock_material.exists>:
                - narrate "<yellow>Falling Block: <green><context.damager.fallingblock_material.name>"
            # - determine "<&8>[<&c>🕱<&8>] <&7><context.message>"