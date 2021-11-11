;------------SUPERS---------------------------------------------------------
;T Rex Disguise
[Statedef 3200]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3200
ctrl = 0
juggle =6
sprpriority = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -28

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -39
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 40
poweradd = -2000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 1
removeongethit = 1

[State 3000, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,1
channel=6

[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[state 3100, Energy]
type = BgPalFx
trigger1 = AnimElem = 2
add = 0,0,0
mul = 256,256,256
sinadd = -255,-255,-255,150
time = 33

[State 210, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 80, 20
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 2, 15
sparkno = 2
sparkxy = -10, -20
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = 2
guard.velocity = -13
air.velocity = -5
airguard.velocity = -6
p2stateno = 13203

[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = 5

[State 3000, 1]
type = ChangeState
trigger1 = movehit
value = 3202
ctrl = 1

[State 3000, 1]
type = ChangeState
trigger1 = animtime=0
value = 3201
ctrl = 1
;---------------------------------------------------------------------------
;Hit Fail
;-------------------------------------------
[StateDef 3201]
type = S
movetype = A
physics = S
anim = 3201

[State 3000, 1]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Grapple Brutality 1
;-----------------------------------------------------------------------------
[Statedef 3202]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3206
ctrl = 0
sprpriority = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NA;NT
hitflag = MAF;-
priority = 2, miss
sparkno = -1
hitsound = S1, 1
sprpriority = 1
;p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 3203
p2stateno = 13204
guard.dist = 0
fall = 1

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------
;Go Up
;------------------------------
[Statedef 3203]
type = S
movetype = A
physics = S
anim = 3202
velset = 0,0
sprpriority = 1

[State 3203, lol]
type = Explod
trigger1 = Animelem = 14
anim = 3210
ID = 3210
pos = 0,0
postype = back
facing = 1
vfacing = 1
bindtime = -1
removetime = 90
supermovetime = 0
pausemovetime = 0
scale = 0.5,0.7
SprPriority = 999999999
shadow = 255,255,255
ownpal = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = time >=43
flag = nomusic
ignorehitpause = 1

[state 3100, Energy]
type = BgPalFx
trigger1 = AnimElem = 1
add = 0,0,0
mul = 256,256,256
sinadd = -255,-255,-255,150
time = 33

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 28
value =3200,0

[State 1000, StopSnd]
type = StopSnd
trigger1 = time = 43
channel = -1
ignorehitpause = 1
persistent = 1

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 44
value = 3200,1

[State 0, ]
type = explod
trigger1 = vel y <= 0 && numexplod(595) <= 5 && timemod = 3,1
anim = F595
id = 595
postype = p1
pos = const(size.mid.pos.x),const(size.mid.pos.y)-5
random = 10+const(size.air.back)+const(size.air.front),5
vel = var(50),1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 1045, 7]
type = Explod
triggerall = !NumExplod(591)
trigger1 = animelem = 10
anim = F591
id= 591
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 810, a]
type = Width
trigger1 = 1
value = 0, 0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 35,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 35,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 35,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 4
pos =35,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 5
pos = 35,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 6
pos = 35,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 7
pos = 35,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 8
pos = 35,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 9
pos = 35,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 10
pos = 25,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 11
pos = 25,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 12
pos = 25,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 13
pos = 25,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 14
pos = 25,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 15
pos = 25,0


[State 1045, 7]
type = Explod
triggerall = !NumExplod(61)
trigger1 = AnimElem = 10
anim = F61
id= 61
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 1045, 7]
type = Explod
triggerall = !NumExplod(3205)
trigger1 = AnimElem = 3
anim = 3205
id= 3205
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
removeongethit = 1


[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, State]
type = sprpriority
trigger1 = 1
value = 1;-2

[State 200, 1]
type = HitDef
trigger1 = animelem = 14
attr = S, NA
damage = 0, 0
sparkno = -1
hitflag = MAF
hitsound = S3200,1
p1stateno = 3204
p2stateno = 13205

[State 1410, State]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------
;Go Down
;------------------------------------------------------------------------------
[Statedef 3204]
type = S
movetype = A
physics = S
anim = 3203
velset = 0,0

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
flag3 = nomusic
ignorehitpause = 1

[state 3100, Energy]
type = BgPalFx
trigger1 = AnimElem = 2
add = 0,0,0
mul = 256,256,256
sinadd = -255,-255,-255,150
time = 33

;[State 1000, 1]
;type = PlaySnd
;trigger1 = AnimElem = 1
;value =21,1

;[State 1000, 1]
;type = PlaySnd
;trigger1 = AnimElem = 24
;value =20,8



;[State 200, 1]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 8, 3

;[State 200, 1]
;type = PlaySnd
;trigger1 = AnimElem = 3
;value = 60, 5
;channel=2

;[State 200, 1]
;type = PlaySnd
;trigger1 = AnimElem = 21
;value = 60, 6
;channel=2



[State 810, a]
type = Width
trigger1 = 1
value = 0, 0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 4
pos =0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 5
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 6
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 7
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 8
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 9
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 10
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 11
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 12
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 13
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 14
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 15
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 16
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 17
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 18
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 19
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 20
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 20
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 22
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 23
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 24
pos = 0,0


[State 1045, 7]
type = Explod
triggerall = !NumExplod(62)
trigger1 = AnimElem = 21
anim = F62
id= 62
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 1045, 7]
type = Explod
triggerall = !NumExplod(2)
trigger1 = AnimElem = 21
anim = F2
id= 2
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

;[State 3506, ea]
;type = TargetLifeAdd
;trigger1= animelem = 21
;value = -180
;kill = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 21
attr = S, NA
damage = 520, 180
sparkno = -1
hitflag = MAF
kill = 1
powerget = 0,0

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 1
value = 329
ignorehitpause = 1

[State 3200, EnvShake]
type = EnvShake
trigger1 = AnimElem = 21
time = 18

[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, State]
type = sprpriority
trigger1 = 1
value = -2

[State 1410, State]
type = ChangeState
trigger1 = animtime=0
value = 105
ctrl = 1
;------------------------------------------------------------------------------
;;P2 Goes Up
;------------------------------------------------------------------------------
[Statedef 13204]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = 4

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 13204

[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 7696, 6]
type = changestate
trigger1 = AnimTime =0
ctrl = 1
value = 5050;7897

;------------------------------------------------------------------------------
;;P2 Goes Down
;------------------------------------------------------------------------------
[Statedef 13205]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = 2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 13205


[State 850, 1]
type = screenbound
trigger1 = 1
value = 1


[State 7696, 6]
type = changestate
trigger1 = P2life<1 && AnimTime =0
ctrl = 0
value = 5150;7897

[State 7696, 6]
type = changestate
trigger1 = P2life>1 && AnimTime =0
ctrl = 1
value = 11;7897


;------------------------------------------------------------------------------
;;PHIt
;------------------------------------------------------------------------------
[Statedef 13203]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = 2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 13203

[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 7696, 6]
type = changestate
trigger1 = AnimTime =0
ctrl = 1
value =5000;7897

;---------------------------------------------------------------------------
;Junk Food
[Statedef 3000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3000
ctrl = 0
juggle =6
sprpriority = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

;[State 3000, 2]
;type = RemoveExplod
;trigger1 = time = 0

;[State 3000, snd]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 20,3


[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 3000, CakeNa]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
trigger3 = AnimElem = 7
trigger4 = Animelem = 16
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-60
postype = p1
stateno = 3111
priority = 4
ownpal = 1

[State 3000, CakeNb]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
trigger3 = AnimElem = 7
trigger4 = Animelem = 16
helpertype = normal
name = "Cake"
ID = 1005
pos = 20,-70
postype = p1
stateno = 3111
priority = 4
ownpal = 1

[State 3000, CakeNc]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
trigger3 = AnimElem = 7
trigger4 = Animelem = 16
helpertype = normal
name = "Cake"
ID = 1005
pos = 10,-50
postype = p1
stateno = 3111
priority = 4
ownpal = 1


[State 3000, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3001
ctrl = 1
;-------------------------
[Statedef 3001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3001
ctrl = 0
juggle =6
sprpriority = 1

[State 3001, snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 50,6

[State 3001, CakeE]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-50
postype = p1
stateno = 1021
ownpal = 1

[State 3001, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Junk Food
[Statedef 3002]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 3000
ctrl = 0
juggle =6
sprpriority = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

;[State 3000, 2]
;type = RemoveExplod
;trigger1 = time = 0

;[State 3000, snd]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 20,3


[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 3000, CakeNa]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
trigger3 = AnimElem = 7
trigger4 = Animelem = 16
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-60
postype = p1
stateno = 3111
priority = 4
ownpal = 1

[State 3000, CakeNb]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
trigger3 = AnimElem = 7
trigger4 = Animelem = 16
helpertype = normal
name = "Cake"
ID = 1005
pos = 20,-70
postype = p1
stateno = 3111
priority = 4
ownpal = 1

[State 3000, CakeNc]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
trigger3 = AnimElem = 7
trigger4 = Animelem = 16
helpertype = normal
name = "Cake"
ID = 1005
pos = 10,-50
postype = p1
stateno = 3111
priority = 4
ownpal = 1


[State 3000, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3003
ctrl = 1

;-------------------------
[Statedef 3003]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 3001
ctrl = 0
juggle =6
sprpriority = 1

[State 3001, snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 50,6

[State 3001, CakeE]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-50
postype = p1
stateno = 1021
ownpal = 1

[State 3001, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Cake Helper
[Statedef 3111]
type    = S
movetype = A
physics = N
anim = 1005
velset = 9

[State 1005, Boomerang]
type = VelAdd
trigger1 = 1
x = -0.2

[State 1005,sound]
type = Playsnd
trigger1 = time = 4
value = 60,0

[State 1001, AfterImage]
type = null;AfterImage
trigger1 = Time = 0
time = 100
palcolor = 256
palbright = 256,256,256
palcontrast = 0,0,220
palpostbright = 0,0,256
paladd = 220,220,256
palmul = .65,.65,.8
timegap = 1
framegap = 1
trans = add

[State 1001, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage   = 12,2
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = 0
sparkxy = -10,-15
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
air.hittime = 30
ground.velocity = -4
fall = 0
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 40
down.bounce = 0

[State 1002, ]
type = DestroySelf
trigger1 = Vel X < 0
trigger1 = Pos X = [parent, Pos X - 30, parent, Pos X + 30]
trigger1 = Pos Y = [parent, Pos Y - 80, parent, Pos Y - 30]
trigger2 = BackEdgeBodyDist <= -120

[State 1001, ChangeState]
type = ChangeState
trigger1 = Movecontact
;trigger2 = abs(Pos X) > 150;FrontEdgeBodyDist <= -10;-120
value = 1002

;Cake Helper Hit
[Statedef 3112]
type    = S
movetype = A
physics = N
anim = 1006

[State 1002, VelSet]
type = VelSet
trigger1 = Time = 5
x = -2
y = -2

[State 0, ]
type = VelAdd
trigger1 = 1
y = 0.2


[State 1002, ]
type = DestroySelf
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
;Sportacus Disguise
[StateDef 3100]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
velset = 0,0
juggle  = 5

[State 192, MS Paint Scribbles in 5 seconds because I can't find better]
type = Explod
trigger1 = Animelem = 2
anim = 1920
ID = 1920
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 40
supermovetime = 40
pausemovetime = 40
scale = 1,1
SprPriority = -5
;shadow = 255,255,255
ownpal = 1
Trans = Add
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 70;40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 70;40
p2defmul = 2
removeongethit = 1

[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1


[State 3100, sndx]
type = PlaySnd
trigger1 = time = 1
value = 20,8

[state 3100, Energy]
type = BgPalFx
trigger1 = AnimElem = 1
add = 0,0,0
mul = 256,256,256
sinadd = -255,-255,-255,150
time = 33

[State 3100, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101

;----------------
[StateDef 3101]
type = S
movetype= A
physics = N
juggle  = 15
ctrl = 0
anim = 3011


[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3101, 2]
type = HitDef
trigger1 = !movehit
attr = A, HA
damage = 0, 15
guardflag = HA
pausetime = 0, 0
sparkno = 2
sparkxy = -10, -16
guard.sparkno = -1
hitsound = -1
guardsound = 6, 0
ground.type = High
ground.slidetime = 9
ground.hittime = 9
ground.velocity = 0, 0
air.velocity = 0, 0
p1stateno = 3103
fall = 0

[State 3101, 4]
Type = VelSet
trigger1 = MoveHit
y = 0
x = 0

[State 3101, 3]
Type = StateTypeSet
trigger1 = Time = 1
StateType = A

[State 3101, 4]
Type = VelSet
trigger1 = Time = 0
y = -2.3
x = 9

[State 3101, 5]
Type = VelSet
trigger1 = time = 7
y = .1

[State 3101, 6]
Type = VelSet
trigger1 = time = 13
y = .2

[State 3101, 7]
Type = VelSet
trigger1 = time = 16
y = 1

[State 3101, 9]
type = afterimage
trigger1 = !Time
time = 30
length = 6
TimeGap  = 2
FrameGap = 1
Trans = Add1

[State 3101, 9]
Type = ChangeState
triggerall = Time > 5
Trigger1 = pos y >= 0
trigger2 = MoveGuarded
value = 3102

;-------------------------------------------
[StateDef 3102]
type = A
physics = A
anim = 3012

[State 3102, 2]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

;---------------------------------------
[Statedef 3103]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3013
sprpriority = 2

[State 3013, pos]
Type = Posset
trigger1 = Time = 0
y = 0

[State 3200, blind]
type = targetbind
triggerall = movehit
trigger1 = Time <= 96
pos = 50, 0

[State 3000, 9]
type = afterimage
trigger1 = !Time
time = 125
length = 6
TimeGap  = 2
FrameGap = 1
Trans = Add1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3103, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1
persistent = 1

[State 3103, 1]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 18
trigger3 = AnimElem = 20
attr = S, HA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 0
guard.sparkno = -1
sparkxy = -10, -16
hitsound = S2,0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 23
attr = S, HA
damage = 15, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno =1
guard.sparkno = -1
sparkxy = -10, -16
hitsound = S2,1
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 3
guard.sparkno = -1
sparkxy = -10, -16
hitsound = S2,2
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 15
trigger2 = AnimElem = 27
attr = S, HA
damage = 15, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 3
guard.sparkno = -1
sparkxy = -10, -16
hitsound = S2,2
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 31
attr = S, HA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 3
guard.sparkno = -1
sparkxy = -10, -16
hitsound = S2,2
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1
under = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 1010, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3014
ctrl = 0
;-------------------------------------------------------------------------------
;end
[Statedef 3014]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=0
juggle=0

[State 3210,change]
type=ChangeAnim
trigger1=time=0
value=3014

[State 3210,nohit]
type=NotHitBy
trigger1=Time=0
value=SCA
time=8

[State 3210, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 3210,snd]
type=PlaySnd
trigger1=AnimElem=2
value = 20,9

[State 3210,hit]
type=HitDef
trigger1= Time = 0
attr=S, SA
damage=30,10
animtype=Heavy
guardflag=M
hitflag=MAF
hitsound = S2,2
guardsound = S3,0
pausetime=11,11
sparkno=3
sparkxy=-10,-20
ground.type=Low
ground.slidetime=18
ground.hittime=21
ground.velocity=-3,-8
down.velocity=-3,-8
air.velocity=-3,-8
yaccel=0.45
fall=1
air.fall=1
air.hittime=36

[State 3210,changehit]
type=ChangeState
trigger1=AnimTime=0
value=3015

;-----------------------------------------------------------------------
[Statedef 3015]
type=A
movetype=A
physics=N
juggle=15

[State 3211,changes]
type=ChangeAnim
trigger1=time=0
value=3015

[State 3211, pos]
type=PosAdd
trigger1=Time=[2,10]
X=4

[State 3211,poss]
type=PosAdd
trigger1=Time=[11,12]
X=2

[State 3211,vel]
type=VelSet
trigger1=Time=2
Y=-8

[State 3211,mvel]
type=VelAdd
trigger1=Time >=2
Y=0.4

[State 3211, A]
type = VarRandom
trigger1 = time >= 0
v = 50
range = -2, 2

[State 3211, B]
type = explod
trigger1 = vel y <= 0 && numexplod(595) <= 5 && timemod = 3,1
anim = F595
id = 595
postype = p1
pos = const(size.mid.pos.x),const(size.mid.pos.y)-5
random = 10+const(size.air.back)+const(size.air.front),5
vel = var(50),1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 3211, 7]
type = Explod
triggerall = !NumExplod(591)
trigger1 = time = 0
anim = F591
id= 591
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 3211,hitdef]
type=HitDef
trigger1=AnimElem=1
attr=A, SA
damage=50,20
animtype=Heavy
guardflag=MA
hitflag=MAF
hitsound = S2,2
guardsound = S3,0
pausetime=11,11
sparkno=2
sparkxy=-10,-30
ground.type=High
ground.slidetime=18
ground.hittime=21
ground.velocity=-3,-8
air.velocity=-3,-8
yaccel=0.45
fall=1
air.fall=1
air.hittime=36

[State 3211, end]
type=ChangeState
trigger1=Time > 2 && Pos Y >=0
value= 3016

;-----------------------------------------------
[Statedef 3016]
type=S
movetype=I
physics=S
velset=0,0

[State 192, MS Paint Scribbles in 5 seconds because I can't find better]
type = Explod
trigger1 = time = 0
anim = 1920
ID = 1920
pos = 0,20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 40
supermovetime = 40
pausemovetime = 40
scale = 1,1
SprPriority = -5
;shadow = 255,255,255
ownpal = 1
Trans = Add
removeongethit = 1

[State 3212, change]
type=ChangeAnim
trigger1=time=0
value=3016

[State 3212,pos]
type=PosSet
trigger1=Time=0
Y=0

[State 3202 , 9]
type = PlaySnd
triggerall = Pos Y >=0
trigger1 = time = 0
value = 8,1

[State 3202, Landing Dust]
type = Explod
triggerall = Pos Y >=0
trigger1 = time = 0
persistent = 0
ID = 60
anim = F60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 3212,change]
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1
;------------------------------------------------------------------------------
;Diabetes
[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 2000
ctrl = 0
sprpriority = 2

[State 3000, Width]
type = Width
trigger1 = 1
value = 33,33

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 40
poweradd = -2000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 1010, Cake]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "CakeH"
ID = 2004
pos = 30,-55
postype = p1
stateno =2004
ownpal = 1

[State 1201,snd]
type = PlaySnd
trigger1 = time = 1
value = 50,7
channel=4

[State 2000, 2]
type = ChangeState
trigger1= time= 100
value = 0
ctrl = 1

;-------- ---------------------------------------
[Statedef 2001]
type    = S
movetype= A
physics = S
anim = 2001
ctrl = 0
sprpriority = 2

[State 3000, Width]
type = Width
trigger1 = 1
value = 33,33

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = VarRandom
trigger1 = 1
v = 5
range = -10, -75

[State 2001, Bat]
type = Helper
triggerall = Time > 20 && Time < 200
trigger1 = GameTime % 1 = 0 && NumHelper(2005) < 17
helpertype = normal
name = "Sweet"
ID = 2005
pos = -160, var(5)
postype = back
facing = 1
stateno = 2005
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State -3, AI Activation]
type = VarSet
trigger1 =time = 0
var(23) = 0

[State 2001, 2]
type = ChangeState
trigger1 = Time = 220 && var(23) = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------------
;Cake
;----------------------------------------------------------------------------
[Statedef 2004]
type    = S
movetype = A
physics = N
anim = 1015
velset = 10

[State 1011,sound]
type = Playsnd
trigger1 = time = 4
value = 60,0

[State 1001, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage   = 35,15
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = 1
sparkxy = -20,-15
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4
fall = 0
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0
;p2stateno = 7696

[State -2, 20]
type = Explod
triggerall = !numexplod(2006)
trigger1 = movecontact
anim = 2004
ID = 2006
bindtime = -1
pos =25, -45;10
postype = p2
ontop = 1
removetime=200

[State -2, 20]
type = Explod
triggerall = !numexplod(2002)
trigger1 = movecontact
anim = 2002
ID = 2002
bindtime = -1
pos =25, -45;10
postype = p2
ontop = 1
removetime=200


[State -2, 20]
type = Explod
triggerall = !numexplod(2003)
trigger1 = time= 198
anim = 2003
ID = 2003
bindtime = -1
pos =25, -45;10
postype = p2
ontop = 1
removetime=8

[State 2000, Bat]
type = ParentVarSet
trigger1 = Movecontact
var(23) = 1

[State 1001, ChangeState]
type = Destroyself
trigger1 = Movecontact

[State 1001, ChangeState]
type = Destroyself
trigger1 = time =200
;trigger2 = abs(Pos X) > 150;FrontEdgeBodyDist <= -10;-120


;----------------------------------------------------------------------------
;Sweets
[Statedef 2005]
type = S
movetype = A
psysics = S
poweradd = 0
anim = 2005
sprpriority = 9

[State 0, ]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 5,15

[State 0, ]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 3001, snd]
type = PlaySnd
triggerall = random <= 300
trigger1 = time = 1
value = 60,6

[State 521, AngleSet]
type = AngleSet
trigger1 = Time = 0
value = 1

[State 521, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 521, AngleMul]
type = AngleAdd
trigger1 = Time > 0
value = -20


[State 0, ]
type = VelSet
trigger1 = 1
x = var(0)
y = var(1)

[State 2005, 0]
type = HitDef
trigger1 = Time %3 = 0
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 2, 0
pausetime = 0,0
sparkno = 0
guard.sparkno = 40
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-1
air.velocity = -4, -1
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
getpower = 0,0
givepower = 3,1

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 45
range = 0,7

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(45) = 0
time = 999999999999999999999
add = 56,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(45) = 1
time = 999999999999999999999
add = -200,-200,56
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(45) = 2
time = 999999999999999999999
add = -200,-200,56
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(45) = 3
time = 999999999999999999999
add = 25,25,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(45) = 4
time = 999999999999999999999
add = -200,56,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(45) = 5
time = 999999999999999999999
add = 56,-200,56
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(45) = 6
time = 999999999999999999999
add = 78,56,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 2005, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -50

[State 2000, fadeout]
type = BGPalFx
trigger1 = (MoveContact || MoveGuarded) && Time % 10 = 0
add = 255,255,255
sinadd = -255,-255,-255,50
time = 12;20
ignorehitpause = 1
persistent = 1
;---------------------------------------------------------------------------
;Ship
[Statedef 3300]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 3300
ctrl = 0
juggle =8
sprpriority = 1

[State 3300, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3300, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
flag3 = nomusic
ignorehitpause = 1

[State 3300, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3300, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3300, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3300, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 220
poweradd = -3000
bindtime = -1
sprpriority = 6
Time = 220
p2defmul = 1
removeongethit = 1

;[State 3000, 2]
;type = RemoveExplod
;trigger1 = time = 0

[State 3000, snd]
type = PlaySnd
trigger1 = time = 0
value = 3600,0

[State 3000, snd]
type = PlaySnd
trigger1 = time = 0
value = 3600,0

[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 3000, CakeNa]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Ship"
ID = 3301
pos = -150,0
postype = back
stateno = 3301
priority = 4
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 3000, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; helper
[Statedef 3301]
type    = S
movetype = A
physics = N
anim = 3301

[State 3000, snd]
type = PlaySnd
trigger1 = time = 0
value = 3600,1

[State 1401, move]
type = VelSet
trigger1 = 1
x = 2

[State 1001, AfterImage]
type = null;AfterImage
trigger1 = Time = 0
time = 100
palcolor = 256
palbright = 256,0,256
palcontrast = 0,0,220
palpostbright = 0,0,256
paladd = 220,220,256
palmul = .65,.65,.8
timegap = 1
framegap = 1
trans = add

[State 1401, HitDef]
type = HitDef
trigger1 = time %8 = 0
attr = S, HA
damage = 14,5
animtype = heavy
guardflag = MA
hitflag = MAFLDP
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = 0
sparkxy = -10,-15
ground.type = High
ground.slidetime = 10
ground.hittime  = 80
ground.velocity = -2
air.animtype = Back
air.velocity = -2,0
down.velocity = -2,0
down.hittime = 80
down.bounce = 0
getpower = 0,0

[State 1002, ]
type = DestroySelf
trigger1 = time = 480
;---------------------------------------------------------------------------
;Cannon
[Statedef 3400]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 3400
ctrl = 0
juggle =8
sprpriority = 1

;[State 3400, b1]
;Type = BGPalfx
;Trigger1 = time = [0, 800];BG VANISH IN
;Add = -70,-70,-90
;IgnoreHitPause = 1
;time = 1

[State 3400, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
flag3 = noBG

ignorehitpause = 1

[State 3400, aa]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1

[State 3400, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3400, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

;[State 3400, b1]
;Type = BGPalfx
;Trigger1 = time = [0, 800];BG VANISH out
;Add = -70,-70,-90
;IgnoreHitPause = 1
;time = 1

[State 3400, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = time = 0
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 100
poweradd = -3000
bindtime = -1
sprpriority = 6
Time = 100
p2defmul = 1
removeongethit = 1

[State -2, Helper]
type = Helper
trigger1 = !numhelper(9998) && target,stateno = [3403,3404]
helpertype = normal
name = "check"
ID = 9998
stateno = 9998
pos = 0,0
postype = p1
supermove = 999999
pausemove = 999999

;[State 3000, 2]
;type = RemoveExplod
;trigger1 = time = 0

[State 3000, snd]
type = PlaySnd
trigger1 = time = 0
value = 3500,0

[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = p2life = 0
trigger1 = time = 420
value = S3500,3

[State 0, PlaySnd]
type = PlaySnd
triggerall = p2life = 0
trigger1 = time = 400
value = S3500,2

[State 3000, Kaboom]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "Cannon"
ID = 3401
pos = 30,0
postype = p1
stateno = 3401
priority = 9999
ownpal = 1
size.xscale = 0.3
size.yscale = 0.3

[State 3000, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; helper
[Statedef 3401]
type    = S
movetype = A
physics = N
anim = 3401
sprpriority = 9999

[State 240, 2]
type = Projectile
trigger1 = time = 90
ProjID = 3402
projanim = 3402
offset = 150,-105
velocity = 10,0
projremove = 1
projremovetime = 60
projscale = .5,.5
attr = S, HP
damage = 88888888888888888888888888, 8888888888888888888888888
animtype = Medium
guardflag =
hitflag = MAFLDP
priority = 7, Hit
pausetime = 0,12
sparkno = 88888
guard.sparkno = 88888
sparkxy = 0,0
hitsound = S3500,1
guardsound = S6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
air.hittime = 1
ground.velocity = 0
airguard.velocity = 0
air.velocity = 0
p2stateno = 3402

[State 1002, remove]
type = DestroySelf
trigger1 = time = 100
;---------------------------------------------------------------------------
;you take damage
[Statedef 3402]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -88888888888888888888888888888888888888888888888888888888888888888888888
kill = 1
absolute = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
y = -20

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = 1
value = 3403

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 3403
ctrl = 0

;---------------------------------------------------------------------------
;get hit state
[Statedef 3403]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = 1
value = 3403

[State 0, VelSet]
type = VelSet
trigger1 = 1
y = -20

[State 0, VelSet]
type = VelSet
trigger1 = time <= 30
x = -20

[State 0, VelSet]
type = VelSet
trigger1 = time > 31 && time <=61
x = 20

[State 0, VelSet]
type = VelSet
trigger1 = time > 61
x = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 80
value = 3404
ctrl = 0

;---------------------------------------------------------------------------
;lol bye
[Statedef 3404]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = 1
value = 3404

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = -200
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -.5
y = .4

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 0
value = .5

[State 0, VarAdd]
type = VarAdd
trigger1 = 1
fv = 0
value = -.0025

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -(time)*10
scale = fvar(0),fvar(0)

[State 0, Explod]
type = Explod
trigger1 = time = 149
anim = F0
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 3

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 150
value = 3405
ctrl = 0

;-------------------------------------------------------------------------
;nope
[Statedef 3405]
type = A
movetype = H
physics = N
ctrl = 0
anim = 10000

[State 3405, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

;[State 3405, ParentVarSet]
;type = ParentVarSet
;trigger1 = ishelper(15)
;var(11) = -10000

[State 3405, ChangeAnim2]
type = ChangeAnim2
trigger1 = ishelper
trigger1 = time > 24
value = 3105

;[State 3405, ParentVarSet]
;type = ParentVarSet
;triggerall = numhelper(200)
;trigger1 = ishelper(198)
;trigger2 = ishelper(199)
;var(5) = 3

;[State 3405, ParentVarSet]
;type = ParentVarSet
;triggerall = numhelper(200)
;trigger1 = ishelper(198)
;trigger2 = ishelper(199)
;var(18) = 26

;[State 3405, ParentVarSet]
;type = ParentVarSet
;triggerall = numhelper(200)
;trigger1 = ishelper(198)
;trigger2 = ishelper(199)
;var(46) = 100

;[State 3405, ParentVarSet]
;type = ParentVarSet
;trigger1 =  ishelper(666)
;var(42)=9999

;[State 3405, ParentVarSet]
;type = ParentVarSet
;trigger1 =  ishelper(666)
;var(30)=1

[State 3405, DestroySelf]
type = DestroySelf
trigger1 = ishelper
trigger1 = time = 25
ignorehitpause = 1

[State 3405, 0]
type = ChangeAnim
trigger1 = !ishelper
value = 5010

[State 3405, 1]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 3405, 2]
type = PosSet
trigger1 = time = 0
trigger1 = !ishelper
y = 999

[State 3405, 2]
type = LifeSet
trigger1 = 1
value = 0
absolute = 1

[State 3405, 3]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3405, 4]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, SelfState]
type = SelfState
triggerall = !ishelper
trigger1 = life > 0
value = 5110

[State 214, 6]
type = ChangeState
triggerall = !ishelper
trigger1 = lose
value = 5150


;---------------------------------------------------------------------------
[Statedef 9997]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 10000

[State 0, Nothing]
type = null
trigger1 = 1



;---------------------------------------------------------------------------
[Statedef 9998]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 10000

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root, stateno != 3000
trigger1 = target, stateno != [3403,3404]
trigger1 = root, stateno != 15850
trigger1 = root, stateno != 3302

[State -2, Helper]
type = Helper
triggerall = !numhelper(9997)
trigger1 = win
helpertype = normal
name = "pwncanceler2"
ID = 9997
stateno = 9997
pos = 0,0
postype = p1
supermove = 999999
pausemove = 999999

