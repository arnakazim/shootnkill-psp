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
j = 0
viseurX = 230
viseurY = 165
commencer = 0
menu = 0
pause = 0
tirs = 0

-- Chronomètre
chrono = Timer.new()
-- maybe chrono:reset(chrono)
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

repeat
  -- Clear screen
  screen:clear()

  -- Read controls
  pad = Controls.read()

  -- Play music
  Music.volume(32)
  Mp3me.play()
  if Mp3me.percent() >= 96 then
    Mp3me.stop()
    Mp3me.load("musique.mp3")
    Mp3me.play()
  end

  if commencer == 0 then
    screen:blit(0, 0, imgSplash)

    if pad:start() then
      if oldpad ~= pad then
        commencer = 1
      end
    end
  else
    if menu == 0 then
      screen:blit(0, 0, imgMenu)
      
      if pad:cross() then
        if oldpad ~= pad then
          menu = 1
        end
      elseif pad:circle() then
        if oldpad ~= pad then
          menu = 2
        end
      elseif pad:square() then
        if oldpad ~= pad then
          menu = 3
        end
      end

    elseif menu == 1 then
      if pause == 0 then
              chrono:start()
            end
            temps = chrono:time() / 1000
            tempsRestant = tempsVague - temps
            l_0_0 = tempsRestant
            if tempsRestant <= 0 then
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
                i = 1

                repeat
                  if i <= 5 then
                    l_0_0 = zombies
                    l_0_1 = i
                    l_0_0 = l_0_0[l_0_1]
                    l_0_0.a = 0
                    l_0_0 = i
                    l_0_0 = l_0_0 + 1
                    i = l_0_0
                  else
                    l_0_0 = math
                    l_0_0 = l_0_0.random
                    l_0_1 = 1
                    l_0_0 = l_0_0(l_0_1, 5)
                    zombieAffiche = l_0_0
                    l_0_0 = zombies
                    l_0_1 = zombieAffiche
                    l_0_0 = l_0_0[l_0_1]
                    l_0_0.a = 1
                    l_0_0 = 0
                    menu = l_0_0
                  end
                else
                  if tempsRestant >= 0 then
                    if pause == 0 then
                      screen:blit(0, 0, imgFond)
                      l_0_0 = 1
                      i = l_0_0
                      repeat
                        l_0_0 = i
                        if l_0_0 <= 5 then
                          l_0_0 = i
                          if l_0_0 <= 3 then
                            l_0_0 = zombies
                            l_0_1 = i
                            l_0_0 = l_0_0[l_0_1]
                            l_0_0 = l_0_0.a
                            if l_0_0 == 1 then
                              screen:blit(zombies[i].x, zombies[i].y, imgZombieG)
                          end
                          l_0_0 = i
                          if l_0_0 > 3 then
                            l_0_0 = zombies
                            l_0_1 = i
                            l_0_0 = l_0_0[l_0_1]
                            l_0_0 = l_0_0.a
                            if l_0_0 == 1 then
                              screen:blit(zombies[i].x, zombies[i].y, imgZombieP)
                          end
                          l_0_0 = i
                          if l_0_0 <= 3 then
                            l_0_0 = zombies
                            l_0_1 = i
                            l_0_0 = l_0_0[l_0_1]
                            l_0_0 = l_0_0.a
                            if l_0_0 == 2 then
                              screen:blit(zombies[i].x, zombies[i].y, imgZombieBoomG)
                              l_0_0 = chrono
                              l_0_0, l_0_1 = l_0_0:time, l_0_0
                              l_0_0 = l_0_0(l_0_1)
                              l_0_1 = zombiesBoom
                              l_0_1 = l_0_1[i]
                              l_0_0 = l_0_0 - l_0_1
                              if l_0_0 >= 250 then
                                l_0_0 = zombies
                                l_0_1 = i
                                l_0_0 = l_0_0[l_0_1]
                                l_0_0.a = 0
                            end
                            l_0_0 = i
                            if l_0_0 > 3 then
                              l_0_0 = zombies
                              l_0_1 = i
                              l_0_0 = l_0_0[l_0_1]
                              l_0_0 = l_0_0.a
                              if l_0_0 == 2 then
                                screen:blit(zombies[i].x, zombies[i].y, imgZombieBoomP)
                                l_0_0 = chrono
                                l_0_0, l_0_1 = l_0_0:time, l_0_0
                                l_0_0 = l_0_0(l_0_1)
                                l_0_1 = zombiesBoom
                                l_0_1 = l_0_1[i]
                                l_0_0 = l_0_0 - l_0_1
                                if l_0_0 >= 250 then
                                  l_0_0 = zombies
                                  l_0_1 = i
                                  l_0_0 = l_0_0[l_0_1]
                                  l_0_0.a = 0
                                end
                              end
                            end
                          end
                          l_0_0 = i
                          l_0_0 = l_0_0 + 1
                          i = l_0_0
                        else
                          screen:blit(viseurX, viseurY, imgViseur)
                          screen:print("Temps restant : " .. tempsRestant .. "s", rouge)
                          screen:print(250, 1, "Zombies tues : " .. zombiesTues, rouge)
                          l_0_0 = pad
                          l_0_0, l_0_1 = l_0_0:left, l_0_0
                          l_0_0 = l_0_0(l_0_1)
                          if l_0_0 then
                            l_0_0 = viseurX
                            if l_0_0 >= 0 then
                              l_0_0 = viseurX
                              l_0_0 = l_0_0 - 5
                              viseurX = l_0_0
                          end
                          l_0_0 = pad
                          l_0_0, l_0_1 = l_0_0:right, l_0_0
                          l_0_0 = l_0_0(l_0_1)
                          if l_0_0 then
                            l_0_0 = viseurX
                            if l_0_0 <= 480 then
                              l_0_0 = viseurX
                              l_0_0 = l_0_0 + 5
                              viseurX = l_0_0
                          end
                          l_0_0 = pad
                          l_0_0, l_0_1 = l_0_0:cross, l_0_0
                          l_0_0 = l_0_0(l_0_1)
                          if l_0_0 then
                            l_0_0 = oldpad
                            l_0_1 = pad
                            if l_0_0 ~= l_0_1 then
                              l_0_0 = 1
                              i = l_0_0
                              repeat
                                l_0_0 = i
                                if l_0_0 <= 5 then
                                  l_0_0 = zombies
                                  l_0_1 = i
                                  l_0_0 = l_0_0[l_0_1]
                                  l_0_0 = l_0_0.a
                                  if l_0_0 == 1 then
                                    l_0_0 = viseurX
                                    l_0_0 = l_0_0 + 10
                                    l_0_1 = zombies
                                    l_0_1 = l_0_1[i]
                                    l_0_1 = l_0_1.x
                                    if l_0_1 < l_0_0 then
                                      l_0_0 = viseurX
                                      l_0_0 = l_0_0 + 10
                                      l_0_1 = zombies
                                      l_0_1 = l_0_1[i]
                                      l_0_1 = l_0_1.x
                                      l_0_1 = l_0_1 + zombies[i].w
                                      if l_0_0 < l_0_1 then
                                        l_0_0 = viseurY
                                        l_0_0 = l_0_0 + 10
                                        l_0_1 = zombies
                                        l_0_1 = l_0_1[i]
                                        l_0_1 = l_0_1.y
                                        if l_0_1 < l_0_0 then
                                          l_0_0 = viseurY
                                          l_0_0 = l_0_0 + 10
                                          l_0_1 = zombies
                                          l_0_1 = l_0_1[i]
                                          l_0_1 = l_0_1.y
                                          l_0_1 = l_0_1 + zombies[i].h
                                          if l_0_0 < l_0_1 then
                                            l_0_0 = zombies
                                            l_0_1 = i
                                            l_0_0 = l_0_0[l_0_1]
                                            l_0_0.a = 2
                                            l_0_0 = zombiesBoom
                                            l_0_1 = i
                                            l_0_0[l_0_1] = chrono:time()
                                            l_0_0 = math
                                            l_0_0 = l_0_0.random
                                            l_0_1 = 1
                                            l_0_0 = l_0_0(l_0_1, 5)
                                            zombieAffiche = l_0_0
                                            l_0_0 = zombies
                                            l_0_1 = zombieAffiche
                                            l_0_0 = l_0_0[l_0_1]
                                            l_0_0.a = 1
                                            l_0_0 = zombiesTues
                                            l_0_0 = l_0_0 + 1
                                            zombiesTues = l_0_0
                                          end
                                        end
                                      end
                                    end
                                  end
                                  l_0_0 = i
                                  l_0_0 = l_0_0 + 1
                                  i = l_0_0
                                else
                                  l_0_0 = tirs
                                  l_0_0 = l_0_0 + 1
                                  tirs = l_0_0
                                end
                            end
                            l_0_0 = pad
                            l_0_0, l_0_1 = l_0_0:start, l_0_0
                            l_0_0 = l_0_0(l_0_1)
                            if l_0_0 then
                              l_0_0 = oldpad
                              l_0_1 = pad
                              if l_0_0 ~= l_0_1 then
                                l_0_0 = chrono
                                l_0_0, l_0_1 = l_0_0:stop, l_0_0
                                l_0_0(l_0_1)
                                l_0_0 = 1
                                pause = l_0_0
                            end
                            l_0_0 = pause
                            if l_0_0 == 1 then
                              screen:blit(0, 0, imgFond)
                              l_0_0 = 1
                              i = l_0_0
                              repeat
                                l_0_0 = i
                                if l_0_0 <= 5 then
                                  l_0_0 = i
                                  if l_0_0 <= 3 then
                                    l_0_0 = zombies
                                    l_0_1 = i
                                    l_0_0 = l_0_0[l_0_1]
                                    l_0_0 = l_0_0.a
                                    if l_0_0 == 1 then
                                      screen:blit(zombies[i].x, zombies[i].y, imgZombieG)
                                  end
                                  l_0_0 = i
                                  if l_0_0 > 3 then
                                    l_0_0 = zombies
                                    l_0_1 = i
                                    l_0_0 = l_0_0[l_0_1]
                                    l_0_0 = l_0_0.a
                                    if l_0_0 == 1 then
                                      screen:blit(zombies[i].x, zombies[i].y, imgZombieP)
                                  end
                                  l_0_0 = i
                                  if l_0_0 <= 3 then
                                    l_0_0 = zombies
                                    l_0_1 = i
                                    l_0_0 = l_0_0[l_0_1]
                                    l_0_0 = l_0_0.a
                                    if l_0_0 == 2 then
                                      screen:blit(zombies[i].x, zombies[i].y, imgZombieBoomG)
                                  end
                                  l_0_0 = i
                                  if l_0_0 > 3 then
                                    l_0_0 = zombies
                                    l_0_1 = i
                                    l_0_0 = l_0_0[l_0_1]
                                    l_0_0 = l_0_0.a
                                    if l_0_0 == 2 then
                                      screen:blit(zombies[i].x, zombies[i].y, imgZombieBoomP)
                                    end
                                  end
                                  l_0_0 = i
                                  l_0_0 = l_0_0 + 1
                                  i = l_0_0
                                else
                                  screen:blit(viseurX, viseurY, imgViseur)
                                  screen:blit(0, 0, imgPause)
                                  l_0_0 = pad
                                  l_0_0, l_0_1 = l_0_0:start, l_0_0
                                  l_0_0 = l_0_0(l_0_1)
                                  if l_0_0 then
                                    l_0_0 = oldpad
                                    l_0_1 = pad
                                    if l_0_0 ~= l_0_1 then
                                      l_0_0 = 0
                                      pause = l_0_0
                                      l_0_0 = chrono
                                      l_0_0, l_0_1 = l_0_0:start, l_0_0
                                      l_0_0(l_0_1)
                                    else
                                      l_0_0 = menu
                                      if l_0_0 == 2 then
                                        screen:blit(0, 0, imgAide)
                                        l_0_0 = pad
                                        l_0_0, l_0_1 = l_0_0:triangle, l_0_0
                                        l_0_0 = l_0_0(l_0_1)
                                        if l_0_0 then
                                          l_0_0 = oldpad
                                          l_0_1 = pad
                                          if l_0_0 ~= l_0_1 then
                                            l_0_0 = 0
                                            menu = l_0_0
                                          else
                                            l_0_0 = menu
                                            if l_0_0 == 3 then
                                              l_0_0 = screen
                                              l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                              l_0_0(l_0_1, 0, 0, imgCredits)
                                              l_0_0 = pad
                                              l_0_0, l_0_1 = l_0_0:triangle, l_0_0
                                              l_0_0 = l_0_0(l_0_1)
                                              if l_0_0 then
                                                l_0_0 = oldpad
                                                l_0_1 = pad
                                                if l_0_0 ~= l_0_1 then
                                                  l_0_0 = 0
                                                  menu = l_0_0
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
          l_0_0 = pad
          oldpad = l_0_0
          l_0_0 = screen
          l_0_0, l_0_1 = l_0_0:flip, l_0_0
          l_0_0(l_0_1)
          do return end
        end
          -- Warning: missing end command somewhere! Added here
      end
        -- Warning: missing end command somewhere! Added here
    end
      -- Warning: missing end command somewhere! Added here
  end
        -- Warning: missing end command somewhere! Added here
    end
      -- Warning: missing end command somewhere! Added here
  end
    -- Warning: missing end command somewhere! Added here
end

