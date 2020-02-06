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
local l_0_0 = zombies
do
  local l_0_1 = {}
  l_0_1.x = 80
  l_0_1.y = 140
  l_0_1.w = 64
  l_0_1.h = 130
  l_0_1.a = 0
  l_0_0[1] = l_0_1
  l_0_0 = zombies
  l_0_1 = {x = 210, y = 140, w = 64, h = 130, a = 0}
  l_0_0[2] = l_0_1
  l_0_0 = zombies
  l_0_1 = {x = 340, y = 140, w = 64, h = 130, a = 0}
  l_0_0[3] = l_0_1
  l_0_0 = zombies
  l_0_1 = {x = 150, y = 130, w = 57, h = 115, a = 0}
  l_0_0[4] = l_0_1
  l_0_0 = zombies
  l_0_1 = {x = 280, y = 130, w = 57, h = 115, a = 0}
  l_0_0[5] = l_0_1
  l_0_0 = {}
  zombiesBoom = l_0_0
  l_0_0 = 0
  j = l_0_0
  l_0_0 = 230
  viseurX = l_0_0
  l_0_0 = 165
  viseurY = l_0_0
  l_0_0 = 0
  commencer = l_0_0
  l_0_0 = 0
  menu = l_0_0
  l_0_0 = 0
  pause = l_0_0
  l_0_0 = 0
  tirs = l_0_0
  l_0_0 = Timer
  l_0_0 = l_0_0.new
  l_0_1 = 0
  l_0_0 = l_0_0(l_0_1)
  chrono = l_0_0
  l_0_0 = chrono
  l_0_0, l_0_1 = l_0_0:reset, l_0_0
  l_0_0(l_0_1)
  l_0_0 = 30
  tempsVague = l_0_0
  l_0_0 = 0
  zombiesTues = l_0_0
  l_0_0 = math
  l_0_0 = l_0_0.random
  l_0_1 = 1
  l_0_0 = l_0_0(l_0_1, 5)
  zombieAffiche = l_0_0
  l_0_0 = zombies
  l_0_1 = zombieAffiche
  l_0_0 = l_0_0[l_0_1]
  l_0_0.a = 1
  l_0_0 = Controls
  l_0_0 = l_0_0.read
  l_0_0 = l_0_0()
  oldpad = l_0_0
  l_0_0 = function(l_1_0, l_1_1, l_1_2, l_1_3, l_1_4, l_1_5)
  if l_1_0 < l_1_4 and l_1_4 < l_1_0 + l_1_2 and l_1_1 < l_1_5 and l_1_5 < l_1_1 - l_1_3 then
    return 1
  else
    return 0
  end
end

  Colision = l_0_0
  repeat
    l_0_0 = screen
    l_0_0, l_0_1 = l_0_0:clear, l_0_0
    l_0_0(l_0_1)
    l_0_0 = Controls
    l_0_0 = l_0_0.read
    l_0_0 = l_0_0()
    pad = l_0_0
    l_0_0 = Music
    l_0_0 = l_0_0.volume
    l_0_1 = 32
    l_0_0(l_0_1)
    l_0_0 = Mp3me
    l_0_0 = l_0_0.play
    l_0_0()
    l_0_0 = Mp3me
    l_0_0 = l_0_0.percent
    l_0_0 = l_0_0()
    if l_0_0 >= 96 then
      l_0_0 = Mp3me
      l_0_0 = l_0_0.stop
      l_0_0()
      l_0_0 = Mp3me
      l_0_0 = l_0_0.load
      l_0_1 = "musique.mp3"
      l_0_0(l_0_1)
      l_0_0 = Mp3me
      l_0_0 = l_0_0.play
      l_0_0()
    end
    l_0_0 = commencer
    if l_0_0 == 0 then
      l_0_0 = screen
      l_0_0, l_0_1 = l_0_0:blit, l_0_0
      l_0_0(l_0_1, 0, 0, imgSplash)
      l_0_0 = pad
      l_0_0, l_0_1 = l_0_0:start, l_0_0
      l_0_0 = l_0_0(l_0_1)
      if l_0_0 then
        l_0_0 = oldpad
        l_0_1 = pad
        if l_0_0 ~= l_0_1 then
          l_0_0 = 1
          commencer = l_0_0
        else
          l_0_0 = menu
          if l_0_0 == 0 then
            l_0_0 = screen
            l_0_0, l_0_1 = l_0_0:blit, l_0_0
            l_0_0(l_0_1, 0, 0, imgMenu)
            l_0_0 = pad
            l_0_0, l_0_1 = l_0_0:cross, l_0_0
            l_0_0 = l_0_0(l_0_1)
            if l_0_0 then
              l_0_0 = oldpad
              l_0_1 = pad
              if l_0_0 ~= l_0_1 then
                l_0_0 = 1
                menu = l_0_0
            end
            l_0_0 = pad
            l_0_0, l_0_1 = l_0_0:circle, l_0_0
            l_0_0 = l_0_0(l_0_1)
            if l_0_0 then
              l_0_0 = oldpad
              l_0_1 = pad
              if l_0_0 ~= l_0_1 then
                l_0_0 = 2
                menu = l_0_0
            end
            l_0_0 = pad
            l_0_0, l_0_1 = l_0_0:square, l_0_0
            l_0_0 = l_0_0(l_0_1)
            if l_0_0 then
              l_0_0 = oldpad
              l_0_1 = pad
              if l_0_0 ~= l_0_1 then
                l_0_0 = 3
                menu = l_0_0
              else
                l_0_0 = menu
                if l_0_0 == 1 then
                  l_0_0 = pause
                  if l_0_0 == 0 then
                    l_0_0 = chrono
                    l_0_0, l_0_1 = l_0_0:start, l_0_0
                    l_0_0(l_0_1)
                  end
                  l_0_0 = chrono
                  l_0_0, l_0_1 = l_0_0:time, l_0_0
                  l_0_0 = l_0_0(l_0_1)
                  l_0_0 = l_0_0 / 1000
                  temps = l_0_0
                  l_0_0 = tempsVague
                  l_0_1 = temps
                  l_0_0 = l_0_0 - l_0_1
                  tempsRestant = l_0_0
                  l_0_0 = tempsRestant
                  if l_0_0 <= 0 then
                    l_0_0 = screen
                    l_0_0, l_0_1 = l_0_0:blit, l_0_0
                    l_0_0(l_0_1, 0, 0, imgScores)
                    l_0_0 = screen
                    l_0_0, l_0_1 = l_0_0:print, l_0_0
                    l_0_0(l_0_1, 40, 80, "Duree de la vague : " .. tempsVague .. "s", blanc)
                    l_0_0 = screen
                    l_0_0, l_0_1 = l_0_0:print, l_0_0
                    l_0_0(l_0_1, 40, 120, "Nombre de zombies tues : " .. zombiesTues, blanc)
                    l_0_0 = screen
                    l_0_0, l_0_1 = l_0_0:print, l_0_0
                    l_0_0(l_0_1, 40, 160, "Tirs rates : " .. tirs - zombiesTues, blanc)
                    l_0_0 = screen
                    l_0_0, l_0_1 = l_0_0:print, l_0_0
                    l_0_0(l_0_1, 40, 200, "Score final : " .. 100 * zombiesTues - 10 * (tirs - zombiesTues), blanc)
                    l_0_0 = pad
                    l_0_0, l_0_1 = l_0_0:start, l_0_0
                    l_0_0 = l_0_0(l_0_1)
                    if l_0_0 then
                      l_0_0 = 0
                      zombiesTues = l_0_0
                      l_0_0 = 230
                      viseurX = l_0_0
                      l_0_0 = 0
                      tirs = l_0_0
                      l_0_0 = chrono
                      l_0_0, l_0_1 = l_0_0:stop, l_0_0
                      l_0_0(l_0_1)
                      l_0_0 = chrono
                      l_0_0, l_0_1 = l_0_0:reset, l_0_0
                      l_0_0(l_0_1)
                      l_0_0 = 1
                      i = l_0_0
                      repeat
                        l_0_0 = i
                        if l_0_0 <= 5 then
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
                        l_0_0 = tempsRestant
                        if l_0_0 >= 0 then
                          l_0_0 = pause
                          if l_0_0 == 0 then
                            l_0_0 = screen
                            l_0_0, l_0_1 = l_0_0:blit, l_0_0
                            l_0_0(l_0_1, 0, 0, imgFond)
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
                                    l_0_0 = screen
                                    l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                    l_0_0(l_0_1, zombies[i].x, zombies[i].y, imgZombieG)
                                end
                                l_0_0 = i
                                if l_0_0 > 3 then
                                  l_0_0 = zombies
                                  l_0_1 = i
                                  l_0_0 = l_0_0[l_0_1]
                                  l_0_0 = l_0_0.a
                                  if l_0_0 == 1 then
                                    l_0_0 = screen
                                    l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                    l_0_0(l_0_1, zombies[i].x, zombies[i].y, imgZombieP)
                                end
                                l_0_0 = i
                                if l_0_0 <= 3 then
                                  l_0_0 = zombies
                                  l_0_1 = i
                                  l_0_0 = l_0_0[l_0_1]
                                  l_0_0 = l_0_0.a
                                  if l_0_0 == 2 then
                                    l_0_0 = screen
                                    l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                    l_0_0(l_0_1, zombies[i].x, zombies[i].y, imgZombieBoomG)
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
                                      l_0_0 = screen
                                      l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                      l_0_0(l_0_1, zombies[i].x, zombies[i].y, imgZombieBoomP)
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
                                l_0_0 = screen
                                l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                l_0_0(l_0_1, viseurX, viseurY, imgViseur)
                                l_0_0 = screen
                                l_0_0, l_0_1 = l_0_0:print, l_0_0
                                l_0_0(l_0_1, 1, 1, "Temps restant : " .. tempsRestant .. "s", rouge)
                                l_0_0 = screen
                                l_0_0, l_0_1 = l_0_0:print, l_0_0
                                l_0_0(l_0_1, 250, 1, "Zombies tues : " .. zombiesTues, rouge)
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
                                    l_0_0 = screen
                                    l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                    l_0_0(l_0_1, 0, 0, imgFond)
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
                                            l_0_0 = screen
                                            l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                            l_0_0(l_0_1, zombies[i].x, zombies[i].y, imgZombieG)
                                        end
                                        l_0_0 = i
                                        if l_0_0 > 3 then
                                          l_0_0 = zombies
                                          l_0_1 = i
                                          l_0_0 = l_0_0[l_0_1]
                                          l_0_0 = l_0_0.a
                                          if l_0_0 == 1 then
                                            l_0_0 = screen
                                            l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                            l_0_0(l_0_1, zombies[i].x, zombies[i].y, imgZombieP)
                                        end
                                        l_0_0 = i
                                        if l_0_0 <= 3 then
                                          l_0_0 = zombies
                                          l_0_1 = i
                                          l_0_0 = l_0_0[l_0_1]
                                          l_0_0 = l_0_0.a
                                          if l_0_0 == 2 then
                                            l_0_0 = screen
                                            l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                            l_0_0(l_0_1, zombies[i].x, zombies[i].y, imgZombieBoomG)
                                        end
                                        l_0_0 = i
                                        if l_0_0 > 3 then
                                          l_0_0 = zombies
                                          l_0_1 = i
                                          l_0_0 = l_0_0[l_0_1]
                                          l_0_0 = l_0_0.a
                                          if l_0_0 == 2 then
                                            l_0_0 = screen
                                            l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                            l_0_0(l_0_1, zombies[i].x, zombies[i].y, imgZombieBoomP)
                                          end
                                        end
                                        l_0_0 = i
                                        l_0_0 = l_0_0 + 1
                                        i = l_0_0
                                      else
                                        l_0_0 = screen
                                        l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                        l_0_0(l_0_1, viseurX, viseurY, imgViseur)
                                        l_0_0 = screen
                                        l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                        l_0_0(l_0_1, 0, 0, imgPause)
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
                                              l_0_0 = screen
                                              l_0_0, l_0_1 = l_0_0:blit, l_0_0
                                              l_0_0(l_0_1, 0, 0, imgAide)
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

