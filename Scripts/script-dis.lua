; This file has been disassembled using luadec 2.0 standard by sztupy (http://luadec51.luaforge.net)
; Command line was: -dis C:\Users\arnau\Documents\Dev\PSP\Shoot'N'Kill\script - Copy.lua 

; Name:            
; Defined at line: 0
; #Upvalues:       0
; #Parameters:     0
; Is_vararg:       2
; Max Stack Size:  8

  1 [-]: GETGLOBAL R0 K1        ; R0 := Color
  2 [-]: GETTABLE  R0 R0 K2     ; R0 := R0["new"]
  3 [-]: LOADK     R1 K3        ; R1 := 255
  4 [-]: LOADK     R2 K4        ; R2 := 0
  5 [-]: LOADK     R3 K4        ; R3 := 0
  6 [-]: CALL      R0 4 2       ; R0 := R0(R1,R2,R3)
  7 [-]: SETGLOBAL R0 K0        ; rouge := R0
  8 [-]: GETGLOBAL R0 K1        ; R0 := Color
  9 [-]: GETTABLE  R0 R0 K2     ; R0 := R0["new"]
 10 [-]: LOADK     R1 K4        ; R1 := 0
 11 [-]: LOADK     R2 K3        ; R2 := 255
 12 [-]: LOADK     R3 K4        ; R3 := 0
 13 [-]: CALL      R0 4 2       ; R0 := R0(R1,R2,R3)
 14 [-]: SETGLOBAL R0 K5        ; vert := R0
 15 [-]: GETGLOBAL R0 K1        ; R0 := Color
 16 [-]: GETTABLE  R0 R0 K2     ; R0 := R0["new"]
 17 [-]: LOADK     R1 K4        ; R1 := 0
 18 [-]: LOADK     R2 K4        ; R2 := 0
 19 [-]: LOADK     R3 K3        ; R3 := 255
 20 [-]: CALL      R0 4 2       ; R0 := R0(R1,R2,R3)
 21 [-]: SETGLOBAL R0 K6        ; bleu := R0
 22 [-]: GETGLOBAL R0 K1        ; R0 := Color
 23 [-]: GETTABLE  R0 R0 K2     ; R0 := R0["new"]
 24 [-]: LOADK     R1 K3        ; R1 := 255
 25 [-]: LOADK     R2 K3        ; R2 := 255
 26 [-]: LOADK     R3 K3        ; R3 := 255
 27 [-]: CALL      R0 4 2       ; R0 := R0(R1,R2,R3)
 28 [-]: SETGLOBAL R0 K7        ; blanc := R0
 29 [-]: GETGLOBAL R0 K9        ; R0 := Image
 30 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 31 [-]: LOADK     R1 K11       ; R1 := "./splash.jpg"
 32 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 33 [-]: SETGLOBAL R0 K8        ; imgSplash := R0
 34 [-]: GETGLOBAL R0 K9        ; R0 := Image
 35 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 36 [-]: LOADK     R1 K13       ; R1 := "./menu.jpg"
 37 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 38 [-]: SETGLOBAL R0 K12       ; imgMenu := R0
 39 [-]: GETGLOBAL R0 K9        ; R0 := Image
 40 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 41 [-]: LOADK     R1 K15       ; R1 := "./credits.jpg"
 42 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 43 [-]: SETGLOBAL R0 K14       ; imgCredits := R0
 44 [-]: GETGLOBAL R0 K9        ; R0 := Image
 45 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 46 [-]: LOADK     R1 K17       ; R1 := "./aide.jpg"
 47 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 48 [-]: SETGLOBAL R0 K16       ; imgAide := R0
 49 [-]: GETGLOBAL R0 K9        ; R0 := Image
 50 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 51 [-]: LOADK     R1 K19       ; R1 := "./piece.jpg"
 52 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 53 [-]: SETGLOBAL R0 K18       ; imgFond := R0
 54 [-]: GETGLOBAL R0 K9        ; R0 := Image
 55 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 56 [-]: LOADK     R1 K21       ; R1 := "./pause.png"
 57 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 58 [-]: SETGLOBAL R0 K20       ; imgPause := R0
 59 [-]: GETGLOBAL R0 K9        ; R0 := Image
 60 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 61 [-]: LOADK     R1 K23       ; R1 := "./Scores.jpg"
 62 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 63 [-]: SETGLOBAL R0 K22       ; imgScores := R0
 64 [-]: GETGLOBAL R0 K9        ; R0 := Image
 65 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 66 [-]: LOADK     R1 K25       ; R1 := "./zombieG.png"
 67 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 68 [-]: SETGLOBAL R0 K24       ; imgZombieG := R0
 69 [-]: GETGLOBAL R0 K9        ; R0 := Image
 70 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 71 [-]: LOADK     R1 K27       ; R1 := "./zombieP.png"
 72 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 73 [-]: SETGLOBAL R0 K26       ; imgZombieP := R0
 74 [-]: GETGLOBAL R0 K9        ; R0 := Image
 75 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 76 [-]: LOADK     R1 K29       ; R1 := "./zombieBoomG.png"
 77 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 78 [-]: SETGLOBAL R0 K28       ; imgZombieBoomG := R0
 79 [-]: GETGLOBAL R0 K9        ; R0 := Image
 80 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 81 [-]: LOADK     R1 K31       ; R1 := "./zombieBoomP.png"
 82 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 83 [-]: SETGLOBAL R0 K30       ; imgZombieBoomP := R0
 84 [-]: GETGLOBAL R0 K9        ; R0 := Image
 85 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 86 [-]: LOADK     R1 K33       ; R1 := "./viseur.png"
 87 [-]: CALL      R0 2 2       ; R0 := R0(R1)
 88 [-]: SETGLOBAL R0 K32       ; imgViseur := R0
 89 [-]: GETGLOBAL R0 K34       ; R0 := Mp3me
 90 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
 91 [-]: LOADK     R1 K35       ; R1 := "musique.mp3"
 92 [-]: CALL      R0 2 1       ; R0(R1)
 93 [-]: NEWTABLE  R0 0 0       ; R0 := {}
 94 [-]: SETGLOBAL R0 K36       ; zombies := R0
 95 [-]: GETGLOBAL R0 K36       ; R0 := zombies
 96 [-]: NEWTABLE  R1 0 5       ; R1 := {}
 97 [-]: SETTABLE  R1 K38 K39   ; R1["x"] := 80
 98 [-]: SETTABLE  R1 K40 K41   ; R1["y"] := 140
 99 [-]: SETTABLE  R1 K42 K43   ; R1["w"] := 64
100 [-]: SETTABLE  R1 K44 K45   ; R1["h"] := 130
101 [-]: SETTABLE  R1 K46 K4    ; R1["a"] := 0
102 [-]: SETTABLE  R0 K37 R1    ; R0[1] := R1
103 [-]: GETGLOBAL R0 K36       ; R0 := zombies
104 [-]: NEWTABLE  R1 0 5       ; R1 := {}
105 [-]: SETTABLE  R1 K38 K48   ; R1["x"] := 210
106 [-]: SETTABLE  R1 K40 K41   ; R1["y"] := 140
107 [-]: SETTABLE  R1 K42 K43   ; R1["w"] := 64
108 [-]: SETTABLE  R1 K44 K45   ; R1["h"] := 130
109 [-]: SETTABLE  R1 K46 K4    ; R1["a"] := 0
110 [-]: SETTABLE  R0 K47 R1    ; R0[2] := R1
111 [-]: GETGLOBAL R0 K36       ; R0 := zombies
112 [-]: NEWTABLE  R1 0 5       ; R1 := {}
113 [-]: SETTABLE  R1 K38 K50   ; R1["x"] := 340
114 [-]: SETTABLE  R1 K40 K41   ; R1["y"] := 140
115 [-]: SETTABLE  R1 K42 K43   ; R1["w"] := 64
116 [-]: SETTABLE  R1 K44 K45   ; R1["h"] := 130
117 [-]: SETTABLE  R1 K46 K4    ; R1["a"] := 0
118 [-]: SETTABLE  R0 K49 R1    ; R0[3] := R1
119 [-]: GETGLOBAL R0 K36       ; R0 := zombies
120 [-]: NEWTABLE  R1 0 5       ; R1 := {}
121 [-]: SETTABLE  R1 K38 K52   ; R1["x"] := 150
122 [-]: SETTABLE  R1 K40 K45   ; R1["y"] := 130
123 [-]: SETTABLE  R1 K42 K53   ; R1["w"] := 57
124 [-]: SETTABLE  R1 K44 K54   ; R1["h"] := 115
125 [-]: SETTABLE  R1 K46 K4    ; R1["a"] := 0
126 [-]: SETTABLE  R0 K51 R1    ; R0[4] := R1
127 [-]: GETGLOBAL R0 K36       ; R0 := zombies
128 [-]: NEWTABLE  R1 0 5       ; R1 := {}
129 [-]: SETTABLE  R1 K38 K56   ; R1["x"] := 280
130 [-]: SETTABLE  R1 K40 K45   ; R1["y"] := 130
131 [-]: SETTABLE  R1 K42 K53   ; R1["w"] := 57
132 [-]: SETTABLE  R1 K44 K54   ; R1["h"] := 115
133 [-]: SETTABLE  R1 K46 K4    ; R1["a"] := 0
134 [-]: SETTABLE  R0 K55 R1    ; R0[5] := R1
135 [-]: NEWTABLE  R0 0 0       ; R0 := {}
136 [-]: SETGLOBAL R0 K57       ; zombiesBoom := R0
137 [-]: LOADK     R0 K4        ; R0 := 0
138 [-]: SETGLOBAL R0 K58       ; j := R0
139 [-]: LOADK     R0 K60       ; R0 := 230
140 [-]: SETGLOBAL R0 K59       ; viseurX := R0
141 [-]: LOADK     R0 K62       ; R0 := 165
142 [-]: SETGLOBAL R0 K61       ; viseurY := R0
143 [-]: LOADK     R0 K4        ; R0 := 0
144 [-]: SETGLOBAL R0 K63       ; commencer := R0
145 [-]: LOADK     R0 K4        ; R0 := 0
146 [-]: SETGLOBAL R0 K64       ; menu := R0
147 [-]: LOADK     R0 K4        ; R0 := 0
148 [-]: SETGLOBAL R0 K65       ; pause := R0
149 [-]: LOADK     R0 K4        ; R0 := 0
150 [-]: SETGLOBAL R0 K66       ; tirs := R0
151 [-]: GETGLOBAL R0 K68       ; R0 := Timer
152 [-]: GETTABLE  R0 R0 K2     ; R0 := R0["new"]
153 [-]: LOADK     R1 K4        ; R1 := 0
154 [-]: CALL      R0 2 2       ; R0 := R0(R1)
155 [-]: SETGLOBAL R0 K67       ; chrono := R0
156 [-]: GETGLOBAL R0 K67       ; R0 := chrono
157 [-]: SELF      R0 R0 K69    ; R1 := R0; R0 := R0["reset"]
158 [-]: CALL      R0 2 1       ; R0(R1)
159 [-]: LOADK     R0 K71       ; R0 := 30
160 [-]: SETGLOBAL R0 K70       ; tempsVague := R0
161 [-]: LOADK     R0 K4        ; R0 := 0
162 [-]: SETGLOBAL R0 K72       ; zombiesTues := R0
163 [-]: GETGLOBAL R0 K74       ; R0 := math
164 [-]: GETTABLE  R0 R0 K75    ; R0 := R0["random"]
165 [-]: LOADK     R1 K37       ; R1 := 1
166 [-]: LOADK     R2 K55       ; R2 := 5
167 [-]: CALL      R0 3 2       ; R0 := R0(R1,R2)
168 [-]: SETGLOBAL R0 K73       ; zombieAffiche := R0
169 [-]: GETGLOBAL R0 K36       ; R0 := zombies
170 [-]: GETGLOBAL R1 K73       ; R1 := zombieAffiche
171 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
172 [-]: SETTABLE  R0 K46 K37   ; R0["a"] := 1
173 [-]: GETGLOBAL R0 K77       ; R0 := Controls
174 [-]: GETTABLE  R0 R0 K78    ; R0 := R0["read"]
175 [-]: CALL      R0 1 2       ; R0 := R0()
176 [-]: SETGLOBAL R0 K76       ; oldpad := R0
177 [-]: CLOSURE   R0 0         ; R0 := closure(Function #1)
178 [-]: SETGLOBAL R0 K79       ; Colision := R0
179 [-]: GETGLOBAL R0 K80       ; R0 := screen
180 [-]: SELF      R0 R0 K81    ; R1 := R0; R0 := R0["clear"]
181 [-]: CALL      R0 2 1       ; R0(R1)
182 [-]: GETGLOBAL R0 K77       ; R0 := Controls
183 [-]: GETTABLE  R0 R0 K78    ; R0 := R0["read"]
184 [-]: CALL      R0 1 2       ; R0 := R0()
185 [-]: SETGLOBAL R0 K82       ; pad := R0
186 [-]: GETGLOBAL R0 K83       ; R0 := Music
187 [-]: GETTABLE  R0 R0 K84    ; R0 := R0["volume"]
188 [-]: LOADK     R1 K85       ; R1 := 32
189 [-]: CALL      R0 2 1       ; R0(R1)
190 [-]: GETGLOBAL R0 K34       ; R0 := Mp3me
191 [-]: GETTABLE  R0 R0 K86    ; R0 := R0["play"]
192 [-]: CALL      R0 1 1       ; R0()
193 [-]: GETGLOBAL R0 K34       ; R0 := Mp3me
194 [-]: GETTABLE  R0 R0 K87    ; R0 := R0["percent"]
195 [-]: CALL      R0 1 2       ; R0 := R0()
196 [-]: LE        0 K88 R0     ; if 96 > R0 then PC := 208
197 [-]: JMP       208          ; PC := 208
198 [-]: GETGLOBAL R0 K34       ; R0 := Mp3me
199 [-]: GETTABLE  R0 R0 K89    ; R0 := R0["stop"]
200 [-]: CALL      R0 1 1       ; R0()
201 [-]: GETGLOBAL R0 K34       ; R0 := Mp3me
202 [-]: GETTABLE  R0 R0 K10    ; R0 := R0["load"]
203 [-]: LOADK     R1 K35       ; R1 := "musique.mp3"
204 [-]: CALL      R0 2 1       ; R0(R1)
205 [-]: GETGLOBAL R0 K34       ; R0 := Mp3me
206 [-]: GETTABLE  R0 R0 K86    ; R0 := R0["play"]
207 [-]: CALL      R0 1 1       ; R0()
208 [-]: GETGLOBAL R0 K63       ; R0 := commencer
209 [-]: EQ        0 R0 K4      ; if R0 ~= 0 then PC := 229
210 [-]: JMP       229          ; PC := 229
211 [-]: GETGLOBAL R0 K80       ; R0 := screen
212 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
213 [-]: LOADK     R2 K4        ; R2 := 0
214 [-]: LOADK     R3 K4        ; R3 := 0
215 [-]: GETGLOBAL R4 K8        ; R4 := imgSplash
216 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
217 [-]: GETGLOBAL R0 K82       ; R0 := pad
218 [-]: SELF      R0 R0 K91    ; R1 := R0; R0 := R0["start"]
219 [-]: CALL      R0 2 2       ; R0 := R0(R1)
220 [-]: TEST      R0 0         ; if not R0 then PC := 853
221 [-]: JMP       853          ; PC := 853
222 [-]: GETGLOBAL R0 K76       ; R0 := oldpad
223 [-]: GETGLOBAL R1 K82       ; R1 := pad
224 [-]: EQ        1 R0 R1      ; if R0 == R1 then PC := 853
225 [-]: JMP       853          ; PC := 853
226 [-]: LOADK     R0 K37       ; R0 := 1
227 [-]: SETGLOBAL R0 K63       ; commencer := R0
228 [-]: JMP       853          ; PC := 853
229 [-]: GETGLOBAL R0 K64       ; R0 := menu
230 [-]: EQ        0 R0 K4      ; if R0 ~= 0 then PC := 274
231 [-]: JMP       274          ; PC := 274
232 [-]: GETGLOBAL R0 K80       ; R0 := screen
233 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
234 [-]: LOADK     R2 K4        ; R2 := 0
235 [-]: LOADK     R3 K4        ; R3 := 0
236 [-]: GETGLOBAL R4 K12       ; R4 := imgMenu
237 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
238 [-]: GETGLOBAL R0 K82       ; R0 := pad
239 [-]: SELF      R0 R0 K92    ; R1 := R0; R0 := R0["cross"]
240 [-]: CALL      R0 2 2       ; R0 := R0(R1)
241 [-]: TEST      R0 0         ; if not R0 then PC := 250
242 [-]: JMP       250          ; PC := 250
243 [-]: GETGLOBAL R0 K76       ; R0 := oldpad
244 [-]: GETGLOBAL R1 K82       ; R1 := pad
245 [-]: EQ        1 R0 R1      ; if R0 == R1 then PC := 250
246 [-]: JMP       250          ; PC := 250
247 [-]: LOADK     R0 K37       ; R0 := 1
248 [-]: SETGLOBAL R0 K64       ; menu := R0
249 [-]: JMP       853          ; PC := 853
250 [-]: GETGLOBAL R0 K82       ; R0 := pad
251 [-]: SELF      R0 R0 K93    ; R1 := R0; R0 := R0["circle"]
252 [-]: CALL      R0 2 2       ; R0 := R0(R1)
253 [-]: TEST      R0 0         ; if not R0 then PC := 262
254 [-]: JMP       262          ; PC := 262
255 [-]: GETGLOBAL R0 K76       ; R0 := oldpad
256 [-]: GETGLOBAL R1 K82       ; R1 := pad
257 [-]: EQ        1 R0 R1      ; if R0 == R1 then PC := 262
258 [-]: JMP       262          ; PC := 262
259 [-]: LOADK     R0 K47       ; R0 := 2
260 [-]: SETGLOBAL R0 K64       ; menu := R0
261 [-]: JMP       853          ; PC := 853
262 [-]: GETGLOBAL R0 K82       ; R0 := pad
263 [-]: SELF      R0 R0 K94    ; R1 := R0; R0 := R0["square"]
264 [-]: CALL      R0 2 2       ; R0 := R0(R1)
265 [-]: TEST      R0 0         ; if not R0 then PC := 853
266 [-]: JMP       853          ; PC := 853
267 [-]: GETGLOBAL R0 K76       ; R0 := oldpad
268 [-]: GETGLOBAL R1 K82       ; R1 := pad
269 [-]: EQ        1 R0 R1      ; if R0 == R1 then PC := 853
270 [-]: JMP       853          ; PC := 853
271 [-]: LOADK     R0 K49       ; R0 := 3
272 [-]: SETGLOBAL R0 K64       ; menu := R0
273 [-]: JMP       853          ; PC := 853
274 [-]: GETGLOBAL R0 K64       ; R0 := menu
275 [-]: EQ        0 R0 K37     ; if R0 ~= 1 then PC := 812
276 [-]: JMP       812          ; PC := 812
277 [-]: GETGLOBAL R0 K65       ; R0 := pause
278 [-]: EQ        0 R0 K4      ; if R0 ~= 0 then PC := 283
279 [-]: JMP       283          ; PC := 283
280 [-]: GETGLOBAL R0 K67       ; R0 := chrono
281 [-]: SELF      R0 R0 K91    ; R1 := R0; R0 := R0["start"]
282 [-]: CALL      R0 2 1       ; R0(R1)
283 [-]: GETGLOBAL R0 K67       ; R0 := chrono
284 [-]: SELF      R0 R0 K96    ; R1 := R0; R0 := R0["time"]
285 [-]: CALL      R0 2 2       ; R0 := R0(R1)
286 [-]: DIV       R0 R0 K97    ; R0 := R0 / 1000
287 [-]: SETGLOBAL R0 K95       ; temps := R0
288 [-]: GETGLOBAL R0 K70       ; R0 := tempsVague
289 [-]: GETGLOBAL R1 K95       ; R1 := temps
290 [-]: SUB       R0 R0 R1     ; R0 := R0 - R1
291 [-]: SETGLOBAL R0 K98       ; tempsRestant := R0
292 [-]: GETGLOBAL R0 K98       ; R0 := tempsRestant
293 [-]: LE        0 R0 K4      ; if R0 > 0 then PC := 389
294 [-]: JMP       389          ; PC := 389
295 [-]: GETGLOBAL R0 K80       ; R0 := screen
296 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
297 [-]: LOADK     R2 K4        ; R2 := 0
298 [-]: LOADK     R3 K4        ; R3 := 0
299 [-]: GETGLOBAL R4 K22       ; R4 := imgScores
300 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
301 [-]: GETGLOBAL R0 K80       ; R0 := screen
302 [-]: SELF      R0 R0 K99    ; R1 := R0; R0 := R0["print"]
303 [-]: LOADK     R2 K100      ; R2 := 40
304 [-]: LOADK     R3 K39       ; R3 := 80
305 [-]: LOADK     R4 K101      ; R4 := "Duree de la vague : "
306 [-]: GETGLOBAL R5 K70       ; R5 := tempsVague
307 [-]: LOADK     R6 K102      ; R6 := "s"
308 [-]: CONCAT    R4 R4 R6     ; R4 := R4 .. R5 .. R6
309 [-]: GETGLOBAL R5 K7        ; R5 := blanc
310 [-]: CALL      R0 6 1       ; R0(R1,R2,R3,R4,R5)
311 [-]: GETGLOBAL R0 K80       ; R0 := screen
312 [-]: SELF      R0 R0 K99    ; R1 := R0; R0 := R0["print"]
313 [-]: LOADK     R2 K100      ; R2 := 40
314 [-]: LOADK     R3 K103      ; R3 := 120
315 [-]: LOADK     R4 K104      ; R4 := "Nombre de zombies tues : "
316 [-]: GETGLOBAL R5 K72       ; R5 := zombiesTues
317 [-]: CONCAT    R4 R4 R5     ; R4 := R4 .. R5
318 [-]: GETGLOBAL R5 K7        ; R5 := blanc
319 [-]: CALL      R0 6 1       ; R0(R1,R2,R3,R4,R5)
320 [-]: GETGLOBAL R0 K80       ; R0 := screen
321 [-]: SELF      R0 R0 K99    ; R1 := R0; R0 := R0["print"]
322 [-]: LOADK     R2 K100      ; R2 := 40
323 [-]: LOADK     R3 K105      ; R3 := 160
324 [-]: LOADK     R4 K106      ; R4 := "Tirs rates : "
325 [-]: GETGLOBAL R5 K66       ; R5 := tirs
326 [-]: GETGLOBAL R6 K72       ; R6 := zombiesTues
327 [-]: SUB       R5 R5 R6     ; R5 := R5 - R6
328 [-]: CONCAT    R4 R4 R5     ; R4 := R4 .. R5
329 [-]: GETGLOBAL R5 K7        ; R5 := blanc
330 [-]: CALL      R0 6 1       ; R0(R1,R2,R3,R4,R5)
331 [-]: GETGLOBAL R0 K80       ; R0 := screen
332 [-]: SELF      R0 R0 K99    ; R1 := R0; R0 := R0["print"]
333 [-]: LOADK     R2 K100      ; R2 := 40
334 [-]: LOADK     R3 K107      ; R3 := 200
335 [-]: LOADK     R4 K108      ; R4 := "Score final : "
336 [-]: GETGLOBAL R5 K72       ; R5 := zombiesTues
337 [-]: MUL       R5 K109 R5   ; R5 := 100 * R5
338 [-]: GETGLOBAL R6 K66       ; R6 := tirs
339 [-]: GETGLOBAL R7 K72       ; R7 := zombiesTues
340 [-]: SUB       R6 R6 R7     ; R6 := R6 - R7
341 [-]: MUL       R6 K110 R6   ; R6 := 10 * R6
342 [-]: SUB       R5 R5 R6     ; R5 := R5 - R6
343 [-]: CONCAT    R4 R4 R5     ; R4 := R4 .. R5
344 [-]: GETGLOBAL R5 K7        ; R5 := blanc
345 [-]: CALL      R0 6 1       ; R0(R1,R2,R3,R4,R5)
346 [-]: GETGLOBAL R0 K82       ; R0 := pad
347 [-]: SELF      R0 R0 K91    ; R1 := R0; R0 := R0["start"]
348 [-]: CALL      R0 2 2       ; R0 := R0(R1)
349 [-]: TEST      R0 0         ; if not R0 then PC := 853
350 [-]: JMP       853          ; PC := 853
351 [-]: LOADK     R0 K4        ; R0 := 0
352 [-]: SETGLOBAL R0 K72       ; zombiesTues := R0
353 [-]: LOADK     R0 K60       ; R0 := 230
354 [-]: SETGLOBAL R0 K59       ; viseurX := R0
355 [-]: LOADK     R0 K4        ; R0 := 0
356 [-]: SETGLOBAL R0 K66       ; tirs := R0
357 [-]: GETGLOBAL R0 K67       ; R0 := chrono
358 [-]: SELF      R0 R0 K89    ; R1 := R0; R0 := R0["stop"]
359 [-]: CALL      R0 2 1       ; R0(R1)
360 [-]: GETGLOBAL R0 K67       ; R0 := chrono
361 [-]: SELF      R0 R0 K69    ; R1 := R0; R0 := R0["reset"]
362 [-]: CALL      R0 2 1       ; R0(R1)
363 [-]: LOADK     R0 K37       ; R0 := 1
364 [-]: SETGLOBAL R0 K111      ; i := R0
365 [-]: GETGLOBAL R0 K111      ; R0 := i
366 [-]: LE        0 R0 K55     ; if R0 > 5 then PC := 376
367 [-]: JMP       376          ; PC := 376
368 [-]: GETGLOBAL R0 K36       ; R0 := zombies
369 [-]: GETGLOBAL R1 K111      ; R1 := i
370 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
371 [-]: SETTABLE  R0 K46 K4    ; R0["a"] := 0
372 [-]: GETGLOBAL R0 K111      ; R0 := i
373 [-]: ADD       R0 R0 K37    ; R0 := R0 + 1
374 [-]: SETGLOBAL R0 K111      ; i := R0
375 [-]: JMP       365          ; PC := 365
376 [-]: GETGLOBAL R0 K74       ; R0 := math
377 [-]: GETTABLE  R0 R0 K75    ; R0 := R0["random"]
378 [-]: LOADK     R1 K37       ; R1 := 1
379 [-]: LOADK     R2 K55       ; R2 := 5
380 [-]: CALL      R0 3 2       ; R0 := R0(R1,R2)
381 [-]: SETGLOBAL R0 K73       ; zombieAffiche := R0
382 [-]: GETGLOBAL R0 K36       ; R0 := zombies
383 [-]: GETGLOBAL R1 K73       ; R1 := zombieAffiche
384 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
385 [-]: SETTABLE  R0 K46 K37   ; R0["a"] := 1
386 [-]: LOADK     R0 K4        ; R0 := 0
387 [-]: SETGLOBAL R0 K64       ; menu := R0
388 [-]: JMP       853          ; PC := 853
389 [-]: GETGLOBAL R0 K98       ; R0 := tempsRestant
390 [-]: LE        0 K4 R0      ; if 0 > R0 then PC := 680
391 [-]: JMP       680          ; PC := 680
392 [-]: GETGLOBAL R0 K65       ; R0 := pause
393 [-]: EQ        0 R0 K4      ; if R0 ~= 0 then PC := 680
394 [-]: JMP       680          ; PC := 680
395 [-]: GETGLOBAL R0 K80       ; R0 := screen
396 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
397 [-]: LOADK     R2 K4        ; R2 := 0
398 [-]: LOADK     R3 K4        ; R3 := 0
399 [-]: GETGLOBAL R4 K18       ; R4 := imgFond
400 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
401 [-]: LOADK     R0 K37       ; R0 := 1
402 [-]: SETGLOBAL R0 K111      ; i := R0
403 [-]: GETGLOBAL R0 K111      ; R0 := i
404 [-]: LE        0 R0 K55     ; if R0 > 5 then PC := 523
405 [-]: JMP       523          ; PC := 523
406 [-]: GETGLOBAL R0 K111      ; R0 := i
407 [-]: LE        0 R0 K49     ; if R0 > 3 then PC := 428
408 [-]: JMP       428          ; PC := 428
409 [-]: GETGLOBAL R0 K36       ; R0 := zombies
410 [-]: GETGLOBAL R1 K111      ; R1 := i
411 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
412 [-]: GETTABLE  R0 R0 K46    ; R0 := R0["a"]
413 [-]: EQ        0 R0 K37     ; if R0 ~= 1 then PC := 428
414 [-]: JMP       428          ; PC := 428
415 [-]: GETGLOBAL R0 K80       ; R0 := screen
416 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
417 [-]: GETGLOBAL R2 K36       ; R2 := zombies
418 [-]: GETGLOBAL R3 K111      ; R3 := i
419 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
420 [-]: GETTABLE  R2 R2 K38    ; R2 := R2["x"]
421 [-]: GETGLOBAL R3 K36       ; R3 := zombies
422 [-]: GETGLOBAL R4 K111      ; R4 := i
423 [-]: GETTABLE  R3 R3 R4     ; R3 := R3[R4]
424 [-]: GETTABLE  R3 R3 K40    ; R3 := R3["y"]
425 [-]: GETGLOBAL R4 K24       ; R4 := imgZombieG
426 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
427 [-]: JMP       519          ; PC := 519
428 [-]: GETGLOBAL R0 K111      ; R0 := i
429 [-]: LT        0 K49 R0     ; if 3 >= R0 then PC := 450
430 [-]: JMP       450          ; PC := 450
431 [-]: GETGLOBAL R0 K36       ; R0 := zombies
432 [-]: GETGLOBAL R1 K111      ; R1 := i
433 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
434 [-]: GETTABLE  R0 R0 K46    ; R0 := R0["a"]
435 [-]: EQ        0 R0 K37     ; if R0 ~= 1 then PC := 450
436 [-]: JMP       450          ; PC := 450
437 [-]: GETGLOBAL R0 K80       ; R0 := screen
438 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
439 [-]: GETGLOBAL R2 K36       ; R2 := zombies
440 [-]: GETGLOBAL R3 K111      ; R3 := i
441 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
442 [-]: GETTABLE  R2 R2 K38    ; R2 := R2["x"]
443 [-]: GETGLOBAL R3 K36       ; R3 := zombies
444 [-]: GETGLOBAL R4 K111      ; R4 := i
445 [-]: GETTABLE  R3 R3 R4     ; R3 := R3[R4]
446 [-]: GETTABLE  R3 R3 K40    ; R3 := R3["y"]
447 [-]: GETGLOBAL R4 K26       ; R4 := imgZombieP
448 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
449 [-]: JMP       519          ; PC := 519
450 [-]: GETGLOBAL R0 K111      ; R0 := i
451 [-]: LE        0 R0 K49     ; if R0 > 3 then PC := 485
452 [-]: JMP       485          ; PC := 485
453 [-]: GETGLOBAL R0 K36       ; R0 := zombies
454 [-]: GETGLOBAL R1 K111      ; R1 := i
455 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
456 [-]: GETTABLE  R0 R0 K46    ; R0 := R0["a"]
457 [-]: EQ        0 R0 K47     ; if R0 ~= 2 then PC := 485
458 [-]: JMP       485          ; PC := 485
459 [-]: GETGLOBAL R0 K80       ; R0 := screen
460 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
461 [-]: GETGLOBAL R2 K36       ; R2 := zombies
462 [-]: GETGLOBAL R3 K111      ; R3 := i
463 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
464 [-]: GETTABLE  R2 R2 K38    ; R2 := R2["x"]
465 [-]: GETGLOBAL R3 K36       ; R3 := zombies
466 [-]: GETGLOBAL R4 K111      ; R4 := i
467 [-]: GETTABLE  R3 R3 R4     ; R3 := R3[R4]
468 [-]: GETTABLE  R3 R3 K40    ; R3 := R3["y"]
469 [-]: GETGLOBAL R4 K28       ; R4 := imgZombieBoomG
470 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
471 [-]: GETGLOBAL R0 K67       ; R0 := chrono
472 [-]: SELF      R0 R0 K96    ; R1 := R0; R0 := R0["time"]
473 [-]: CALL      R0 2 2       ; R0 := R0(R1)
474 [-]: GETGLOBAL R1 K57       ; R1 := zombiesBoom
475 [-]: GETGLOBAL R2 K111      ; R2 := i
476 [-]: GETTABLE  R1 R1 R2     ; R1 := R1[R2]
477 [-]: SUB       R0 R0 R1     ; R0 := R0 - R1
478 [-]: LE        0 K112 R0    ; if 250 > R0 then PC := 519
479 [-]: JMP       519          ; PC := 519
480 [-]: GETGLOBAL R0 K36       ; R0 := zombies
481 [-]: GETGLOBAL R1 K111      ; R1 := i
482 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
483 [-]: SETTABLE  R0 K46 K4    ; R0["a"] := 0
484 [-]: JMP       519          ; PC := 519
485 [-]: GETGLOBAL R0 K111      ; R0 := i
486 [-]: LT        0 K49 R0     ; if 3 >= R0 then PC := 519
487 [-]: JMP       519          ; PC := 519
488 [-]: GETGLOBAL R0 K36       ; R0 := zombies
489 [-]: GETGLOBAL R1 K111      ; R1 := i
490 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
491 [-]: GETTABLE  R0 R0 K46    ; R0 := R0["a"]
492 [-]: EQ        0 R0 K47     ; if R0 ~= 2 then PC := 519
493 [-]: JMP       519          ; PC := 519
494 [-]: GETGLOBAL R0 K80       ; R0 := screen
495 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
496 [-]: GETGLOBAL R2 K36       ; R2 := zombies
497 [-]: GETGLOBAL R3 K111      ; R3 := i
498 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
499 [-]: GETTABLE  R2 R2 K38    ; R2 := R2["x"]
500 [-]: GETGLOBAL R3 K36       ; R3 := zombies
501 [-]: GETGLOBAL R4 K111      ; R4 := i
502 [-]: GETTABLE  R3 R3 R4     ; R3 := R3[R4]
503 [-]: GETTABLE  R3 R3 K40    ; R3 := R3["y"]
504 [-]: GETGLOBAL R4 K30       ; R4 := imgZombieBoomP
505 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
506 [-]: GETGLOBAL R0 K67       ; R0 := chrono
507 [-]: SELF      R0 R0 K96    ; R1 := R0; R0 := R0["time"]
508 [-]: CALL      R0 2 2       ; R0 := R0(R1)
509 [-]: GETGLOBAL R1 K57       ; R1 := zombiesBoom
510 [-]: GETGLOBAL R2 K111      ; R2 := i
511 [-]: GETTABLE  R1 R1 R2     ; R1 := R1[R2]
512 [-]: SUB       R0 R0 R1     ; R0 := R0 - R1
513 [-]: LE        0 K112 R0    ; if 250 > R0 then PC := 519
514 [-]: JMP       519          ; PC := 519
515 [-]: GETGLOBAL R0 K36       ; R0 := zombies
516 [-]: GETGLOBAL R1 K111      ; R1 := i
517 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
518 [-]: SETTABLE  R0 K46 K4    ; R0["a"] := 0
519 [-]: GETGLOBAL R0 K111      ; R0 := i
520 [-]: ADD       R0 R0 K37    ; R0 := R0 + 1
521 [-]: SETGLOBAL R0 K111      ; i := R0
522 [-]: JMP       403          ; PC := 403
523 [-]: GETGLOBAL R0 K80       ; R0 := screen
524 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
525 [-]: GETGLOBAL R2 K59       ; R2 := viseurX
526 [-]: GETGLOBAL R3 K61       ; R3 := viseurY
527 [-]: GETGLOBAL R4 K32       ; R4 := imgViseur
528 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
529 [-]: GETGLOBAL R0 K80       ; R0 := screen
530 [-]: SELF      R0 R0 K99    ; R1 := R0; R0 := R0["print"]
531 [-]: LOADK     R2 K37       ; R2 := 1
532 [-]: LOADK     R3 K37       ; R3 := 1
533 [-]: LOADK     R4 K113      ; R4 := "Temps restant : "
534 [-]: GETGLOBAL R5 K98       ; R5 := tempsRestant
535 [-]: LOADK     R6 K102      ; R6 := "s"
536 [-]: CONCAT    R4 R4 R6     ; R4 := R4 .. R5 .. R6
537 [-]: GETGLOBAL R5 K0        ; R5 := rouge
538 [-]: CALL      R0 6 1       ; R0(R1,R2,R3,R4,R5)
539 [-]: GETGLOBAL R0 K80       ; R0 := screen
540 [-]: SELF      R0 R0 K99    ; R1 := R0; R0 := R0["print"]
541 [-]: LOADK     R2 K112      ; R2 := 250
542 [-]: LOADK     R3 K37       ; R3 := 1
543 [-]: LOADK     R4 K114      ; R4 := "Zombies tues : "
544 [-]: GETGLOBAL R5 K72       ; R5 := zombiesTues
545 [-]: CONCAT    R4 R4 R5     ; R4 := R4 .. R5
546 [-]: GETGLOBAL R5 K0        ; R5 := rouge
547 [-]: CALL      R0 6 1       ; R0(R1,R2,R3,R4,R5)
548 [-]: GETGLOBAL R0 K82       ; R0 := pad
549 [-]: SELF      R0 R0 K115   ; R1 := R0; R0 := R0["left"]
550 [-]: CALL      R0 2 2       ; R0 := R0(R1)
551 [-]: TEST      R0 0         ; if not R0 then PC := 560
552 [-]: JMP       560          ; PC := 560
553 [-]: GETGLOBAL R0 K59       ; R0 := viseurX
554 [-]: LE        0 K4 R0      ; if 0 > R0 then PC := 560
555 [-]: JMP       560          ; PC := 560
556 [-]: GETGLOBAL R0 K59       ; R0 := viseurX
557 [-]: SUB       R0 R0 K55    ; R0 := R0 - 5
558 [-]: SETGLOBAL R0 K59       ; viseurX := R0
559 [-]: JMP       853          ; PC := 853
560 [-]: GETGLOBAL R0 K82       ; R0 := pad
561 [-]: SELF      R0 R0 K116   ; R1 := R0; R0 := R0["right"]
562 [-]: CALL      R0 2 2       ; R0 := R0(R1)
563 [-]: TEST      R0 0         ; if not R0 then PC := 572
564 [-]: JMP       572          ; PC := 572
565 [-]: GETGLOBAL R0 K59       ; R0 := viseurX
566 [-]: LE        0 R0 K117    ; if R0 > 480 then PC := 572
567 [-]: JMP       572          ; PC := 572
568 [-]: GETGLOBAL R0 K59       ; R0 := viseurX
569 [-]: ADD       R0 R0 K55    ; R0 := R0 + 5
570 [-]: SETGLOBAL R0 K59       ; viseurX := R0
571 [-]: JMP       853          ; PC := 853
572 [-]: GETGLOBAL R0 K82       ; R0 := pad
573 [-]: SELF      R0 R0 K92    ; R1 := R0; R0 := R0["cross"]
574 [-]: CALL      R0 2 2       ; R0 := R0(R1)
575 [-]: TEST      R0 0         ; if not R0 then PC := 665
576 [-]: JMP       665          ; PC := 665
577 [-]: GETGLOBAL R0 K76       ; R0 := oldpad
578 [-]: GETGLOBAL R1 K82       ; R1 := pad
579 [-]: EQ        1 R0 R1      ; if R0 == R1 then PC := 665
580 [-]: JMP       665          ; PC := 665
581 [-]: LOADK     R0 K37       ; R0 := 1
582 [-]: SETGLOBAL R0 K111      ; i := R0
583 [-]: GETGLOBAL R0 K111      ; R0 := i
584 [-]: LE        0 R0 K55     ; if R0 > 5 then PC := 661
585 [-]: JMP       661          ; PC := 661
586 [-]: GETGLOBAL R0 K36       ; R0 := zombies
587 [-]: GETGLOBAL R1 K111      ; R1 := i
588 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
589 [-]: GETTABLE  R0 R0 K46    ; R0 := R0["a"]
590 [-]: EQ        0 R0 K37     ; if R0 ~= 1 then PC := 657
591 [-]: JMP       657          ; PC := 657
592 [-]: GETGLOBAL R0 K59       ; R0 := viseurX
593 [-]: ADD       R0 R0 K110   ; R0 := R0 + 10
594 [-]: GETGLOBAL R1 K36       ; R1 := zombies
595 [-]: GETGLOBAL R2 K111      ; R2 := i
596 [-]: GETTABLE  R1 R1 R2     ; R1 := R1[R2]
597 [-]: GETTABLE  R1 R1 K38    ; R1 := R1["x"]
598 [-]: LT        0 R1 R0      ; if R1 >= R0 then PC := 657
599 [-]: JMP       657          ; PC := 657
600 [-]: GETGLOBAL R0 K59       ; R0 := viseurX
601 [-]: ADD       R0 R0 K110   ; R0 := R0 + 10
602 [-]: GETGLOBAL R1 K36       ; R1 := zombies
603 [-]: GETGLOBAL R2 K111      ; R2 := i
604 [-]: GETTABLE  R1 R1 R2     ; R1 := R1[R2]
605 [-]: GETTABLE  R1 R1 K38    ; R1 := R1["x"]
606 [-]: GETGLOBAL R2 K36       ; R2 := zombies
607 [-]: GETGLOBAL R3 K111      ; R3 := i
608 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
609 [-]: GETTABLE  R2 R2 K42    ; R2 := R2["w"]
610 [-]: ADD       R1 R1 R2     ; R1 := R1 + R2
611 [-]: LT        0 R0 R1      ; if R0 >= R1 then PC := 657
612 [-]: JMP       657          ; PC := 657
613 [-]: GETGLOBAL R0 K61       ; R0 := viseurY
614 [-]: ADD       R0 R0 K110   ; R0 := R0 + 10
615 [-]: GETGLOBAL R1 K36       ; R1 := zombies
616 [-]: GETGLOBAL R2 K111      ; R2 := i
617 [-]: GETTABLE  R1 R1 R2     ; R1 := R1[R2]
618 [-]: GETTABLE  R1 R1 K40    ; R1 := R1["y"]
619 [-]: LT        0 R1 R0      ; if R1 >= R0 then PC := 657
620 [-]: JMP       657          ; PC := 657
621 [-]: GETGLOBAL R0 K61       ; R0 := viseurY
622 [-]: ADD       R0 R0 K110   ; R0 := R0 + 10
623 [-]: GETGLOBAL R1 K36       ; R1 := zombies
624 [-]: GETGLOBAL R2 K111      ; R2 := i
625 [-]: GETTABLE  R1 R1 R2     ; R1 := R1[R2]
626 [-]: GETTABLE  R1 R1 K40    ; R1 := R1["y"]
627 [-]: GETGLOBAL R2 K36       ; R2 := zombies
628 [-]: GETGLOBAL R3 K111      ; R3 := i
629 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
630 [-]: GETTABLE  R2 R2 K44    ; R2 := R2["h"]
631 [-]: ADD       R1 R1 R2     ; R1 := R1 + R2
632 [-]: LT        0 R0 R1      ; if R0 >= R1 then PC := 657
633 [-]: JMP       657          ; PC := 657
634 [-]: GETGLOBAL R0 K36       ; R0 := zombies
635 [-]: GETGLOBAL R1 K111      ; R1 := i
636 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
637 [-]: SETTABLE  R0 K46 K47   ; R0["a"] := 2
638 [-]: GETGLOBAL R0 K57       ; R0 := zombiesBoom
639 [-]: GETGLOBAL R1 K111      ; R1 := i
640 [-]: GETGLOBAL R2 K67       ; R2 := chrono
641 [-]: SELF      R2 R2 K96    ; R3 := R2; R2 := R2["time"]
642 [-]: CALL      R2 2 2       ; R2 := R2(R3)
643 [-]: SETTABLE  R0 R1 R2     ; R0[R1] := R2
644 [-]: GETGLOBAL R0 K74       ; R0 := math
645 [-]: GETTABLE  R0 R0 K75    ; R0 := R0["random"]
646 [-]: LOADK     R1 K37       ; R1 := 1
647 [-]: LOADK     R2 K55       ; R2 := 5
648 [-]: CALL      R0 3 2       ; R0 := R0(R1,R2)
649 [-]: SETGLOBAL R0 K73       ; zombieAffiche := R0
650 [-]: GETGLOBAL R0 K36       ; R0 := zombies
651 [-]: GETGLOBAL R1 K73       ; R1 := zombieAffiche
652 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
653 [-]: SETTABLE  R0 K46 K37   ; R0["a"] := 1
654 [-]: GETGLOBAL R0 K72       ; R0 := zombiesTues
655 [-]: ADD       R0 R0 K37    ; R0 := R0 + 1
656 [-]: SETGLOBAL R0 K72       ; zombiesTues := R0
657 [-]: GETGLOBAL R0 K111      ; R0 := i
658 [-]: ADD       R0 R0 K37    ; R0 := R0 + 1
659 [-]: SETGLOBAL R0 K111      ; i := R0
660 [-]: JMP       583          ; PC := 583
661 [-]: GETGLOBAL R0 K66       ; R0 := tirs
662 [-]: ADD       R0 R0 K37    ; R0 := R0 + 1
663 [-]: SETGLOBAL R0 K66       ; tirs := R0
664 [-]: JMP       853          ; PC := 853
665 [-]: GETGLOBAL R0 K82       ; R0 := pad
666 [-]: SELF      R0 R0 K91    ; R1 := R0; R0 := R0["start"]
667 [-]: CALL      R0 2 2       ; R0 := R0(R1)
668 [-]: TEST      R0 0         ; if not R0 then PC := 853
669 [-]: JMP       853          ; PC := 853
670 [-]: GETGLOBAL R0 K76       ; R0 := oldpad
671 [-]: GETGLOBAL R1 K82       ; R1 := pad
672 [-]: EQ        1 R0 R1      ; if R0 == R1 then PC := 853
673 [-]: JMP       853          ; PC := 853
674 [-]: GETGLOBAL R0 K67       ; R0 := chrono
675 [-]: SELF      R0 R0 K89    ; R1 := R0; R0 := R0["stop"]
676 [-]: CALL      R0 2 1       ; R0(R1)
677 [-]: LOADK     R0 K37       ; R0 := 1
678 [-]: SETGLOBAL R0 K65       ; pause := R0
679 [-]: JMP       853          ; PC := 853
680 [-]: GETGLOBAL R0 K65       ; R0 := pause
681 [-]: EQ        0 R0 K37     ; if R0 ~= 1 then PC := 853
682 [-]: JMP       853          ; PC := 853
683 [-]: GETGLOBAL R0 K80       ; R0 := screen
684 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
685 [-]: LOADK     R2 K4        ; R2 := 0
686 [-]: LOADK     R3 K4        ; R3 := 0
687 [-]: GETGLOBAL R4 K18       ; R4 := imgFond
688 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
689 [-]: LOADK     R0 K37       ; R0 := 1
690 [-]: SETGLOBAL R0 K111      ; i := R0
691 [-]: GETGLOBAL R0 K111      ; R0 := i
692 [-]: LE        0 R0 K55     ; if R0 > 5 then PC := 785
693 [-]: JMP       785          ; PC := 785
694 [-]: GETGLOBAL R0 K111      ; R0 := i
695 [-]: LE        0 R0 K49     ; if R0 > 3 then PC := 716
696 [-]: JMP       716          ; PC := 716
697 [-]: GETGLOBAL R0 K36       ; R0 := zombies
698 [-]: GETGLOBAL R1 K111      ; R1 := i
699 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
700 [-]: GETTABLE  R0 R0 K46    ; R0 := R0["a"]
701 [-]: EQ        0 R0 K37     ; if R0 ~= 1 then PC := 716
702 [-]: JMP       716          ; PC := 716
703 [-]: GETGLOBAL R0 K80       ; R0 := screen
704 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
705 [-]: GETGLOBAL R2 K36       ; R2 := zombies
706 [-]: GETGLOBAL R3 K111      ; R3 := i
707 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
708 [-]: GETTABLE  R2 R2 K38    ; R2 := R2["x"]
709 [-]: GETGLOBAL R3 K36       ; R3 := zombies
710 [-]: GETGLOBAL R4 K111      ; R4 := i
711 [-]: GETTABLE  R3 R3 R4     ; R3 := R3[R4]
712 [-]: GETTABLE  R3 R3 K40    ; R3 := R3["y"]
713 [-]: GETGLOBAL R4 K24       ; R4 := imgZombieG
714 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
715 [-]: JMP       781          ; PC := 781
716 [-]: GETGLOBAL R0 K111      ; R0 := i
717 [-]: LT        0 K49 R0     ; if 3 >= R0 then PC := 738
718 [-]: JMP       738          ; PC := 738
719 [-]: GETGLOBAL R0 K36       ; R0 := zombies
720 [-]: GETGLOBAL R1 K111      ; R1 := i
721 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
722 [-]: GETTABLE  R0 R0 K46    ; R0 := R0["a"]
723 [-]: EQ        0 R0 K37     ; if R0 ~= 1 then PC := 738
724 [-]: JMP       738          ; PC := 738
725 [-]: GETGLOBAL R0 K80       ; R0 := screen
726 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
727 [-]: GETGLOBAL R2 K36       ; R2 := zombies
728 [-]: GETGLOBAL R3 K111      ; R3 := i
729 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
730 [-]: GETTABLE  R2 R2 K38    ; R2 := R2["x"]
731 [-]: GETGLOBAL R3 K36       ; R3 := zombies
732 [-]: GETGLOBAL R4 K111      ; R4 := i
733 [-]: GETTABLE  R3 R3 R4     ; R3 := R3[R4]
734 [-]: GETTABLE  R3 R3 K40    ; R3 := R3["y"]
735 [-]: GETGLOBAL R4 K26       ; R4 := imgZombieP
736 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
737 [-]: JMP       781          ; PC := 781
738 [-]: GETGLOBAL R0 K111      ; R0 := i
739 [-]: LE        0 R0 K49     ; if R0 > 3 then PC := 760
740 [-]: JMP       760          ; PC := 760
741 [-]: GETGLOBAL R0 K36       ; R0 := zombies
742 [-]: GETGLOBAL R1 K111      ; R1 := i
743 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
744 [-]: GETTABLE  R0 R0 K46    ; R0 := R0["a"]
745 [-]: EQ        0 R0 K47     ; if R0 ~= 2 then PC := 760
746 [-]: JMP       760          ; PC := 760
747 [-]: GETGLOBAL R0 K80       ; R0 := screen
748 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
749 [-]: GETGLOBAL R2 K36       ; R2 := zombies
750 [-]: GETGLOBAL R3 K111      ; R3 := i
751 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
752 [-]: GETTABLE  R2 R2 K38    ; R2 := R2["x"]
753 [-]: GETGLOBAL R3 K36       ; R3 := zombies
754 [-]: GETGLOBAL R4 K111      ; R4 := i
755 [-]: GETTABLE  R3 R3 R4     ; R3 := R3[R4]
756 [-]: GETTABLE  R3 R3 K40    ; R3 := R3["y"]
757 [-]: GETGLOBAL R4 K28       ; R4 := imgZombieBoomG
758 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
759 [-]: JMP       781          ; PC := 781
760 [-]: GETGLOBAL R0 K111      ; R0 := i
761 [-]: LT        0 K49 R0     ; if 3 >= R0 then PC := 781
762 [-]: JMP       781          ; PC := 781
763 [-]: GETGLOBAL R0 K36       ; R0 := zombies
764 [-]: GETGLOBAL R1 K111      ; R1 := i
765 [-]: GETTABLE  R0 R0 R1     ; R0 := R0[R1]
766 [-]: GETTABLE  R0 R0 K46    ; R0 := R0["a"]
767 [-]: EQ        0 R0 K47     ; if R0 ~= 2 then PC := 781
768 [-]: JMP       781          ; PC := 781
769 [-]: GETGLOBAL R0 K80       ; R0 := screen
770 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
771 [-]: GETGLOBAL R2 K36       ; R2 := zombies
772 [-]: GETGLOBAL R3 K111      ; R3 := i
773 [-]: GETTABLE  R2 R2 R3     ; R2 := R2[R3]
774 [-]: GETTABLE  R2 R2 K38    ; R2 := R2["x"]
775 [-]: GETGLOBAL R3 K36       ; R3 := zombies
776 [-]: GETGLOBAL R4 K111      ; R4 := i
777 [-]: GETTABLE  R3 R3 R4     ; R3 := R3[R4]
778 [-]: GETTABLE  R3 R3 K40    ; R3 := R3["y"]
779 [-]: GETGLOBAL R4 K30       ; R4 := imgZombieBoomP
780 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
781 [-]: GETGLOBAL R0 K111      ; R0 := i
782 [-]: ADD       R0 R0 K37    ; R0 := R0 + 1
783 [-]: SETGLOBAL R0 K111      ; i := R0
784 [-]: JMP       691          ; PC := 691
785 [-]: GETGLOBAL R0 K80       ; R0 := screen
786 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
787 [-]: GETGLOBAL R2 K59       ; R2 := viseurX
788 [-]: GETGLOBAL R3 K61       ; R3 := viseurY
789 [-]: GETGLOBAL R4 K32       ; R4 := imgViseur
790 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
791 [-]: GETGLOBAL R0 K80       ; R0 := screen
792 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
793 [-]: LOADK     R2 K4        ; R2 := 0
794 [-]: LOADK     R3 K4        ; R3 := 0
795 [-]: GETGLOBAL R4 K20       ; R4 := imgPause
796 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
797 [-]: GETGLOBAL R0 K82       ; R0 := pad
798 [-]: SELF      R0 R0 K91    ; R1 := R0; R0 := R0["start"]
799 [-]: CALL      R0 2 2       ; R0 := R0(R1)
800 [-]: TEST      R0 0         ; if not R0 then PC := 853
801 [-]: JMP       853          ; PC := 853
802 [-]: GETGLOBAL R0 K76       ; R0 := oldpad
803 [-]: GETGLOBAL R1 K82       ; R1 := pad
804 [-]: EQ        1 R0 R1      ; if R0 == R1 then PC := 853
805 [-]: JMP       853          ; PC := 853
806 [-]: LOADK     R0 K4        ; R0 := 0
807 [-]: SETGLOBAL R0 K65       ; pause := R0
808 [-]: GETGLOBAL R0 K67       ; R0 := chrono
809 [-]: SELF      R0 R0 K91    ; R1 := R0; R0 := R0["start"]
810 [-]: CALL      R0 2 1       ; R0(R1)
811 [-]: JMP       853          ; PC := 853
812 [-]: GETGLOBAL R0 K64       ; R0 := menu
813 [-]: EQ        0 R0 K47     ; if R0 ~= 2 then PC := 833
814 [-]: JMP       833          ; PC := 833
815 [-]: GETGLOBAL R0 K80       ; R0 := screen
816 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
817 [-]: LOADK     R2 K4        ; R2 := 0
818 [-]: LOADK     R3 K4        ; R3 := 0
819 [-]: GETGLOBAL R4 K16       ; R4 := imgAide
820 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
821 [-]: GETGLOBAL R0 K82       ; R0 := pad
822 [-]: SELF      R0 R0 K118   ; R1 := R0; R0 := R0["triangle"]
823 [-]: CALL      R0 2 2       ; R0 := R0(R1)
824 [-]: TEST      R0 0         ; if not R0 then PC := 853
825 [-]: JMP       853          ; PC := 853
826 [-]: GETGLOBAL R0 K76       ; R0 := oldpad
827 [-]: GETGLOBAL R1 K82       ; R1 := pad
828 [-]: EQ        1 R0 R1      ; if R0 == R1 then PC := 853
829 [-]: JMP       853          ; PC := 853
830 [-]: LOADK     R0 K4        ; R0 := 0
831 [-]: SETGLOBAL R0 K64       ; menu := R0
832 [-]: JMP       853          ; PC := 853
833 [-]: GETGLOBAL R0 K64       ; R0 := menu
834 [-]: EQ        0 R0 K49     ; if R0 ~= 3 then PC := 853
835 [-]: JMP       853          ; PC := 853
836 [-]: GETGLOBAL R0 K80       ; R0 := screen
837 [-]: SELF      R0 R0 K90    ; R1 := R0; R0 := R0["blit"]
838 [-]: LOADK     R2 K4        ; R2 := 0
839 [-]: LOADK     R3 K4        ; R3 := 0
840 [-]: GETGLOBAL R4 K14       ; R4 := imgCredits
841 [-]: CALL      R0 5 1       ; R0(R1,R2,R3,R4)
842 [-]: GETGLOBAL R0 K82       ; R0 := pad
843 [-]: SELF      R0 R0 K118   ; R1 := R0; R0 := R0["triangle"]
844 [-]: CALL      R0 2 2       ; R0 := R0(R1)
845 [-]: TEST      R0 0         ; if not R0 then PC := 853
846 [-]: JMP       853          ; PC := 853
847 [-]: GETGLOBAL R0 K76       ; R0 := oldpad
848 [-]: GETGLOBAL R1 K82       ; R1 := pad
849 [-]: EQ        1 R0 R1      ; if R0 == R1 then PC := 853
850 [-]: JMP       853          ; PC := 853
851 [-]: LOADK     R0 K4        ; R0 := 0
852 [-]: SETGLOBAL R0 K64       ; menu := R0
853 [-]: GETGLOBAL R0 K82       ; R0 := pad
854 [-]: SETGLOBAL R0 K76       ; oldpad := R0
855 [-]: GETGLOBAL R0 K80       ; R0 := screen
856 [-]: SELF      R0 R0 K119   ; R1 := R0; R0 := R0["flip"]
857 [-]: CALL      R0 2 1       ; R0(R1)
858 [-]: JMP       179          ; PC := 179
859 [-]: RETURN    R0 1         ; return 


; Function #1:
;
; Name:            
; Defined at line: 51
; #Upvalues:       0
; #Parameters:     6
; Is_vararg:       0
; Max Stack Size:  7

  1 [-]: LT        0 R0 R4      ; if R0 >= R4 then PC := 14
  2 [-]: JMP       14           ; PC := 14
  3 [-]: ADD       R6 R0 R2     ; R6 := R0 + R2
  4 [-]: LT        0 R4 R6      ; if R4 >= R6 then PC := 14
  5 [-]: JMP       14           ; PC := 14
  6 [-]: LT        0 R1 R5      ; if R1 >= R5 then PC := 14
  7 [-]: JMP       14           ; PC := 14
  8 [-]: SUB       R6 R1 R3     ; R6 := R1 - R3
  9 [-]: LT        0 R5 R6      ; if R5 >= R6 then PC := 14
 10 [-]: JMP       14           ; PC := 14
 11 [-]: LOADK     R6 K0        ; R6 := 1
 12 [-]: RETURN    R6 2         ; return R6
 13 [-]: JMP       16           ; PC := 16
 14 [-]: LOADK     R6 K1        ; R6 := 0
 15 [-]: RETURN    R6 2         ; return R6
 16 [-]: RETURN    R0 1         ; return 


