Custom_Join_And_Leave_Messages:
    debug: false
    type: world
    events:
        on player joins:
            - random:
                - define message "<yellow>Welcome, <player.name>"
                - define message "<yellow><player.name> <reset><yellow>kinda looks like an amonger... kinda"
                - define message "<yellow><player.name> has dry lips... no no don't try licking them everyone already knows"
                - define message "<yellow><player.name> <reset><yellow>was dared to join"
                - define message "<yellow><player.name> <reset><yellow>is the one who asked"
                - define message "<dark_red><italic><player.name> has come for your soul"
                - define message "<yellow><player.name> better call saul"
                - define message "<yellow><player.name> gave into peer pressure"
                - define message "<yellow><player.name> joined... again"
                - define message "<yellow><player.name> left the game"
                - define message "<gray><italic><player.name> immediately regrets their decision"
                - define message "<yellow><player.name> has nothing better to do"
                - define message "<yellow><player.name>, welcome to the underground, how was the fall?"
                - define message "<yellow><player.name> follows at such a distance that no one can tell they are associated"
                - define message "<&color[<color[random]>]>The color of this text is blue, if you see any other color then that means you have a crush on me... oh and <player.name> has joined"
                - define message "<yellow>Hush no one say anything, <player.name> has joined"
                - define message "<yellow><player.name> thinks the narrator should get a raise"
                - define message <element[<player.name> has joined the game].color_gradient[from=random;to=random]>
                - define message "<yellow><player.name> needed to check the cows"
                - define message "<yellow>When <player.name> joined the server, he entered the door on his left"
                - define message "<yellow>Bro, <player.name> joined the server"
                - define message "<yellow><player.name> is so back"
                - define message "<yellow>Hello Agent <player.name>. Your next objective is to kill <server.online_players.random.name>"
                - if <player.name> != logman:
                    - define message "<yellow><player.name> logged on... at least it wasn't logman"
                - define message "<yellow>What do you think? <player.name> is just gonna appear out of the blue? ARE YOU KIDDING ME"
                - define message "<yellow>What if instead of <player.name>, it was freaky <player.name>"
                - define message "<yellow><player.name> says hi chat"
                - define message "<gray>/summon <player.name>"
                - define message "<yellow><player.name> breached security"
                - define message "<yellow>Rise and shine, <player.name>"
                - define message "<yellow>We got <player.name> joining the server before Silksong"
                - define message "<yellow><player.name> remembered their password"
                - define message "<yellow>Rev up those fryers, because <player.name> is back"
                - define message "<yellow><player.name> has joined by their own will"
            - determine <[message]>

        on player quits:
            - random:
                - define message "<yellow><player.name> has left us.. so sad D:"
                - define message "<yellow><player.name> has bad internet"
                - define message "<yellow><player.name> went to go touch grass"
                - define message "<red><player.name> took an L"
                - define message "<green><player.name> took the W"
                - define message "<yellow><player.name> left before the chaos started"
                - define message "<yellow><player.name> went mental"
                - define message "<yellow><player.name> escaped the fog"
                - define message "<yellow><player.name> ragequit"
                - define message "<yellow><player.name> did too much trolling"
                - define message "<white><player.name> was not the Imposter [1 Impostor remains]"
                - define message "<white><player.name> was the Imposter [0 Impostors remain]"
                - define message "<yellow><player.name> clipped out of reality"
                - define message "<yellow><player.name> left bowomp"
                - define message "<yellow><player.name> joined the game"
                - define message "<yellow><player.name> got trolled"
                - define message "<yellow><player.name> went to bed"
                - define message "<yellow><player.name.to_uppercase> WAS TOLD TO SHUT UP"
                - define message "<yellow><player.name> has lost all of their braincells"
                - define message "<yellow><player.name> probably has better things to do"
                - define message "<yellow><player.name> has a skill issue"
                - define message "<yellow><player.name.to_uppercase> THINKS THIS MESSAGE SUCKS"
                - define message "<yellow><italic>'Oh come on how bad could it be?' - <reset><yellow><player.name>"
                - define message "<yellow>GET OUT <player.name.to_uppercase>"
                - define message "<yellow><player.name> left for some cookies"
                - define message "<yellow>I think <player.name> is hot"
                - define message "<red>WARNING: <player.name> combat logged"
                - define message "<yellow>it's so over for <player.name>"
                - define message "<yellow><player.name> fumbled"
                - if <player.name> != logman:
                    - define message "<yellow><player.name> logged off... it should have been logman"
                - define message "<yellow><player.name> says bye chat"
                - define message "<gray>/kill <player.name>"
                - define message "<yellow><player.name> forgot to take adderall"
                - define message "<yellow><player.name> found the trials quite tricky"
                - define message "<yellow><player.name>'s downfall needs to be studied"
                - define message "<yellow><player.name> is smelly"
                - define message "<yellow>Good night, <player.name>"
                - define message "<yellow>At last, <player.name> is in captivity. The galaxy is at peace"
                - define message "<yellow><player.name> is now leaving for no raisin"
                - define message "<yellow><player.name> left the dinner table (insert Mr Incredible gif)"
            - determine <[message]>