-- Decompiled using luadec 2.0 standard by sztupy (http://luadec51.luaforge.net)
-- Command line was: C:\Users\arnau\Documents\Dev\PSP\Shoot'N'Kill\script - Copy.lua 

rouge = Color.new(255, 0, 0)
vert = Color.new(0, 255, 0)
bleu = Color.new(0, 0, 255)
blanc = Color.new(255, 255, 255)
imgSplash = Image.load("./splash.jpg")
imgMenu = Image.load("./menu.jpg")
imgCredits = Image.load("./credits.jpg")
imgAide = Image.load("./aide.jpg")
imgFond = Image.load("./piece.jpg")
imgPause = Image.load("./pause.png")
imgScores = Image.load("./Scores.jpg")
imgZombieG = Image.load("./zombieG.png")
imgZombieP = Image.load("./zombieP.png")
imgZombieBoomG = Image.load("./zombieBoomG.png")
imgZombieBoomP = Image.load("./zombieBoomP.png")
imgViseur = Image.load("./viseur.png")
Mp3me.load("musique.mp3")
zombies = {}

zombies[1] = {x = 80, y = 140, w = 64, h = 130, a = 0}
zombies[2] = {x = 210, y = 140, w = 64, h = 130, a = 0}
zombies[3] = {x = 340, y = 140, w = 64, h = 130, a = 0}
zombies[4] = {x = 150, y = 130, w = 57, h = 115, a = 0}
zombies[5] = {x = 280, y = 130, w = 57, h = 115, a = 0}

zombiesBoom = {}
i = 0
viseurX = 230
viseurY = 165
commencer = 0
menu = 0
pause = 0
tirs = 0

-- Chronomètre
chrono = Timer.new()
chrono:reset(0)

tempsVague = 30
zombiesTues = 0

-- Affiche un zombie
zombieAffiche = math.random(1, 5)
zombies[zombieAffiche].a = 1

-- Lecture des touches
oldpad = Controls.read()

function Colision (l_1_0, l_1_1, l_1_2, l_1_3, l_1_4, l_1_5)
    if l_1_0 < l_1_4 and l_1_4 < l_1_0 + l_1_2 and l_1_1 < l_1_5 and l_1_5 < l_1_1 - l_1_3 then
        return 1
    else
        return 0
    end
end

while true do
    -- Clear screen
    screen:clear()

    -- Read controls
    pad = Controls.read()

    -- Play music
    Music.volume(32)
    Mp3me.play()
    -- Loop if music reaches end
    if Mp3me.percent() >= 96 then
        Mp3me.stop()
        Mp3me.load("musique.mp3")
        Mp3me.play()
    end

    -- if at spalsh screen
    if commencer == 0 then
        screen:blit(0, 0, imgSplash)

        if pad:start() then
            if oldpad ~= pad then
                commencer = 1
            end
        end
    else
        -- If at main menu
        if menu == 0 then
            screen:blit(0, 0, imgMenu)
            
            if pad:cross() then -- Start game
                if oldpad ~= pad then
                    menu = 1
                end
            elseif pad:circle() then -- Help page
                if oldpad ~= pad then
                    menu = 2
                end
            elseif pad:square() then -- About page
                if oldpad ~= pad then
                    menu = 3
                end
            end

        -- If playing
        elseif menu == 1 then
            if pause == 0 then
                chrono:start()
            end

            temps = chrono:time() / 1000
            tempsRestant = tempsVague - temps

            if tempsRestant <= 0 then -- Game Over
                screen:blit(0, 0, imgScores)
                screen:print(40, 80, "Duree de la vague : " .. tempsVague .. "s", blanc)
                screen:print(40, 120, "Nombre de zombies tues : " .. zombiesTues, blanc)
                screen:print(40, 160, "Tirs rates : " .. tirs - zombiesTues, blanc)
                screen:print(40, 200, "Score final : " .. 100 * zombiesTues - 10 * (tirs - zombiesTues), blanc)
            
                if pad:start() then
                    zombiesTues = 0
                    viseurX = 230
                    tirs = 0
                    chrono:stop()
                    chrono:reset()

                    for i=1,5 do
                        zombies[i].a = 0
                    end

                    zombieAffiche = math.random(1, 5)
                    zombies[zombieAffiche].a = 0
                    menu = 0
                end
            else
                if pause == 0 then -- Game not paused
                    screen:blit(0, 0, imgFond)

                    -- Print visible zombies
                    for i=1,5 do
                        if zombies[i].a == 1 then -- Normal zombie
                            if i <= 3 then
                                screen:blit(zombies[i].x, zombies[i].y, imgZombieG)
                            else
                                screen:blit(zombies[i].x, zombies[i].y, imgZombieP)
                            end
                        elseif zombies[i].a == 2 then -- Exploding zombie
                            if i <= 3 then
                                screen:blit(zombies[i].x, zombies[i].y, imgZombieBoomG)
                            else
                                screen:blit(zombies[i].x, zombies[i].y, imgZombieBoomP)
                            end

                            if (chrono:time() - zombiesBoom[i]) >= 250 then -- Hide exploding zombie after 250ms
                                zombies[i].a = 0
                            end
                        end
                    end

                    
                    screen:blit(viseurX, viseurY, imgViseur)
                    screen:print(0, 0, "Temps restant : " .. tempsRestant .. "s", rouge)
                    screen:print(250, 1, "Zombies tues : " .. zombiesTues, rouge)
                        
                        
                    if pad:left() then
                        if viseurX >= 0 then
                            viseurX = viseurX - 5
                        end
                    end
                        
                    if pad:right() then
                        if viseurX <= 480 then
                            viseurX = viseurX + 5
                        end
                    end

                    if pad:cross() then
                        if oldpad ~= pad then
                            for i=1,5 do
                                if zombies[i].a == 1 then
                                    -- viseurX = viseurX + 10 -- was in the original decompiled code
                                    -- viseurY = viseurY + 10 -- was in the original decompiled code
                                    if viseurX > zombies[i].x and viseurX < (zombies[i].x + zombies[i].w) and viseurY > zombies[i].y and viseurY < (zombies[i].y + zombies[i].h) then
                                        zombies[i].a = 2
                                        zombiesBoom[i] = chrono:time()
                                        
                                        zombieAffiche = math.random(1, 5)
                                        zombies[zombieAffiche].a = 1
                                        
                                        zombiesTues = zombiesTues + 1
                                    end
                                end
                            end

                            tirs = tirs + 1
                        end
                    end

                    if pad:start() then
                        if oldpad ~= pad then
                            chrono:stop()
                            pause = 1
                        end
                    end
                else -- Game paused
                    screen:blit(0, 0, imgFond)

                    for i=1,5 do
                        if zombies[i].a == 1 then -- Normal zombie
                            if i <= 3 then
                                screen:blit(zombies[i].x, zombies[i].y, imgZombieG)
                            else
                                screen:blit(zombies[i].x, zombies[i].y, imgZombieP)
                            end
                        elseif zombies[i].a == 2 then -- Exploding zombie
                            if i <= 3 then
                                screen:blit(zombies[i].x, zombies[i].y, imgZombieBoomG)
                            else
                                screen:blit(zombies[i].x, zombies[i].y, imgZombieBoomP)
                            end
                        end
                    end

                    screen:blit(viseurX, viseurY, imgViseur)
                    screen:blit(0, 0, imgPause)
                                
                                
                    if pad:start() then
                        if oldpad ~= pad then
                            pause = 0
                            chrono:start()
                        end
                    end
                end
            end
        -- If on help menu
        elseif menu == 2 then
            screen:blit(0, 0, imgAide)
            
            if pad:triangle() then
                if oldpad ~= pad then
                    menu = 0
                end
            end
        -- If on about menu
        elseif menu == 3 then
            screen:blit( 0, 0, imgCredits)
            if pad:triangle() then
                if oldpad ~= pad then
                    menu = 0
                end
            end
        end
    end

    oldpad = pad
    screen:flip()
end

