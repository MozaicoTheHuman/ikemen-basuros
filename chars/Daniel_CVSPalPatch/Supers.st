;---------------------------------------------------------------------------
; Daniel's Punch Pain
; CNS difficulty: medium
; Uses a variant of the Azufight Portrait
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3000, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0


[State 3000, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3000, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -1000
darken = 0

[State 3000, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
paladd = 255,0,0
palmul = 128, 0, 0
trans = add
time = 2

[State 3000, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(31) < 0
time = 2

[State 3000, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 11

[State 3000, Super E]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(14) < 0
value2 = C, NA
time = 1

[State 3000, 2]
type = PosAdd
trigger1 = AnimElem = 2
x = 8

[State 3000, Another Pos Add]
type = PosAdd
trigger1 = AnimElem = 9 || AnimElem = 14
trigger2 = AnimElem = 23 || AnimElem = 25 || AnimElem = 26 || AnimElem = 28
trigger3 = AnimElem = 30 || AnimElem = 32
x = 5

[State 3000, HitDef One]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 14 || AnimElem = 19
attr = S, HA
animtype  = Hard
damage    = 22,2
getpower  = 0,0
priority  = 6
guardflag = MA
pausetime = 2,2
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-60
hitsound   = s5,6
guardsound = s6,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -1
air.velocity = -1,0
air.fall = 1
fall.animtype = Hard
fall.recover = 0
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3

[State 3000, HitDef Two]
type = HitDef
trigger1 = AnimElem = 23 || AnimElem = 25 || AnimElem = 26 || AnimElem = 28
trigger2 = AnimElem = 30 || AnimElem = 32
attr = S, HA
animtype  = Hard
damage    = 22
getpower  = 0,0
priority  = 5, Hit
guardflag = MA
pausetime = 2,2
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-25
hitsound   = s5,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -2
air.velocity = -1,0
air.fall = 1
fall.animtype = Hard
fall.recover = 0
guard.sparkno = s7911
envshake.time = 20
envshake.freq = 200
envshake.ampl = -5

[State 3000, Jump away then]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

;---------------------------------------------------------------------------
; Daniel's Kick Smash
; CNS difficulty: medium
; This move looks very funny, it also contains two HitDefs, one for the Kicks
; and one for the finish Punch!!! This move is not as strong as Hyper Combos,
; so it doesn't use MvC hyper portrait, I will use an Azufight Portrait

[Statedef 3050]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
anim = 3050
ctrl = 0
sprpriority = 2

[State 3050, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3050, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -1000
darken = 0

[State 3050, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3050, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3050, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 6

[State 3050, PositionAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
x = 8

[State 3050, 2]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
attr = S, HA
damage    = 13, 1
getpower  = 0,0
priority  = 5
guardflag = MA
pausetime = 12-(6*var(27)),12-(6*var(27))
guard.pausetime = 6,6
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 0,-40
hitsound   = s5,5
guardsound = s6,0
p2stateno = 6930 ;Custom get hit state for this
ground.type = Low
ground.slidetime = 26
ground.hittime  = 25
ground.velocity = -9, 0
guard.velocity = -11
air.velocity = -9, 0
airguard.velocity = -4.5,-5
envshake.time = 26           ;Parameters for shaking the screen on hit
envshake.ampl = -8
envshake.freq = 118

[State 3050, SmashBros2000 said it, so...]
type = StateTypeset
trigger1 = AnimElemTime(20) >= 15
movetype = I ;...It was a little extreme to get hit by just a velocity-less
;frame

[State 3050, Target Bind]
type = TargetBind
triggerall = numtarget
trigger1 = animelemtime(17) < 0
trigger1 = target, stateno = 6930
pos = 30, 0
ignorehitpause = 1

[State 3050, 3]
type = HitDef
trigger1 = AnimElem = 20 && !var(27)
attr = S, HA
animtype  = Back
damage    = 23, 2
getpower  = 0,0
priority  = 5
guardflag = MA
pausetime = 30,30
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 0,-40
hitsound   = s5,9
guardsound = s6,0
ground.type = Low
ground.slidetime = 26
ground.hittime  = 26
ground.velocity = -3,-25
guard.velocity = -11
air.velocity = -3,-25
airguard.velocity = -3,-5
envshake.time = 30
envshake.ampl = 9
envshake.freq = 176
p2facing = 1
fall = 1
fall.recover = 0             ;Prevent p2 from recovering
fall.damage = 60             ;p2 will take 60 damage on hitting the ground
fall.envshake.ampl = 8       ;Parameters for shaking the screen on fall
fall.envshake.freq = 200
fall.envshake.time = 25
yaccel = .9

[State 3050, 3]
type = HitDef
trigger1 = AnimElem = 20 && var(27)
attr = S, HA
animtype  = Back
damage    = 78, 2
getpower  = 0,0
priority  = 7
guardflag = MA
pausetime = 30,30
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 0,-40
hitsound   = s5,9
guardsound = s6,0
ground.type = Low
ground.slidetime = 26
ground.hittime  = 26
ground.velocity = -7
guard.velocity = -11
air.velocity = -7
airguard.velocity = -3,-5
envshake.time = 30
envshake.ampl = 9
envshake.freq = 176
;p1stateno = 3051
p2stateno = 4057
p2facing = 1
fall = 1
fall.recover = 0             ;Prevent p2 from recovering
fall.damage = 60             ;p2 will take 60 damage on hitting the ground
fall.envshake.ampl = 8       ;Parameters for shaking the screen on fall
fall.envshake.freq = 200
fall.envshake.time = 25
yaccel = .9

[State 3050, 5] ;Now you've done it!
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Kick Smash - Explosion Moment success
[Statedef 3051]
type    = A
movetype= I
physics = N
anim = 3051
ctrl = 0
sprpriority = 2

[State 3051, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(2) < 0
value = (time/1.5)

[State 3051, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = -0.24

[State 3051, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = 0.3

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 10 && Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Super arranged from Iori Yagami
;Attempt
[Statedef 3060]
type    = S
movetype= A
physics = N
juggle  = 8
velset = 0,0
anim = 2501
ctrl = 0
sprpriority = 2

[State 3060, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3060, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3060, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -1000
darken = 0

[State 3060, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3060, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3060, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 6

[State 3060, Hit]
type = Hitdef
trigger1 = Time = 0
attr = S, HA
hitflag = MAF
guardflag = HA
damage = 25,2
pausetime = 45, 15
guard.pausetime = 8,8
animtype = Up
priority = 6, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 2
guardsound = S6, 0
sparkxy = -5, -30
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -5
air.velocity = 0, -5
p2facing = -1
yaccel = .2
fall = 1
fall.recover = 0
snap = 40, -14
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0

[State 3060, Success]
type = ChangeState
trigger1 = AnimTime = 0 && MoveHit
value = 3061
ctrl = 0

[State 3060, Otherwise]
type = ChangeState
trigger1 = AnimTime = 0 && !MoveHit
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Super arranged from Iori Yagami
;Move
[Statedef 3061]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3060
ctrl = 0
sprpriority = 2

[State 3061, Still Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3061, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3061, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -1000
darken = 0
unhittable = 1

[State 3061, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3061, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3061, Hit 1]
type = Hitdef
trigger1 = AnimElem = 3
attr = S, HA
hitflag = MAF+
guardflag = HA
damage = 25
pausetime = 8, 16
guard.pausetime = 8,8
priority = 6, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 7
guardsound = S6, 0
sparkxy = -5, -50
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -5.1
air.velocity = 0, -5.1
p2facing = -1
yaccel = .1
fall = 1
fall.recover = 0
snap = 40, 8
animtype = Up
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
kill = 0
getpower = 0,0

[State 3061, Hit 2]
type = Hitdef
trigger1 = AnimElem = 4
attr = S, HA
hitflag = MAF+
guardflag = HA
damage = 100
pausetime = 25, 16
guard.pausetime = 8,8
priority = 6, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 7
guardsound = S6, 0
sparkxy = -5, -50
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -7
air.velocity = 0, -7
p2facing = -1
yaccel = .25
animtype = Up
fall = 1
snap = 40, 8
fall.recover = 0
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0

[State 3061, Hit 3]
type = Hitdef
trigger1 = AnimElem = 10
attr = S, HA
hitflag = MAF+
guardflag = HA
damage = 25
pausetime = 8, 16
guard.pausetime = 8,8
priority = 6, Hit
animtype = Up
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 7
guardsound = S6, 0
sparkxy = -5, -50
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -5
air.velocity = 0, -5
p2facing = -1
yaccel = .1
fall = 1
kill = 0
fall.recover = 0
snap = 40, 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0

[State 3061, Hit 4]
type = Hitdef
trigger1 = AnimElem = 11
attr = S, HA
hitflag = MAF+
guardflag = HA
damage = 40
pausetime = 25, 16
guard.pausetime = 8,8
priority = 6, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 7
guardsound = S6, 0
sparkxy = -5, -50
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -25
air.velocity = 0, -25
animtype = Up
p2facing = -1
yaccel = .4
fall = 1
fall.damage = 10
fall.recover = 0
fall.envshake.time = 25
fall.envshake.freq = 200
fall.envshake.ampl = 5
fall.envshake.phase = 142
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0

[State 3061, Thunder]
type = PlaySnd
trigger1 = AnimElem = 19
value = S500,5

[State 3061, LOL]
type = PlaySnd
trigger1 = AnimElem = 20
value = S9021,0

[State 3061, LOL]
type = Nothitby
trigger1 = AnimElemTime(21) >= 0
value = SCA

[State 3061, LOL]
type = AssertSpecial
trigger1 = AnimElemTime(21) >= 0
flag = NoWalk
flag2 = nostandguard
flag3 = timerfreeze

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 40 || AnimElem = 43
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 41 || AnimElem = 45 || AnimElem = 51
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = 6,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 42 || AnimElem = 46
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = -15,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 44 || AnimElem = 48
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = 16,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 47 || AnimElem = 50
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = 3,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 49
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = -7,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, Ray]
type = Explod
trigger1 = AnimElem = 19
anim = 3061
ID = 3061
pos = 0,-240
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3061, Spark]
type = Explod
trigger1 = AnimElem = 20
anim = 7930+random%8
ID = 7930
pos = 0,-30
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 3061, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Hyper Kick Run!!!
; CNS difficulty: medium
; This is really an Hyper Move, requires 3000 power out of the 4000 units
; that daniel can have!!! He rushes for 2 seconds!!!!

[Statedef 4322]
type    = S
movetype = A
physics = N
juggle  = 8
velset = 0,0
anim = 4322
ctrl = 0
sprpriority = 2

[State 3050, Level 3]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 4322, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4322, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
darken = 0
anim = -1
sound = s7, 0
poweradd = -3000

[State 4322, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 4322, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

;[State 4322, Super D]
;type = NotHitBy
;trigger1 = 1
;value = , NA, SA, AT
;time = 6

[State 4322, VelSet]
type = VelSet;PosAdd
trigger1 = 1
x = 4

[State 4322, TargetBind]
type = TargetBind
trigger1 = numtarget(4322)
trigger1 = !MoveGuarded
id = 4322
pos = 34,0
ignorehitpause = 1

[State 4322, Hit]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 4
attr = S, HA
animtype  = Hard
damage    = 11,ifelse(UniqHitCount >= 19,1,0)
getpower  = 0,0
ID = 4322
priority  = 4
guardflag = MA
pausetime = 0,5
guard.pausetime = 0,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,2;s1337, 8
guardsound = s6, 0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -6, -2
guard.velocity = -12
air.velocity = -6,-2
airguard.velocity = -3,-2
fall.animtype = Hard
fall = 1
fall.recover = 0

[State 4322, Jump away then]
type = ChangeState
trigger1 = Time = 120
value = 4895
ctrl = 0

;---------------------------------------------------------------------------
; Hyper Finger Slap!!!
; CNS difficulty: medium
; THIS SICK MOVE makes EVERYONE (including your teammate) to surrender 300
; blockable (2 dmg then!!!) Health Points, JUST BY SLAPPING DANIEL's Finger!!!
; This uses 4000 power!!!! Everyone Standing Get hit!

[Statedef 3058]
type    = S
movetype = A
physics = S
juggle  = 8
velset = 0,0
anim = 3058
ctrl = 0
sprpriority = 2

[State 3058, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

;THIS MOVE MUST HIT ITS PROGRAMMED VALUE ONLY!!!!
;[State 3058, ApplySameDmg]
;type = AttackMulSet
;trigger1 = 1
;value = 1

;Generated by Fighter Factory PalFX Editor
[State 3050, PalFXWiz]
type = BGPalFX
trigger1 = Time = 0
time = 225
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,18
invertall = 1
color = 0

;Generated by Fighter Factory PalFX Editor
[State 3050, PalFXWiz]
type = AllPalFX
trigger1 = Time = 154
time = 60
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,10
invertall = 1
color = 0

[State 3050, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3058, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
darken = 0
sound = s7, 0
poweradd = -4000

[State 3058, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3058, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

;[State 3058, Super D]
;type = NotHitBy
;trigger1 = 1
;value = , NA, SA, AT
;time = 6

;PLAY THE SOUND AT THREE DIFF PITCHES!!!
[State 3058, SuperSlap]
type = PlaySnd
trigger1 = Time = 154
value = 2000, 1

[State 3058, SuperSlap]
type = PlaySnd
trigger1 = Time = 154
value = 2000, 2

[State 3058, SuperSlap]
type = PlaySnd
trigger1 = Time = 154
value = 2000, 3

[State 3058, Hit]
type = HitDef
trigger1 = AnimElemTime(16) = 10 ; The Move was Unguardable if = 0
attr = S, HA
affectteam = B
animtype  = Up
damage    = 300,2 ;YOU OBVIOUSLY DON'T WANT TO MISS THIS MOVE!!
getpower  = 0,0
priority  = 5
guardflag = MA
pausetime = 32,32
guard.pausetime = 32,2
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5, 9
guardsound = s6, 0
ground.type = Trip
ground.slidetime = 30
guard.dist = 999
ground.hittime  = 30
ground.velocity = -25, -25
guard.velocity = 12
air.velocity = -25,-25
airguard.velocity = -10,-2
fall.animtype = Hard
fall = 1
fall.recover = 0

[State 3058, 5] ;Now you've done it!
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;New Angry Daniel

[Statedef 4000]
type    = S
movetype = A
physics = N
juggle  = 8
velset = 0, 0
anim = 4000
ctrl = 0
sprpriority = 2

[State 4000, 20 pixels/sec]
type = VelSet
trigger1 = Time = 1
x = 20*(1+var(27));Double if in Explosion Moment
y = 0

[State 4000, VelMul]
type = VelMul
trigger1 = 1
x = 0.9105

[State 4000, Gruñe!!!]
type = PlaySnd
trigger1 = Time = 0
value = S36500, 3
channel = 1

[State 4000, Level 3/4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 4000, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4000, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -3000-(1000*var(27));4000 if in Explosion Moment
darken = 0

[State 4000, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 200,0,0
timegap = 2
framegap = 3
trans = add

[State 4000, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 4000, Hit]
type = HitDef
trigger1 = Time = 1
attr = S,HA
hitflag = MAF
guardflag = HA
getpower = 0,0
ID = 4000
animtype = DiagUp
priority = 6,Hit
damage = 60,2
pausetime = 0,10
guard.pausetime = 3, 20
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 10,-48
hitsound = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 99
ground.velocity = -0.5,-10.2
air.hittime = 20
yaccel = .3
air.velocity = -0.5,-10.01
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 20
down.bounce = 1
kill = 0
guard.kill = 0
fall.kill = 1
numhits = 1
envshake.time = 25
envshake.freq = 100
envshake.ampl = 4
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
mindist = 0, -60
maxdist = 72, 0

[State 4000, That's Opinion, Not News!!]
type = PlaySnd
trigger1 = MoveHit && animtime = -5
value = S36500, 2
channel = 2

[State 4000, Hit]
type = ChangeState
trigger1 = MoveHit && animtime = 0
value = 4001+var(27);4001 = normal, 4002 = Explosion Moment
ctrl = 0

[State 4000, Not Hit]
type = ChangeState
trigger1 = !MoveHit && animtime = 0
value = 0
ctrl = 1

;--- Part 2 ---

[Statedef 4001]
type    = A
movetype = A
physics = N
juggle  = 8
velset = 0, -15
anim = 4001
ctrl = 0
sprpriority = 2

[State 4001, Stop]
type = VelSet
trigger1 = AnimElem = 2
x = 0
y = 0

[State 4001, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) < 0 || Time > 53
y = .45

[State 4001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4001, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 200,0,0
timegap = 2
framegap = 3
trans = add

[State 4001, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 4001, HitA]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
attr = A,HA
hitflag = MAF
guardflag = HA
getpower = 0,0
animtype = Up
priority = 5,Hit
damage = 45,1
pausetime = 25,10
guard.pausetime = 3, 20
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 10,-48
hitsound = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 99
ground.velocity = -0.5,-5
air.hittime = 20
yaccel = .25
air.velocity = -0.5,-5
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 20
down.bounce = 1
kill = 0
guard.kill = 0
fall.kill = 1
numhits = 1
envshake.time = 26
envshake.freq = 132
envshake.ampl = -6
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
mindist = 0, -60
maxdist = 72, 0

[State 4001, HitB]
type = HitDef
trigger1 = AnimElem = 11
attr = A,HA
hitflag = MAF
guardflag = HA
getpower = 0,0
animtype = DiagUp
priority = 7,Hit
damage = 185,5
pausetime = 30,30
guard.pausetime = 30, 30
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 10,-48
hitsound = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 99
ground.velocity = -0.5,10.2
air.hittime = 20
yaccel = 2
air.velocity = -0.5,10.2
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 20
down.bounce = 1
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
envshake.time = 25
envshake.freq = 100
envshake.ampl = 4
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
mindist = 0, -60
maxdist = 72, 0

[State 4001, Fall]
type = ChangeState
trigger1 = Pos Y >= 12 && Vel Y > 0
value = 5050
ctrl = 0

;--- Part 2 EXPLOSION MOMENT! ---

[Statedef 4002]
type    = A
movetype = A
physics = N
juggle  = 8
velset = 0, -15
anim = 4002
ctrl = 0
sprpriority = 2

[State 4002, Stop]
type = VelSet
trigger1 = AnimElem = 2 && Time < 20
x = 0
y = 0

[State 4002, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) < 0
y = .45

[State 4002, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4002, HitA]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
attr = A,HA ;A, OA (Aereal, OWN3R ATTACK! XD)
hitflag = MAF
guardflag = HA
getpower = 0,0
animtype = Up
priority = 1,Hit ;has infinite priority afterall...
chainid = 4000
damage = 5-(time>=130)
pausetime = 0,5
guard.pausetime = 0, 0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-48
hitsound = s5,6
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 16
ground.velocity = 0,0
air.hittime = 20
yaccel = .25
air.velocity = 0,0
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 20
down.bounce = 1
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
ID = 4000
envshake.time = 26
envshake.freq = 132
envshake.ampl = -6
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
mindist = 0, -60
maxdist = 72, 0

[State 4002, F*ck P2]
type = TargetState
trigger1 = time >= 193
trigger2 = WinKO
value = 4057
ID = 4000

[State 4002, Fall]
type = ChangeState
trigger1 = Time >= 193
trigger2 = WinKO
value = 4895
ctrl = 0

;---------------------------------------------------------------------------
; Counter Attack High Level
; CNS difficulty: medium
; THIS SUPER HYPER makes you to regain HP for a maximum of 420 or so

[Statedef 3076]
type    = S
movetype = I
physics = S
velset = 0,0
anim = 3076
ctrl = 0
sprpriority = 2

[State 3076, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

[State 3076, Hyper Portrait]
type = explod
trigger1 = time = 1
anim = 6000
postype = back
ontop = 1
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1

;THIS MOVE MUST HIT ITS PROGRAMMED VALUE ONLY!!!!
[State 3076, ApplySameDmg]
type = AttackMulSet
trigger1 = 1
value = 1

[State 3076, Super A]
type = SuperPause
trigger1 = Time = 1
time = 60
pos = 0, -55
anim = s8000
sound = s2000, 0
poweradd = -3000

[State 3076, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3076, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3076, Super D]
type = NotHitBy
trigger1 = 1
value = , NA, SA, AT
time = 2

[State 3076, 5] ;We set our variable to a number of 420 to make it last for
type = VarSet
trigger1 = 1
v = 4
value = 420

[State 3076, 6] ;Done showing!!!!
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;THE MEGA SHOWTING ATTACK
[Statedef 4205]
type    = S
movetype = A
physics = S
poweradd = -3000
anim = 4100
ctrl = 0

[State 4205, Level 3]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4205, NOMOREMUSIC]
type = AssertSpecial
trigger1 = 1
flag = nomusic

;THIS MOVE MUST HIT ITS PROGRAMMED VALUE ONLY!!!!
[State 3058, ApplySameDmg]
type = AttackMulSet
trigger1 = 1
value = 1

;Generated by Fighter Factory PalFX Editor
[State 3050, PalFXWiz]
type = BGPalFX
trigger1 = Time = 1
time = 225
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,18
invertall = 1
color = 0

[State 3058, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3058, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3058, Super D]
type = NotHitBy
trigger1 = 1
value = , NA, SA, AT
time = 6

[State 4205, CreateTheProj] ;Crea el maldito projectil de Daniel
type = Projectile
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
trigger7 = Time = 175
trigger8 = Time = 200
trigger9 = Time = 225
trigger10 = Time = 250
ProjID = 66655
projanim = 25555
projremove = 1
velocity = 12, 0
projsprpriority = 4
offset = 0, -75
attr = S, HP
velocity = 5, 0
animtype  = Hard
affectteam = B
damage    = 40, 2
guardflag = MA
pausetime = 12,12
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 40,0
envshake.time = 15
envshake.freq = 110
envshake.ampl = -10
hitsound = S20, 33
guardsound = S20, 33
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2 ;fucking projectile gravity!!!
getpower = 0,0

[State 4205, PlaySnd] ;TRÁGATELO!!!
type = PlaySnd
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
trigger7 = Time = 175
trigger8 = Time = 200
trigger9 = Time = 225
value = 36500, 3
channel = 1

[State 4205, PlaySnd] ;TRÁGATELO!!!
type = PlaySnd
trigger1 = Time = 250
value = 36500, 3
channel = 1
freqmul = 1.8

[State 4205, PlaySnd] ;TRÁGATELO!!!
type = PlaySnd
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
trigger7 = Time = 175
trigger8 = Time = 200
trigger9 = Time = 225
trigger10 = Time = 250
value = 2000, 1

[State 4205, 5]           ;Ya esta!!!
type = ChangeState
trigger1 = Time = 300
value = 0
ctrl = 1

;SINGLE SHOUT

[Statedef 1365]
type    = S
movetype = A
physics = S
poweradd = 42
anim = 4100
ctrl = 0

[State 1365, CreateTheFuckingProj] ;Crea el maldito projectil de Daniel
type = Projectile
trigger1 = Time = 15
ProjID = 66655
projanim = 25555
projremove = 1
velocity = 12, 0
projsprpriority = 4
offset = 0, -75
attr = S, SP
velocity = 4, 0
animtype  = Hard
;affectteam = B
damage    = 88, 1
guardflag = MA
pausetime = 15,12
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -5,-30
hitsound = S5, 9
guardsound = S20, 33
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
getpower  = 0,0
air.velocity = -4,-5
envshake.time = 15
envshake.ampl = -8
envshake.freq = 100

[State 1365, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = 36500, 3
channel = 1

[State 1365, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = 2000, 1

[State 1352, 5]           ;Already done here
type = ChangeState
trigger1 = Time = 30
value = 5110
ctrl = 0

;---------------------------------------------------------------------------
;THE SHOWTING ATTACK LOW SQUARIBLAH
[Statedef 4206]
type    = S
movetype = A
physics = S
poweradd = -2000
anim = 4255
ctrl = 0

[State 4206, NOMOREMUSIC]
type = AssertSpecial
trigger1 = 1
flag = nomusic

;THIS MOVE MUST HIT ITS PROGRAMMED VALUE ONLY!!!!
[State 3058, ApplySameDmg]
type = AttackMulSet
trigger1 = 1
value = 1

;Generated by Fighter Factory PalFX Editor
[State 3050, PalFXWiz]
type = BGPalFX
trigger1 = Time = 0
time = 225
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,18
invertall = 1
color = 0

[State 4206, PlaySnd] ;SQUARIBLAH MUSIC
type = PlaySnd
trigger1 = Time = 1
value = 96000, 0

[State 3050, AzuFightPortrait]
type = Explod
trigger1 = Time = 1
ID = 9901
anim = 9901
pos = 20, 0
postype = back
supermovetime = 255555555555
ontop = 1
bindtime = -1
removetime = -2
ignorehitpause = 1

[State 3058, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3058, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3058, Super D]
type = NotHitBy
trigger1 = 1
value = , ST, HT

[State 4206, CreateTheFuckingProj] ;Crea el maldito projectil de Daniel
type = Projectile
trigger1 = Time = 50
trigger2 = Time = 100
trigger3 = Time = 150
trigger4 = Time = 200
trigger5 = Time = 250
trigger6 = Time = 300
trigger7 = Time = 350
trigger8 = Time = 450
ProjID = 66655
projanim = 25555
projremove = 1
velocity = 6, 0
projsprpriority = 4
offset = 0, -75
attr = S, HP
velocity = 5, 0
animtype  = Light
affectteam = B
damage    = 38, 11
guardflag = MA
pausetime = 12,12
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 40,0
envshake.time = 10
getpower  = 0,0
envshake.freq = 110
envshake.ampl = -8
hitsound = S20, 33
guardsound = S20, 33
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2 ;fucking projectile gravity!!!

[State 4206, 5]           ;Ya esta!!!
type = ChangeState
trigger1 = Time = 495
value = 0
ctrl = 1

;----------------------------------------------------------------------
; ROAD ROLLER DA
; CNS Difficulty FOR ME: UFFF!!!
; This move is split into lots of states, first we switch off normal phisics
[Statedef 10250]
type    = A
movetype = I
physics = N
velset = 0,-19
anim = 10250
poweradd = -4000
ctrl = 0
sprpriority = 2

[State 3050, Helper]
type = Helper
trigger1 = time = 40
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3050, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 10250, SuperPause]
type = SuperPause
trigger1 = Time = 40
time = 80
anim = -1
sound = S7,0
darken = 0
unhittable = 1

[State 10252, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 10250, EndThisstate]
type = ChangeState
trigger1 = Time = 60
value = 10251
ctrl = 0

;----------------------------------------------------------------------
; ROAD ROLLER DA
; CNS Difficulty FOR ME: UFFF!!!
; NOW YOU'RE FALLING WITH A TRUCK!!!
[Statedef 10251]
type    = A
movetype = A
physics = N
velset = 0, 20
anim = 10251
poweradd = -4000
ctrl = 0
sprpriority = 2

[State 10250, Explod]
type = Explod
trigger1 = Time = 1
anim = 13020
ID = 13020
pos = -30,380
postype = Back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 59
supermove = 9999999999
pausemove = 9999999999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 10250, SuperPause]
type = SuperPause
trigger1 = Time = 0
anim = -1
pos = 0,-55
darken = 0
unhittable = 1

[State 10250, Explod]
type = Explod
trigger1 = Time = 0
anim = 6001
ID = 5252
pos = 0,0
postype = Back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 9999999999
pausemove = 9999999999
scale = 1,1
ontop = 0
sprpriority = -8
shadow = 0,0,0
ownpal = 1
removeongethit = 1

;From the original RRDA, modified to work with my version
[State 10251, ModifyExplod]
type = ModifyExplod
trigger1 = Numexplod(13020)
Id = 13020
postype = back
pos = ceil(-20+((random%16)*ifelse((time%6=[1,3]),-1,1))),ceil(170+((random%16)*ifelse((time%6=[1,3]),-1,1)))
scale = ifelse(time>=60+3,2,.35+((time)*.05))*.833,ifelse(time>=60+33,2,.35+((time)*.05))*1.07
ignorehitpause = 1

[State 10251, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S11,0
volume = 255
channel = 6

[State 10252, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "DANTE IN A TRUCK"
ID = 12345
stateno = 19997
pos = 0,135
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999999
pausemovetime = 9999999
ignorehitpause = 1
persistent = 1

[State 1110, 2]
type = HitDef
trigger1 = !movecontact
attr = S, HT
hitflag = MAFD
guardflag = MA
animtype  = Med
damage    = 0, 0
getpower  = 0,0 ; I WANTED TO BE VERY SURE
priority  = 7, Hit
pausetime = 1,8
p2stateno = 30000
hitsound = S20, 33
sparkno = -1
sparkxy = 0,-48
guard.sparkno = s7911
guardsound = s6,0
recover = 0
fall.recover = 0
numhits = 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0

[State 10252, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0 && Pos Y >= -130
time = 60
freq = 60
ampl = 8
phase = 90
ignorehitpause = 1

[State 10252, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 10252, EndThisStateIfWeTouchGround]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -130
trigger1 = MoveHit
value = 10253

[State 19998, RemoveExplod]
type = RemoveExplod
trigger1 = Vel Y > 0 && Pos Y >= -130
trigger1 = !MoveHit
id = 13020

[State 19998, RemoveExplod]
type = RemoveExplod
trigger1 = Vel Y > 0 && Pos Y >= -130
trigger1 = !MoveHit
id = 5252

[State 19998, ChangeStateFail]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -130
trigger1 = !MoveHit
value = 9000
ctrl = 1

;---------------------------------------------------------------------------
;THIS IS THE STATE IN WHICH WE KILL AND ALL FUCKED UP STUFF!!
[Statedef 10253]
type    = S
movetype = I
physics = S
velset = 0, 0
anim = 10252
ctrl = 0
sprpriority = 2

[State 10251, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S2000,5
volume = 255
channel = 6

[State 23652, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
trigger10 = AnimElemTime(38) = 0
value = S20,33+random%5

[State 10251, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
value = -39
absolute = 1
kill = 0

[State 10251, TargetState]
type = TargetState
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
value = 30000

[State 10251, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(38) = 0
value = -149
absolute = 1
kill = 1

[State 10251, TargetState]
type = TargetState
trigger1 = AnimElemTime(38) = 0
value = 30001

[State 10253, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
trigger10 = AnimElemTime(38) = 0
value = 1

[State 10253, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
trigger10 = AnimElemTime(38) = 0
value = S5,5

[State 15002, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
trigger10 = AnimElemTime(38) = 0
anim = 7930+random%8
ID = 7930
pos = 2,0
facing = 1
bindtime = 1
random = 15,2
removetime = -2
ontop = 1
ownpal = 1

;Generated by Fighter Factory PalFX Editor
[State 10253, PalFXWiz]
type = AllPalFX
trigger1 = AnimElem = 39
trigger1 = Win
time = 90
add = 10,10,10
mul = -200,-200,200
sinadd = -256,-256,-256,50
invertall = 0
color = 256

[State 10253, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 5252

[State 10253, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 10253, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 10253, RRDANoSuccess]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = enemyNear, Alive
value = 9000
ctrl = 1

[State 10253, winBYRRDA]
type=changestate
trigger1=P2Life = 0
trigger1=AnimTime = 0
trigger1=!enemyNear, Alive
value=184

[State 10253, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Dizzyfier

[Statedef 6280]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = -500
velset = 0,0
anim = 801
ctrl = 0
sprpriority = 2

[State 6280, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 6280, 6]
type = HitDef
trigger1 = !MoveContact
attr = S, ST
hitflag = M-
priority  = 2, Dodge
sparkno = -1
sparkxy = -10,-60
hitsound   = S800,0
guardsound = 6,0
fall = 0
p1stateno = 6281
p2stateno = 6290    ;State 1025 is NOT versatile enough
p2facing = -1        ;Force to face away from p1
hitonce = 1

[State 6280, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hold and then Kick
[Statedef 6281]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6280
ctrl = 0
sprpriority = 2

[State 6281, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 6281, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 22
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 6281, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 22
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 6281, Bind To Daniel's Hand]
type = TargetBind
trigger1 = AnimElemTime(4) < 0
pos = 37,0

[State 6281, HitSpark]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7920+random%8
pos = 37,-57
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 6281, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S5,9

[State 6281, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
value = -75
kill = 1
absolute = 0

[State 6281, Change To DIZZY State]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 5300

[State 6281, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Grabbed.

[Statedef 6290]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 6290, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = Time = 0
value = 6290

[State 6290, Un-Bind if Daniel gets hit]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050

;Hit by a Kick Rush
[Statedef 6930]
type    = S
movetype= H
physics = N

[State 6930, Anim]
type = ChangeAnim
trigger1 = !Time
value = 5300

[State 6930, Yvel]
type = VelSet
trigger1 = 1
y = 0

[State 6930, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 6930, reset Y to 0]
type = PosSet
trigger1 = 1
y = 0

[State 1028, State 5050] ;Self falling animation
type = SelfState ;Old Bug
trigger1 = Time >= 40
value = 5050

; Aereal Dash DanMan!
[Statedef 99000]
type = A
movetype = A
physics = N
velset = 0,0
anim = 8002
ctrl = 0

;Freeze position until we flight
[State 99000, Freeze]
type = PosFreeze
trigger1 = AnimElem = 1
value = 0

[State 99000, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 8

[State 99000, VelAdd]
type = VelAdd
trigger1 = 1
y = .1
ignorehitpause = 1

[State 99000, 7] ;Change state when Daniel is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ctrl = 0

[Statedef 99001]
type = A
movetype = A
physics = A
anim = 8003
ctrl = 0

[State 99001, VelSet]
type = VelSet
trigger1 = Time = 1
x = -8
y = 0
ignorehitpause = 1

[State 99001, 7] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ctrl = 0

; SHUN DANIEL SATSU

[Statedef 23650]
type = S
movetype = I
physics =S
velset = 0,0
ctrl = 0
anim = 23650

[State 3050, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 23650, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 23650, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7, 0
poweradd = -4000
darken = 0

[State 23650, IWillKillThem]
type = ChangeState
trigger1 = AnimTime = 0
value = 23651

; I WANT TO RUSH!!!!
[Statedef 23651]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 23651

[State 23651, NOMUSIC]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1

[State 23651, X_ADD]
type = PosAdd
trigger1 = 1
x = 4.6

[State 23651, Explosion Moment AfterImages]
type = AfterImage
trigger1 = Time = 0
palcontrast = 255, 15, 15
paladd = 255,0,0
palmul = .5, 0, 0
trans = add
time = 40
timegap = 2
framegap = 1
length = 20

[State 23651, Super C]
type = AfterImageTime
trigger1 = Time = 39 || MoveContact
time = 0

[State 23651, SPECIAL HITDEF]
type = HitDef
trigger1 = Time = 0
attr = S, HT
hitflag = M-
getpower  = 0
priority  = 1, Miss
p1stateno = 23652
p2stateno = 23659
guardflag =
sparkno = -1
hitonce = 1
numhits = 0
fall = 1

[State 23651, TargetBind]
type = TargetBind
trigger1 = MoveContact
time = 3
pos = 30,0

[State 23651, IF YOU LOSE THIS CHANCE]
type = ChangeState
trigger1 = Time = 40
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Let's use "THAT'S OPINION, NOT NEWS!!" as Yagoshi!
[Statedef 23652]
type = S
movetype = A
physics = S
anim = 23652
velset = 0, 0
ctrl = 0

[State 23651, Super C]
type = AfterImageTime
trigger1 = Time = 0
time = 0

[State 23652, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,0

[State 23652, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23652, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 23652, Music Scratch]
type = PlaySnd
trigger1 = Time = 0
value = 20025, 4

[State 23652, THAT'S OPINION]
type = PlaySnd
trigger1 = Time = 0
value = 20025, 2

[State 2502, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nokoslow
flag3 = nomusic
ignorehitpause = 1

[State 23659, AllPalFX]
type = AllPalFX
trigger1 = AnimElemTime(3) = 0
time = 30
sinadd = -255,-255,-255,80

[State 2502, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
value = 0,0,0
time = 7
under = 0

[State 2502, SGS HITADD]
type = HitAdd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
value = 1

[State 2502, Helper]
type = Helper
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
pos = -50+random%75,-55+random%100
postype = p1
ownpal = 1
supermovetime = 9999

[State 2502, SGS BRUTAL LOOKING]
type = Null;Explod
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
anim = 7930+random%8
pos = -50,-55
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 75,100
removetime = -2
supermove = 2
pausemove = 2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 23652, recoverset (Any1)]
type = varset
trigger1 = time = 0
var(59) = 149

;Filling Soon!

[State 23652, recover]
type = VarAdd
trigger1 = AnimElemTime(5)>=0 && AnimElemTime(103)<0
trigger1 = (target,command="a") || (target,command="b") || (target,command="c") || (target,command="x") || (target,command="y") || (target,command="z")
v = 59
value = -1

[State 23652, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
value = S5,0+random%10

[State 23652, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
value = -18
kill = 0

[State 23652, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(27)=0
value = -6
kill = 1

[State 23652, SGS Success]
type = TargetState
trigger1 = AnimTime = 0 && var(59)
value = 2511

[State 23652, OrNot?]
type = TargetState
trigger1 = !var(59)
value = 1112511
ctrl = 0

[State 23652, LifeAdd]
type = LifeAdd
trigger1 = !var(59)
value = -175
kill = 1

[State 23652, TargetDrop]
type = TargetDrop
trigger1 = !var(59)
keepone = 0

[State 23652, VelSet]
type = VelSet
trigger1 = !var(59)
x = -25

[State 23652, OrNotToo]
type = ChangeState
trigger1 = !var(59)
value = 5682
ctrl = 0

[State 23652, ChangeState]; GO STRAIGHT TO WINPOSE
type = ChangeState
trigger1 = AnimTime = 0 && WinKO
value = 183
ctrl = 0

[State 23652, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 && !WinKO
value = 23653 ;SGS No KO...
ctrl = 0

[Statedef 23653]
type = S
movetype = I
physics = N
velset = 0,0
anim = 23653
ctrl = 0

[State 23653, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23653, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 23653, Special Flags]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2 = NoFG
flag3 = NoMusic
ignorehitpause = 1

[State 23653, Saying]
type = PlaySnd
trigger1 = Time = 0
value = S23653, random%2

[State 23653, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

[Statedef 1112511]
type = S
movetype = H
physics = S
anim = 5120
poweradd = 500
ctrl = 0

[State 1112511, Value]
type = LifeAdd
trigger1 = !Time
value = 100
kill = 0 ;You never know!

[State 1112511, Recover]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Keep yourself there if SGS against you

[Statedef 23659]
type = S
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 23652, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23652, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 23659, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 23659

;---------------------------------------------------------------------------
; LieDown State FROM PACMAN DELTA
[Statedef 2511]
type = L
movetype = H
physics = N
ctrl = 0
sprpriority = 2

[State 2511, ChangePosToFloorImediatly]
type = PosSet
trigger1 = !Time
y = 0

[State 2511, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 2511

[State 2511, SelfState]
type = SelfState
trigger1 = !Alive
trigger1 = Time >= Const(data.liedown.time)
value = 5150

[State 2511, GetUp_after_yourCNSTime]
type = SelfState
trigger1 = Alive
trigger1 = Time >= 180
value = 5120
ctrl = 1

;ANGRY SHUN DANIEL SATSU

[Statedef 123650]
type = S
movetype = I
physics =S
velset = 0,0
ctrl = 0
anim = 123650

[State 3050, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 123650, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 123650, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7, 0
poweradd = -4000
darken = 0

[State 123650, IWillKillThem]
type = ChangeState
trigger1 = AnimTime = 0
value = 123651

; I WANT TO RUSH!!!!
[Statedef 123651]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 123651

[State 123651, NOMUSIC]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1

[State 123651, X_ADD]
type = PosAdd
trigger1 = 1
x = 4.6

[State 123651, Super B]
type = AfterImage
trigger1 = Time = 0
paladd = 0, 250, 0
palmul = 0, 19, 0
time = 2

[State 123651, Super C]
type = AfterImageTime
trigger1 = 1
time = 2

[State 123651, SPECIAL HITDEF]
type = HitDef
trigger1 = Time = 0
attr = S, HT
hitflag = M-
getpower  = 0
priority  = 1, Miss
p1stateno = 123652
p2stateno = 123659
guardflag =
sparkno = -1
hitonce = 1
numhits = 0
fall = 1

[State 123651, TargetBind]
type = TargetBind
trigger1 = MoveContact
time = 3
pos = 30,0

[State 123651, IF YOU LOSE THIS CHANCE]
type = ChangeState
trigger1 = Time = 40
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Let's use "THAT'S OPINION, NOT NEWS!!" as Yagoshi!
[Statedef 123652]
type = S
movetype = A
physics = S
anim = 123652
velset = 0, 0
ctrl = 0

[State 123652, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,0

[State 123652, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 123652, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 123652, Music Scratch]
type = PlaySnd
trigger1 = Time = 0
value = 20025, 4

[State 123652, THAT'S OPINION]
type = PlaySnd
trigger1 = Time = 0
value = 20025, 2

[State 12502, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nokoslow
flag3 = nomusic
ignorehitpause = 1

[State 12502, SGS HITADD]
type = HitAdd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0||AnimElemTime(103)=0
value = 1

[State 12502, Helper]
type = Helper
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0||AnimElemTime(103)=0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
postype = p1
pos = -50+random%75,-55+random%100
ownpal = 1
supermovetime = 9999

[State 12502, SGS BRUTAL LOOKING]
type = Null;Explod
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0||AnimElemTime(103)=0
anim = 7930+random%8
pos = -50,-55
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 75,100
removetime = -2
supermove = 2
pausemove = 2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 123652, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0||AnimElemTime(103)=0
value = S5,0+random%10

[State 123652, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0
value = -4
kill = 0

[State 123652, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(103)=0
value = -100
kill = 1

[State 123652, SGS Success]
type = TargetState
trigger1 = AnimTime = 0
value = 2511

[State 123652, ChangeState]; GO STRAIGHT TO WINPOSE
type = ChangeState
trigger1 = AnimTime = 0 && WinKO
value = 183
ctrl = 0

[State 123652, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 && !WinKO
value = 23653
ctrl = 0

[Statedef 1112511]
type = S
movetype = H
physics = S
anim = 5120
poweradd = 500
ctrl = 0

[State 1112511, Value]
type = LifeAdd
trigger1 = !Time
value = 100
kill = 0 ;You never know!

[State 1112511, Recover]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Keep yourself there if SGS against you

[Statedef 123659]
type = S
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 123652, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 123652, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 123659, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 123659

;---------------------------------------------------------------------------
; LieDown State FROM PACMAN DELTA
[Statedef 12511]
type = L
movetype = H
physics = N
ctrl = 0
sprpriority = 2

[State 12511, ChangePosToFloorImediatly]
type = PosSet
trigger1 = !Time
y = 0

[State 12511, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 2511

[State 12511, SelfState]
type = SelfState
trigger1 = !Alive
trigger1 = Time >= Const(data.liedown.time)
value = 5150

[State 12511, GetUp_after_my_saying]
type = SelfState
trigger1 = Alive
trigger1 = Time >= 180
value = 5120
ctrl = 1

;---------------------------------------------------------------------------
; Hit By Road Roller
[Statedef 30000]
type = L
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 30000, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 30000
elem = 1

[State 30000, PosSet]
type = PosSet
trigger1 = 1
y = 0

;---------------------------------------------------------------------------
; Hit By Road Roller 2
[Statedef 30001]
type = L
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 30001, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 30000
elem = 1

[State 30001, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 30000, NOTDIEafter_yourCNSTime]
type = SelfState
trigger1 = Time >= (Const(data.liedown.time)) && Alive
value = 5050
ctrl = 0

[State 30000, DIEafter_yourCNSTime]
type = SelfState
trigger1 = Time >= (Const(data.liedown.time)) && !Alive
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 15001] ;I Put this as revenge
type = S
movetype = A
physics = N
velset = 15, 0
anim = 23651
ctrl = 0

[State 15001, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 15001, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7, 0
poweradd = -4000
darken = 0

[State 15001, 1]
type = HitDef
Trigger1 = Time = 1
attr = S, HT
hitflag = MAF
guardflag = M
damage = 0,5
priority = 1, Miss
sparkno = -1
guardflag = MA
p1sprpriority = 2
p1facing = 1
sparkno = -1
guard.sparkno = S7911
guardsound = S6, 0
sparkxy = -5, -30
p2facing = -1
p1stateno = 15002
p2stateno = 15003
guard.dist = 999
fall = 1
numhits = 0
guard.sparkno = -1

[State 15001, ChangeStateFail]
type = ChangeState
trigger1 = Time >= 15
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 15002] ;I STILL Put this as revenge
type = S
movetype = A
physics = N
velset = 0, 0
anim = 15002
ctrl = 0

[State 15003, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15003, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 15002, StopTehMusic]
type = PlaySnd
trigger1 = Time = 0
value = S15001,0
volume = 255
channel = 6
freqmul = 1.0
loop = 1
abspan = 0

[State 15002, StopSnd]
type = StopSnd
trigger1 = Time >= (ifelse(Var(17) = 0, 480, 5400))
channel = 6
ignorehitpause = 1

[State 15002, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
value = S5,2

[State 15002, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
value = 1

[State 15002, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
postype = p1
pos = 0,-10
ownpal = 1
supermovetime = 9999

[State 15002, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
anim = 7930+random%8
ID = 7930
pos = 0,-10
postype = p2
facing = 1
bindtime = 1
random = 15,0
removetime = -2
ontop = 1
ownpal = 1

[State 15002, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
time = 12
freq = 130
ampl = -8

[State 15002, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
value = -18
kill = 0

[State 15002, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
value = 15003

[State 15002, TargetBind]
type = TargetBind
trigger1 = 1
pos = 0, 0

[State 15002, NOMOREMUSIC]
type = AssertSpecial
trigger1 = 1
flag = nomusic
;flag2 = nokosnd
flag2 = nokoslow
ignorehitpause = 1

[State 15002, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time > (ifelse(Var(17) = 0, 480, 5400))
value = -18
kill = 1

[State 15002, Target State]
type = TargetState
trigger1 = Time > (ifelse(Var(17) = 0, 480, 5400)) && !target,Alive
value = 15004

[State 15002, Target State]
type = TargetState
trigger1 = Time > (ifelse(Var(17) = 0, 480, 5400)) && target,Alive
value = 15005

[State 15002, AfterSadicness]
type = ChangeState
trigger1 = Time > (ifelse(Var(17) = 0, 480, 5400))
value = 4895
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 15003] ;Get Hit by thizzz foker
type = L
movetype = H
physics = N
sprpriority = -1
velset = 0, 0
ctrl = 0

[State 15003, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15003, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 15003, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 15003

[State 15003, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 15003, SelfState]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
[Statedef 15004] ;Super Dead
type = L
movetype = H
physics = N
sprpriority = -1
velset = 0, 0
ctrl = 0

[State 15004, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15004, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 15004, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 15003

[State 15004, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 15004, SelfState]
type = SelfState
trigger1 = Time = 15
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 15005] ;Super End
type = A
movetype = H
physics = N
sprpriority = -1
velset = 2, -25
ctrl = 0

[State 15005, Gravity]
type = Veladd
trigger1 = 1
y = .7

[State 15005, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15005, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 15005, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 15003

[State 15005, SelfState]
type = EnvShake
trigger1 = Pos Y >= 20 && Vel Y > 0
time = 25
freq = 175
ampl = -5
phase = 30

[State 15005, SelfState]
type = SelfState
trigger1 = Pos Y >= 20 && Vel Y > 0
value = 5100
ctrl = 0

;---------------------------------------------------------------------------
; Missile Barriage
; A super which creates a constant stream of missiles... If the move looks like the Firework Barriage from Wickydoo's Yukari, is because it's inspired from it, THE ONLY THING I BORROWED FROM THERE, IS THE WAY TO MAKE ROTATIONS... >_>

[Statedef 4900]
type    = A
movetype = A
physics = N
juggle  = 8
velset = -0.5,-0.5
anim = 9000
ctrl = 0
sprpriority = 2

[State 4900, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 4900, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4322, Super A]
type = SuperPause
trigger1 = Time = 0
time = 60
darken = 0
anim = -1
sound = s7, 0
poweradd = -4000

[State 4322, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 4322, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 4322, Super D]
type = NotHitBy
trigger1 = 1
value = , NA, SA, AT
time = 6

[State 4900, Helper]
type = Helper
trigger1 = Time > 0 && Time%12=0
helpertype = normal ;player
name = "Missile"
ID = 78650
stateno = 4901
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4900, ChangeState]
type = ChangeState
trigger1 = Time > 240
value = 9000
ctrl = 0

;------------------------------------------------------------------------
;Super Instead of SGS
; This Attack makes Daniel to jump, land, throw the enemy slowy into the air, however, makes the opponent to to fully recharge their super bar
; and gives Daniel the chance to bash, must be used close to the opponent

[Statedef 7777]
type    = A
movetype = A
physics = N
juggle  = 0
velset = 0.5,-8
anim = 9250
ctrl = 0
sprpriority = 2

[State 7777, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 7777, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 7777, Super A]
type = SuperPause
trigger1 = Time = 0
time = 60
darken = 0
movetime = 30
anim = -1
sound = s7, 0
poweradd = -4000

[State 7777, VelAdd]
type = VelAdd
trigger1 = Pos Y < 0
x = 0
y = 0.15

[State 7777, HitDef]
type = HitDef
trigger1 = Vel Y > 0 && Pos Y >= -10
attr = S,HA
hitflag = HAFLD
guardflag = L
affectteam = B
animtype = DiAgUp
priority = 7,Hit
damage = 100
pausetime = 40, 30
sparkno = S7930+random%8
guard.sparkno = S7911
sparkxy = 0+random&4,-5
hitsound = S5,9
guardsound = S6,0
ground.type = Low
ground.slide = 0
ground.hit = 200
fall = 1
air.hittime = 20
yaccel = 0.1
ground.velocity = -9, -8
air.velocity = -9, -8
sprpriority = 1
fall.recovertime = 0
fall.damage = 50
down.bounce = 1
kill = 0
fall.kill = 0
recover = 0
fall.recover = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 15
envshake.freq = 160
envshake.ampl = 8
envshake.phase = 0
fall.envshake.time = 15
fall.envshake.freq = 160
fall.envshake.ampl = 10
fall.envshake.phase = 0

[State 7777, VelSet]
type = VelSet
trigger1 = Vel Y > 0 && Pos Y >= 0
x = 0
y = 0

[State 7777, ChangeState]
type = ChangeState
trigger1 = MoVeHIT
value = 7778
ctrl = 0

[State 7777, Hit By Supers only]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, NP, SP, NT, ST

[State 7777, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= 0 ;Safety
value = 0
ctrl = 1

[StateDef 7778]
type = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7778
sprpriority = 2

[State 7778, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nojugglecheck ;You may never know

[State 7778, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -25

[State 7778, VelSet]
type = VelSet
trigger1 = Time = 0
x = (P2Dist X)/4.5
y = ((P2Dist Y)/4.5)

[State 7778, VelocitySet]
type = VelSet
trigger1 = UniqHitCount = 3
x = (P2Dist X)/2
y = ((P2Dist Y)/2)

[State 7778, HitDef]
type = HitDef
trigger1 = UniqHitCount <= 2
attr = A, HA
damage = 102
animtype = DiagUP
guardflag =
hitflag = MAFLD+
priority = 7, Hit
pausetime = 90, 60
sparkno = S7930+random%8
guard.sparkno = S7911
sparkxy = 0+random%4,-5
hitsound = S5, 9
guardsound = S6, 0
ground.type = High
ground.slidetime = 8
ground.hittime  = 999
getpower = 0, 0
givepower = 1000, 1000
fall = 1
kill = 0
ground.velocity = -2*(UniqHitCount*2), -5*(UniqHitCount*2)
air.velocity = -2*(UniqHitCount*2), -5*(UniqHitCount*2)
airguard.velocity = -1.9*UniqHitCount,-.4*UniqHitCount
yaccel = .05
recover = 0
fall.recover = 0
air.type = High
air.hittime = 999
air.recovertime = 0
fall.recovertime = 0

[State 7778, HitDef]
type = HitDef
trigger1 = UniqHitCount = 3
attr = A, HA
damage = 52
animtype = Up
guardflag =
hitflag = MAFLD+
priority = 7, Hit
pausetime = 75, 60
sparkno = S7930+random%8
guard.sparkno = S7911
sparkxy = 0+random&4,-5
hitsound = S5, 9
kill = 1
getpower = 0, 0
givepower = 1000, 1000
guardsound = S6, 0
ground.type = High
ground.slidetime = 8
ground.hittime  = 30
fall = 1
recover = 0
fall.recover = 0
ground.velocity = -20, 20
air.velocity = -20, 50
airguard.velocity = -1.9,-.4
yaccel = .9
down.bounce = 1
air.type = High
air.hittime = 12
fall.recovertime = 0

[State 7778, VelSetHits]
type = VelSet
trigger1 = MoveHit && UniqHitCount <= 2
x = 2*(UniqHitCount*2)
y = -5*(UniqHitCount*2)

[State 7778, Change]
type = ChangeState
trigger1 = UniqHitCount >= 4
trigger2 = Pos Y <= -3222 ;Safety
value = 9000 ;Dunno why I always change to super jump State

[State 7778, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0

[State 99000, 7] ;Safety
type = PosSet
trigger1 = Vel Y > 0 && Pos Y >= 0
y = 0

[State 99000, 7] ;Safety
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;Hyper Cherry Summon, Cherry's Kick Smash?
[Statedef 3269]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 7888 ;Summon Anim
ctrl = 0
sprpriority = 2

[State 3269, Hyper Summon]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Cherry"
ID = 14002
stateno = 14000
postype = back
pos = -40,0
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 50

[State 3269, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4012]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 4012
ctrl = 0
sprpriority = 2
poweradd = -2000

[State 4012, Spawn Minamo]
type = Helper
trigger1 = !Time
helpertype = normal
name = "Minamo"
ID = 4013
stateno = 4013
pos = -32,0
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 69

[State 4012, Change into an attack] ;For the player to guard
type = StateTypeSet
trigger1 = AnimElemTime(10) = 0
movetype = A

[State 4012, Change into an aereal state]
type = StateTypeSet
trigger1 = AnimElemTime(12) = 0
statetype = A
physics = N

[State 4012, Run]
type = VelSet
trigger1 = AnimElemTime(12) >= 0
x = 4

[State 4012, Run]
type = VelSet
trigger1 = AnimElemTime(12) = 0
y = -8.5

[State 4012, VelAdd]
type = VelAdd
trigger1 = statetype = A
y = 0.5

[State 4012, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 8
paladd = 0,255,0
timegap = 1
framegap = 2
trans = add

[State 4012, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 4012, Pause]
type = Pause
trigger1 = Time = 0
time = 60
movetime = 60
pausebg = 1
endcmdbuftime = 20

[State 4012, Helper]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-80
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3050, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 4012, Super Pause]
type = SuperPause
trigger1 = AnimElem = 5
time = 45
anim = -1
sound = s7,0
darken = 0

[State 4012, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4012, Bound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4012, Fail/Success]
type = ChangeState
trigger1 = Statetype = A && (Pos Y >= 0 && Vel Y > 0) ;Time >= 102
trigger2 = Helper(4013), stateno = 4016
trigger3 = !NumHelper(4013)
value = 4015
ctrl = 0
ignorehitpause = 1

[Statedef 4015]
type = A
movetype = H
physics = N
ctrl = 0
velset = -10,-5
anim = 5070

[State 4015, Hit]
type = PlaySnd
trigger1 = Time = 0
value = S666,0

[State 4015, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 4015, Bounce]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

;Steamroller Jump
[Statedef 4500]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3076
sprpriority = 2

[State 4500, Up!]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 0
y = -40

[State 4500, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-80
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4500, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 4500, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
movetime = 0
anim = -1
sound = s7,0
darken = 0
poweradd = -4000

[State 4500, Stop Following];Think of Tall stages
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 4500, Truck Land!]
type = HitDef
trigger1 = Time = 0
attr = S, HT
damage = 10,2
pausetime = 1,4
guardflag = M
hitflag = MAFD
priority = 2,Dodge
sparkno = -1
guard.sparkno = S7911
sparkxy = -5,-40
hitsound = S500,4
guardsound = S6,0
guard.dist = 999
numhits = 0
p2stateno = 99056
fall.velocity = -4,-9
down.bounce = 1
hitonce = 1
p2facing = 1
fall = 1
kill = 0
ID = 15000

[State 4500, Done]
type = ChangeState
trigger1 = ScreenPos Y <= -400
value = 4501
ctrl = 0

;Truck Is Falling along with you
[Statedef 4501]
type = A
movetype = A
physics = N
ctrl = 0
anim = 10251
velset = 0,0
sprpriority = 2
facep2 = 1
hitdefpersist = 1

;Generated by Fighter Factory PalFX Editor
[State 4501, Kick ass Background]
type = BGPalFX
trigger1 = Time = 0
time = 45
add = 255,100,255
mul = 99,37,99
sinadd = 255,-85,33,22
invertall = 0
color = 210

[State 4501, Don't Follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 4501, Pause]
type = Pause
trigger1 = time = 0
time = 45
movetime = 45
pausebg = 0

[State 4501, Kabewm]
type = PlaySnd
trigger1 = time = 0
value = S4500,0
volume = 255

[State 4501, Portrait]
type = Explod
trigger1 = Time = 0
Anim = 8666
id = 8666
pos = -30, 380
postype = back
ownpal = 1
bindtime = -1
pausemovetime = 99999999
supermove = 1
sprpriority = -1
removeongethit = 1
removetime = 45

[State 4501, Portrait Modification]
type = ModifyExplod
trigger1 = Numexplod(8666)
Id = 8666
postype = back
pos = ceil(-20+((random%16)*ifelse((time%6=[1,3]),-1,1))),ceil(170+((random%16)*ifelse((time%6=[1,3]),-1,1)))
scale = ifelse(time>=33,2,.35+((time)*.05))*1.07,ifelse(time>=33,2,.35+((time)*.05))*1.07

[State 4501, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0 && Pos Y >= -143
time = 90
freq = 150
ampl = -6

[State 4501, Create That Truck]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Truck"
ID = 15001
stateno = 19997
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 1

[State 4501, Kabewm]
type = PlaySnd
trigger1 = Vel Y > 0 && Pos Y >= -143
value = S500,3
volume = 888

[State 4501, Fall With That Truck]
type = VelSet
trigger1 = Time = 45
x = 3
y = 60

[State 4501, If Not Switched]
type = ChangeAnim
trigger1 = Anim != 10252 && (Vel Y >= 0 && Pos Y >= -130)
value = 10252

[State 4501, Stop]
type = VelSet
trigger1 = Vel Y >= 0 && Pos Y >= -130
x = 0
y = 0

[State 4501, Successful Hit]
type = ChangeState
trigger1 = Anim = 10252 && Animtime = 0 && MoveHit
value = 4502
ctrl = 0

[State 4501, TargetBind]
type = TargetBind
trigger1 = MoveHit && Anim = 10252
pos = 133,130
ignorehitpause = 1

[State 4501, Failed]
type = ChangeState
trigger1 = Anim = 10252 && Animtime = 0 && !MoveHit
value = 4503
ctrl = 0

;Using The Truck To F*** You Up!
[Statedef 4502]
type = S
movetype = I
physics = N
ctrl = 0
anim = 10253
sprpriority = 2

[State 4502, "EAT MY CAR!!"]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = S96666,1
volume = 255
channel = 2

[State 4502, Hurt Sounds]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0 || AnimElemTime(7) = 0 || AnimElemTime(10) = 0
trigger2 = AnimElemTime(13) = 0 || AnimElemTime(16) = 0 || AnimElemTime(19) = 0
trigger3 = AnimElemTime(22) = 0 || AnimElemTime(25) = 0 || AnimElemTime(28) = 0
trigger4 = AnimElemTime(31) = 0 || AnimElemTime(34) = 0 || AnimElemTime(37) = 0
trigger5 = AnimElemTime(40) = 0 || AnimElemTime(43) = 0 || AnimElemTime(46) = 0
trigger6 = AnimElemTime(49) = 0 || AnimElemTime(52) = 0 || AnimElemTime(55) = 0
trigger7 = AnimElemTime(58) = 0 || AnimElemTime(61) = 0 || AnimElemTime(64) = 0
trigger8 = AnimElemTime(67) = 0 || AnimElemTime(70) = 0 || AnimElemTime(73) = 0
trigger9 = AnimElemTime(76) = 0 || AnimElemTime(79) = 0 || AnimElemTime(82) = 0
trigger10 = AnimElemTime(85) = 0 || AnimElemTime(88) = 0 || AnimElemTime(91) = 0
trigger11 = AnimElemTime(94) = 0 || AnimElemTime(97) = 0 || AnimElemTime(100) = 0
trigger12 = AnimElemTime(103) = 0 || AnimElemTime(106) = 0 || AnimElemTime(109) = 0
trigger13 = AnimElemTime(112) = 0 || AnimElemTime(115) = 0 || AnimElemTime(118) = 0
trigger14 = AnimElemTime(121) = 0 || AnimElemTime(124) = 0 || AnimElemTime(127) = 0
trigger15 = AnimElemTime(130) = 0 || AnimElemTime(133) = 0 || AnimElemTime(136) = 0
trigger16 =AnimElemTime(139) = 0 || AnimElemTime(146) = 0 || AnimElemTime(146) = 2
value = S5,4
channel = 6

[State 4502, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 0 || AnimElemTime(7) = 0 || AnimElemTime(10) = 0
trigger2 = AnimElemTime(13) = 0 || AnimElemTime(16) = 0 || AnimElemTime(19) = 0
trigger3 = AnimElemTime(22) = 0 || AnimElemTime(25) = 0 || AnimElemTime(28) = 0
trigger4 = AnimElemTime(31) = 0 || AnimElemTime(34) = 0 || AnimElemTime(37) = 0
trigger5 = AnimElemTime(40) = 0 || AnimElemTime(43) = 0 || AnimElemTime(46) = 0
trigger6 = AnimElemTime(49) = 0 || AnimElemTime(52) = 0 || AnimElemTime(55) = 0
trigger7 = AnimElemTime(58) = 0 || AnimElemTime(61) = 0 || AnimElemTime(64) = 0
trigger8 = AnimElemTime(67) = 0 || AnimElemTime(70) = 0 || AnimElemTime(73) = 0
trigger9 = AnimElemTime(76) = 0 || AnimElemTime(79) = 0 || AnimElemTime(82) = 0
trigger10 = AnimElemTime(85) = 0 || AnimElemTime(88) = 0 || AnimElemTime(91) = 0
trigger11 = AnimElemTime(94) = 0 || AnimElemTime(97) = 0 || AnimElemTime(100) = 0
trigger12 = AnimElemTime(103) = 0 || AnimElemTime(106) = 0 || AnimElemTime(109) = 0
trigger13 = AnimElemTime(112) = 0 || AnimElemTime(115) = 0 || AnimElemTime(118) = 0
trigger14 = AnimElemTime(121) = 0 || AnimElemTime(124) = 0 || AnimElemTime(127) = 0
trigger15 = AnimElemTime(130) = 0 || AnimElemTime(133) = 0 || AnimElemTime(136) = 0
trigger16 =AnimElemTime(139) = 0 || AnimElemTime(146) = 0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
postype = p1
pos = 0,-2
ownpal = 1
supermovetime = 9999

[State 4502, Explods]
type = Null;Explod
trigger1 = AnimElemTime(4) = 0 || AnimElemTime(7) = 0 || AnimElemTime(10) = 0
trigger2 = AnimElemTime(13) = 0 || AnimElemTime(16) = 0 || AnimElemTime(19) = 0
trigger3 = AnimElemTime(22) = 0 || AnimElemTime(25) = 0 || AnimElemTime(28) = 0
trigger4 = AnimElemTime(31) = 0 || AnimElemTime(34) = 0 || AnimElemTime(37) = 0
trigger5 = AnimElemTime(40) = 0 || AnimElemTime(43) = 0 || AnimElemTime(46) = 0
trigger6 = AnimElemTime(49) = 0 || AnimElemTime(52) = 0 || AnimElemTime(55) = 0
trigger7 = AnimElemTime(58) = 0 || AnimElemTime(61) = 0 || AnimElemTime(64) = 0
trigger8 = AnimElemTime(67) = 0 || AnimElemTime(70) = 0 || AnimElemTime(73) = 0
trigger9 = AnimElemTime(76) = 0 || AnimElemTime(79) = 0 || AnimElemTime(82) = 0
trigger10 = AnimElemTime(85) = 0 || AnimElemTime(88) = 0 || AnimElemTime(91) = 0
trigger11 = AnimElemTime(94) = 0 || AnimElemTime(97) = 0 || AnimElemTime(100) = 0
trigger12 = AnimElemTime(103) = 0 || AnimElemTime(106) = 0 || AnimElemTime(109) = 0
trigger13 = AnimElemTime(112) = 0 || AnimElemTime(115) = 0 || AnimElemTime(118) = 0
trigger14 = AnimElemTime(121) = 0 || AnimElemTime(124) = 0 || AnimElemTime(127) = 0
trigger15 = AnimElemTime(130) = 0 || AnimElemTime(133) = 0 || AnimElemTime(136) = 0
trigger16 =AnimElemTime(139) = 0 || AnimElemTime(146) = 0
anim = 7930+random%8
pos = 0,-2
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 4502, "Combo"]
type = HitAdd
trigger1 = AnimElemTime(4) = 0 || AnimElemTime(7) = 0 || AnimElemTime(10) = 0
trigger2 = AnimElemTime(13) = 0 || AnimElemTime(16) = 0 || AnimElemTime(19) = 0
trigger3 = AnimElemTime(22) = 0 || AnimElemTime(25) = 0 || AnimElemTime(28) = 0
trigger4 = AnimElemTime(31) = 0 || AnimElemTime(34) = 0 || AnimElemTime(37) = 0
trigger5 = AnimElemTime(40) = 0 || AnimElemTime(43) = 0 || AnimElemTime(46) = 0
trigger6 = AnimElemTime(49) = 0 || AnimElemTime(52) = 0 || AnimElemTime(55) = 0
trigger7 = AnimElemTime(58) = 0 || AnimElemTime(61) = 0 || AnimElemTime(64) = 0
trigger8 = AnimElemTime(67) = 0 || AnimElemTime(70) = 0 || AnimElemTime(73) = 0
trigger9 = AnimElemTime(76) = 0 || AnimElemTime(79) = 0 || AnimElemTime(82) = 0
trigger10 = AnimElemTime(85) = 0 || AnimElemTime(88) = 0 || AnimElemTime(91) = 0
trigger11 = AnimElemTime(94) = 0 || AnimElemTime(97) = 0 || AnimElemTime(100) = 0
trigger12 = AnimElemTime(103) = 0 || AnimElemTime(106) = 0 || AnimElemTime(109) = 0
trigger13 = AnimElemTime(112) = 0 || AnimElemTime(115) = 0 || AnimElemTime(118) = 0
trigger14 = AnimElemTime(121) = 0 || AnimElemTime(124) = 0 || AnimElemTime(127) = 0
trigger15 = AnimElemTime(130) = 0 || AnimElemTime(133) = 0 || AnimElemTime(136) = 0
trigger16 =AnimElemTime(139) = 0 || AnimElemTime(146) = 0
value = 1

[State 4502, Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0 || AnimElemTime(7) = 0 || AnimElemTime(10) = 0
trigger2 = AnimElemTime(13) = 0 || AnimElemTime(16) = 0 || AnimElemTime(19) = 0
trigger3 = AnimElemTime(22) = 0 || AnimElemTime(25) = 0 || AnimElemTime(28) = 0
trigger4 = AnimElemTime(31) = 0 || AnimElemTime(34) = 0 || AnimElemTime(37) = 0
trigger5 = AnimElemTime(40) = 0 || AnimElemTime(43) = 0 || AnimElemTime(46) = 0
trigger6 = AnimElemTime(49) = 0 || AnimElemTime(52) = 0 || AnimElemTime(55) = 0
trigger7 = AnimElemTime(58) = 0 || AnimElemTime(61) = 0 || AnimElemTime(64) = 0
trigger8 = AnimElemTime(67) = 0 || AnimElemTime(70) = 0 || AnimElemTime(73) = 0
trigger9 = AnimElemTime(76) = 0 || AnimElemTime(79) = 0 || AnimElemTime(82) = 0
trigger10 = AnimElemTime(85) = 0 || AnimElemTime(88) = 0 || AnimElemTime(91) = 0
trigger11 = AnimElemTime(94) = 0 || AnimElemTime(97) = 0 || AnimElemTime(100) = 0
trigger12 = AnimElemTime(103) = 0 || AnimElemTime(106) = 0 || AnimElemTime(109) = 0
trigger13 = AnimElemTime(112) = 0 || AnimElemTime(115) = 0 || AnimElemTime(118) = 0
trigger14 = AnimElemTime(121) = 0 || AnimElemTime(124) = 0 || AnimElemTime(127) = 0
trigger15 = AnimElemTime(130) = 0 || AnimElemTime(133) = 0 || AnimElemTime(136) = 0
trigger16 =AnimElemTime(139) = 0
value = -5
kill = 0
absolute = 0

[State 4502, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(146) < 0
pos = 133,130

[State 4502, Killer Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(146) = 0
value = -159
kill = 1
absolute = 0

[State 4502, Prevent From Timing Out]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 4502, Dead Switch (Target)]
type = TargetState
triggerall = NumTarget(15000)
trigger1 = AnimElemTime(147) = 0 && Win
value = 3059 ;Lying Dead

[State 4502, Dead Switch (Self)]
type = ChangeState
trigger1 = AnimTime = 0
value = 184 ;Wry

[State 4502, WHOA]
type = PlaySnd
trigger1 = AnimElemTime(147) = 0 && !Win
value = S666,0
volume = 255
channel = 2

[State 4502, Not Dead Switch (Target)]
type = TargetState
triggerall = NumTarget(15000)
trigger1 = AnimElemTime(147) = 0 && !Win
value = 4057 ;Towards Wall

[State 4502, Not Dead Switch (Self)]
type = ChangeState
triggerall = NumTarget(15000)
trigger1 = AnimElemTime(147) = 0 && !Win
value = 4503 ;Jump


[Statedef 4503]
type = A
movetype = I
physics = N
ctrl = 0
anim = 43
sprpriority = 2
velset = -16,-8

[State 4503, Gravity]
type = Gravity
trigger1 = 1

[State 4503, Don't Follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 4503, Dash At End]
type = ChangeState
trigger1 = Screenpos X <= 20 || Screenpos X >= 300
trigger1 = Vel Y >= 0 && Pos Y >= 0
value = 4505
ctrl = 0

[State 4503, End]
type = ChangeState
trigger1 = Screenpos X > 20 && Screenpos X < 300
trigger1 = Vel Y >= 0 && Pos Y >= 0
value = 52
ctrl = 0

[Statedef 4505]
type = S
movetype = I
physics = N
ctrl = 0
anim = 101
velset = 8,0

[State 3055, PosSet]
type = PosSet
trigger1 = Vel Y >= 0 && Pos Y >= 0
y = 0

[State 3055, Run]
type = VelSet
trigger1 = Time = 0
x = 8

[State 3055, No, Sigas...]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3055, Stop]
type = ChangeState
trigger1 = ScreenPos X >= 100 && ScreenPos X <= 220
value = 52
ctrl = 0

[Statedef 99056]
type = L
movetype = H
physics = N
ctrl = 0
velset = 0,0 ;Yoink!

[State 99056, On The Floor]
type = ChangeAnim2
trigger1 = Time = 0
value = 5110

[State 99056, Can't Touch This]
type = NotHitBy
trigger1 = 1
value = SCA

[State 99056, Can't Push This]
type = PlayerPush
trigger1 = 1
value = 0

[State 99056, To The Floor]
type = PosSet
trigger1 = Time = 0
y = 0

[Statedef 4057] ;Through The Air
type = A
movetype = H
physics = N
ctrl = 0

[State 4057, Let's Fly Away]
type = ChangeAnim2
trigger1 = Time = 0
value = 4057

[State 4057, Fly]
type = VelSet
trigger1 = Time = 0
x = -7
y = 0 ;<--- Added This Line

[State 4057, Follow The First Few Ticks]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = (Time < 25),0

[State 4057, Hit Wall]
type = ChangeState
trigger1 = Vel X > 0 && FrontEdgeBodyDist <= 3
trigger2 = Vel X < 0 && BackEdgeBodyDist <= 3
value = 4058 ;Turn And Fall
ctrl = 0

[Statedef 4058]
type = A
movetype = H
physics = N
ctrl = 0

[State 4058, Wheeee!!]
type = ChangeAnim2
trigger1 = Time = 0
value = 4058

[State 4058, Turn immediatly]
type = Turn
trigger1 = Time = 0

[State 4058, VelSet]
type = VelSet
trigger1 = Time = 0
x = -3.5
y = -7

[State 4058, VelAdd]
type = VelAdd
trigger1 = 1
y = .45

[State 4058, Finnally You Can Go To Own States!]
type = SelfState
trigger1 = Vel Y >= 0 && Pos Y >= 10
value = 5100

[Statedef 3059]
type = L
movetype = H
physics = N
ctrl = 0
velset = 0,0 ;Yoink!

[State 3059, DIE]
type = SelfState
trigger1 = Time >= 45
value = 5150

;Super Attack End
;This is not a move, but it makes Daniel to retire from a close distance super attack
;So he won't be too cheap (I've managed to get 350 HP of Damage with Punch Smash
;and then an aereal rave kick, so)
[Statedef 4895]
type = A
movetype = I
physics = N
ctrl = 0
anim = 46
sprpriority = 2
velset = -7.1,-4

[State 4895, Gravity]
type = Gravity
trigger1 = 1

[State 4895, Land]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= 0
value = 52
ctrl = 0

;Newspaper Home-Run Beatdown
[Statedef 4111]
type = S
movetype = A
physics = N
anim = 4111
ctrl = 0
velset = 6,0

[State 4111, Friction]
type = VelMul
trigger1 = 1
x = .8895303

[State 4111, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4111, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 4111, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0

[State 4111, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
paladd = 0,128,0
palmul = 0, 128, 0
trans = add
time = 2

[State 4111, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(31) < 0
time = 2

[State 4111, Fail Whoosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1,5
channel = -1

[State 4111, Grab]
type = HitDef
trigger1 = Time = 0
attr = S, HT
guardflag = MA
hitflag = MA-
priority = 2,Miss
sparkno = -1
sparkxy = -5,-30
guard.sparkno = S7911
hitsound = S800,0
guardsound = s6,0
numhits = 0
pausetime = 0,0
guard.pausetime = 10,10
p1stateno = 4112
p2stateno = 4113
down.bounce = 1
guard.dist = 999
hitonce = 1
p2facing = 1
fall = 1
kill = 0
ID = 4111

[State 4111, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;If We have a target
[Statedef 4112]
type = S
movetype = I
physics = N
anim = 4112
ctrl = 0
velset = 0,0
sprpriority = 2

[State 4112, Final Damage Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = F7,2

[State 4112, Damage Sounds]
type = PlaySnd
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0
value = S5,2

[State 4112, Final Damage Sound]
type = PlaySnd
trigger1 = AnimElemTime(151) = 0
value = S5,9

[State 4112, Combo]
type = HitAdd
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0 || AnimElemTime(151) = 0
value = 1

[State 4112, Player Push Is Off]
type = PlayerPush
trigger1 = 1
value = 0

[State 2502, Helper]
type = Helper
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
postype = p1
pos = 11,0
ownpal = 1
supermovetime = 9999

[State 4112, HitSparks A]
type = Null;Explod
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0
anim = 7930+random%8
ID = 4112
pos = 11,0
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 4112, How Much or How less...]
type = TargetLifeAdd
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0
value = -5 ;105 HP of Damage to X!
ID = 4111
kill = 0
absolute = 0

[State 4112, Helper]
type = Helper
trigger1 = AnimElemTime(151) = 0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
postype = p1
pos = 32,-56
ownpal = 1
supermovetime = 9999

[State 4112, HitSparks B]
type = Null;Explod
trigger1 = AnimElemTime(151) = 0
anim = 7930+random%8
ID = 4112
pos = 32,-56
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 4112, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0 || AnimElemTime(151) = 0
time = 27
freq = 196
ampl = -5

[State 4112, ...depends on the enemy's DEF]
type = TargetLifeAdd
trigger1 = AnimElemTime(151) = 0
value = -175 ;280 HP of Damage to X!
ID = 4111
kill = 1
absolute = 0

[State 4112, Bound 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger2 = AnimElemTime(144) = 0
ID = 4111
pos = 33,-84

[State 4112, Bound 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(143) >= 0 && AnimElemTime(144) < 0
ID = 4111
pos = 35,-46

[State 4112, Bound 3]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(142) < 0
ID = 4111
pos = 16,0

[State 4112, Throw]
type = TargetState
trigger1 = AnimElemTime(144) = 0
ID = 4111
value = 4114

[State 4112, and SMAAASHHH!!!]
type = TargetState
trigger1 = AnimElemTime(151) = 0
ID = 4111
value = 4115

[State 4112, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895 ;Big Jump
ctrl = 0

;Get Hit - Lie
[Statedef 4113]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 4113, Custom Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 4113

[State 4113, Player Push Is Off]
type = PlayerPush
trigger1 = 1
value = 0

;Get Hit - Thrown
[Statedef 4114]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 4114, Thrown Upwards]
type = Velset
trigger1 = Time = 0
x = 0
y = -3 ;Must Take 24 Ticks to fall adequately

[State 4114, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 4114, Don't Screw the Attack!]
type = PlayerPush
trigger1 = 1
value = 0

;Get Hit - Home-Run!!!
[Statedef 4115]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 5050

[State 4115, 5061 Exists]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = selfanimexist(5061)
value = 5061

[State 4115, Thrown Upwards]
type = Velset
trigger1 = Time = 0
x = -4
y = -10

[State 4115, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 4115, Don't Screw the Attack!]
type = PlayerPush
trigger1 = 1
value = 0

[State 4115, Security]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= -15
value = 5050
ctrl = 0

;No Music Helper
[Statedef 4119]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 11111

[State 4119, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 4119, DestroySelf]
type = DestroySelf
trigger1 = stateno != [4120,4123]
trigger1 = !Win
ignorehitpause = 1

;Hokuto "Hyakuretsu" Dan
[Statedef 4120]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 4120

[State 4120, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4120, Not Hit]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 1

[State 4120, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 4120, Portrait]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Level 3/4 Portrait"
ID = 7501
stateno = 7501
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4120, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -4000
darken = 0

[State 4120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NP ,SP, NT, ST

[State 4120, Set Reverse]
type = ReversalDef
trigger1 = Time = 1
reversal.attr = SCA,NA,SA,HA
sparkno = S7930+random%8
hitsound = S96000,2
pausetime = 60, 200
p1stateno = 4121

[State 4120, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4121]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 4121

[state 4121, GRRRR]
type = PlaySnd
trigger1 = Time = 0
value = S96000, 5
volume = 160

[State 4121, Pause]
type = Pause
trigger1 = Time = 0
movetime = 60
time = 60

[State 4121, Background]
type = BGPalFX
trigger1 = Time = 0
time = 90
add = 0,255,0
mul = 0,50,0
sinadd = 0,0,0,1
invertall = 1
color = 256

[State 4121, Push is off]
type = PlayerPush
trigger1 = 1
value = 1

[State 4121, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4121, Fail Whoosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1,5
channel = -1

[State 4123, WHOOACHA!!!]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S96000,8
channel = 0

[State 4121, Grab]
type = HitDef
trigger1 = Time = 0
attr = S, HT
guardflag =
pausetime = 30,30
hitflag = MAFD
priority = 7,Miss
sparkno = S7930+random%8
sparkxy = -8,-40
hitsound = S5,9
numhits = 0
p1stateno = 4122
p2stateno = 4126
down.bounce = 1
guard.dist = 0
hitonce = 1
p2facing = 1
fall = 1
kill = 0
ID = 4121

[State 4121, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4122]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 4122

[state 4122, ATATATATATATATATA...!!]
type = PlaySnd
trigger1 = Time = 0
trigger2 = var(20) = 50 && Anim = 4122
value = S96000, 6
volume = 160
channel = 0

[State 4122, HUGE Portrait]
type = Explod
trigger1 = Time = 0
anim = 13020
ID = 4124
pos = -40,240
postype = back
removetime = -1
facing = 1
bindtime = -1
scale = 1.32,1.32
supermovetime = 9999999
pausemovetime = 9999999
sprpriority = 1
ownpal = 1
removeongethit = 1

[State 4122, Hokuto No Fist]
type = Explod
trigger1 = Time % 4 = 0
anim = 4124+(random%2)
ID = 4124
pos = -60,20
postype = back
facing = 1
vfacing = ifelse(random<500,1,-1)
bindtime = 1
vel = 17,0
accel = 0,ifelse(random<500,0.125,-0.125)
random = 0,280
removetime = 20
supermovetime = 9999999
pausemovetime = 9999999
scale = 3,3
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 4122, No Music]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "No Music"
ID = 4122
stateno = 4119
pos = -59,-59
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999999
pausemovetime = 9999999

[State 4122, No Scape]
type = TargetBind
trigger1 = 1
id = 4121
pos = 36,0

[State 4122, Push is off]
type = PlayerPush
trigger1 = 1
value = 0

[State 4122, Punch Counter Reset!]
type = VarSet
trigger1 = Time = 0
var(20) = 0

[State 4122, Super B]
type = AfterImage
trigger1 = Time = 0 && !Var(27)
time = -1
framegap = 1
timegap = 2
length = 20
trans = add

[State 4122, Destroy AfterImages]
type = AfterImageTime
trigger1 = var(20) >= 98
time = 0

[State 4122, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze
flag3 = noBG

[State 4122, No ForeGround]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 4122, Earthquake]
type = EnvShake
trigger1 = Time = 0
time = 433
freq = 200
ampl = 3

[State 4122, Earthquake2]
type = EnvShake
trigger1 = var(20) = 50 && Anim = 4122
time = 200
freq = 200
ampl = 5

[State 4122, Music]
type = PlaySnd
trigger1 = time = 0
trigger1 = random <=1000 ;3/10 Chance of Saying
value = S96000,0+random%2
channel = 2
volume = 365
abspan = 0

[State 4122, Hits]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
value = -2 ;Total from this far (300 HP)
ID = 4121
kill = 0
absolute = 0

[State 4122, One Point per every punch!]
type = VarAdd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
var(20) = 1

[State 4122, Damage Sounds]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
value = S5,4
channel = 3+random%12

[State 4122, Switch to Kick]
type = ChangeAnim
trigger1 = var(20) >= 50 && (Anim = 4122 && AnimTime = 0)
value = 4124

[State 4122, Hyper Combo]
type = HitAdd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
value = 1

[State 4122, Helper]
type = Helper
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
postype = p1
pos = 36,-47
ownpal = 1
supermovetime = 9999

[State 4122, HitSparks A]
type = Null;Explod
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
anim = 7930+random%8
ID = 4122
pos = 36,-47
facing = 1
random = 0,15
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 4122, 99 Hits]
type = TargetState
trigger1 = var(20) >= 99
value = 4127
ID = 4121

[State 4122, RemoveEVERYPunch]
type = RemoveExplod
trigger1 = var(20) >= 99
id = 4124

[State 4122, The Final ASS Whooping!]
type = ChangeState
trigger1 = var(20) >= 99
value = 4123
ctrl = 0

[Statedef 4123]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0
anim = 4123

[State 4123, WinPose Required]
type = VarSet
trigger1 = Win
var(21) = 1

[State 4123, WinPose Required]
type = VarSet
trigger1 = !Win
var(21) = 0

[State 4122, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 155
flag = timerfreeze
flag2 = noBG
flag3 = noFG

[State 4122, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 156
flag = nomusic

[State 4123, WHOOACHA!!!]
type = PlaySnd
trigger1 = Time = 0
value = S96000,7
channel = 0

[State 4123, Announcer]
type = PlaySnd
trigger1 = Time = 0
value = S96000,3
channel = -1

[State 4123, Pause]
type = Pause
trigger1 = time = 0
time = 155
movetime = 155

[State 4123, Ass Whooping]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 254,254
hitflag = MAFD+
animtype = Up
guardflag =
getpower = 0,0
priority = 7,Hit
pausetime = 0,40
sparkno = s7930+random%8
guard.sparkno = s7911
guard.dist = 0
fall = 1
fall.recover = 0
fall.recovertime = 986451
yaccel = .46
sparkxy = -5,-54
hitsound   = s5,9
guardsound = s6,0
ground.type = High
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.slidetime = 6
ground.hittime  = 26
ground.velocity = -6.23,-9
air.velocity = -6.23,-9
chainID = 4121

[State 4123, Music Off]
type = StopSnd
trigger1 = AnimTime = 0 && !Win
channel = 2

[State 4123, Fin/End]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

[Statedef 4126]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[State 4126, Push is off]
type = PlayerPush
trigger1 = 1
value = 0

[State 4126, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 4126

[Statedef 4127]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[State 4127, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 4127

[State 4127, Push is off]
type = PlayerPush
trigger1 = 1
value = 0

[State 4127, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NA, SA, AP, AT

[Statedef 2500]
type = S
movetype = A
physics = N
ctrl = 0
velset = 7, 0
anim = 2500
poweradd = -1000

[State 2500, Friction]
type = VelMul
trigger1 = 1
x = .8895303

[State 2500, Show Time Counter]
type = VarSet
trigger1 = Time = 0
var(25) = 0

[State 2500, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 0,255,0
timegap = 2
framegap = 3
trans = add

[State 2500, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 2500, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 30, 1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10, 15
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -8, -27
hitsound = s5, 6
guardsound = s6, 0
ground.type = High
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -1.5
airguard.velocity = -1,0
air.type = Low
air.velocity = -1.4,0
air.hittime = 12

[State 2500, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "a"
trigger1 = AniMElemTime(3) >= 4
value = 2501
ctrl = 0

[State 2500, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2501]
type = S
movetype = A
physics = N
ctrl = 0
velset = 7, 0
anim = 2501

[State 2501, Friction]
type = VelMul
trigger1 = 1
x = .8895303

[State 2501, Show Time Counter]
type = VarAdd
trigger1 = Time = 0
var(25) = 1

[State 2501, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 0,255,0
timegap = 2
framegap = 3
trans = add

[State 2501, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 2501, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 20
getpower = 0, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10, 15
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -8, -57
hitsound = s5, 6
guardsound = s6, 0
ground.type = Low
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -1.5
airguard.velocity = -1,0
air.type = Low
air.velocity = -1.4,0
air.hittime = 12

[State 2501, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "b"
trigger1 = var(25) = 1 || var(25) = 4
trigger1 = AniMElemTime(3) >= 4
value = 2502
ctrl = 0

[State 2501, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "a"
trigger1 = var(25) = 3
trigger1 = AniMElemTime(3) >= 4
value = 2501
ctrl = 0

[State 2501, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2502]
type = S
movetype = A
physics = N
ctrl = 0
velset = 7, 0
anim = 2502

[State 2502, Friction]
type = VelMul
trigger1 = 1
x = .8895303

[State 2502, Show Time Counter]
type = VarAdd
trigger1 = Time = 0
var(25) = 1

[State 2502, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 0,255,0
timegap = 2
framegap = 3
trans = add

[State 2502, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 2502, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 30
animtype = Light
getpower = 0, 0
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10, 15
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -5, -85
hitsound = s5, 9
guardsound = s6, 0
ground.type = Low
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -1.5
airguard.velocity = -1,0
air.type = Low
air.velocity = -1.4,0
air.hittime = 12

[State 2502, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "a"
trigger1 = AniMElemTime(5) >= 4 && AnimElemTime(7) < 0
trigger1 = var(25) = 2
value = 2501
ctrl = 0

[State 2502, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "c"
trigger1 = var(25) = 5
trigger1 = AniMElemTime(5) >= 4 && AnimElemTime(7) < 0
value = 2503
ctrl = 0

[State 2502, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2503]
type = S
movetype = A
physics = N
ctrl = 0
velset = 7.85, 0
anim = 2503

[State 2503, Friction]
type = VelMul
trigger1 = 1
x = .85

[State 2503, Show Time Counter]
type = VarAdd
trigger1 = Time = 0
var(25) = 1

[State 2503, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 0,255,0
timegap = 2
framegap = 3
trans = add

[State 2503, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 2503, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 75
getpower = 0, 0
animtype = Heavy
fall = 1
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 15, 15
sparkno = s7930+random%8
guard.sparkno = s7911
p2stateno = 2504
p2facing = 1
sparkxy = -5, -45
hitsound = s5, 9
guardsound = s6, 0
ground.type = Low
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -8, 0
airguard.velocity = -2,0
air.type = Low
air.velocity = -8,0
air.hittime = 12

[State 2503, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

[Statedef 2504]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 2504, Shaking Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 2504

[State 2504, Player Push Off]
type = PlayerPush
trigger1 = 1
value = 0

[State 2504, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 2505

[Statedef 2505]
type = A
movetype = H
physics = N
ctrl = 0

[State 2505, Shaking Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 2504

[State 2505, HitVelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 0

[State 2505, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 2505, Hit Wall]
type = ChangeState
trigger1 = FrontEdgeDist < 15
trigger2 = BackEdgeDist < 15
value = 2506
ctrl = 0

[State 2505, Player Push Off]
type = PlayerPush
trigger1 = 1
value = 0

[Statedef 2506]
type = A
movetype = H
physics = N
ctrl = 0

[State 2506, Player Push Off]
type = PlayerPush
trigger1 = 1
value = 0

[State 2506, Hit Wall Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0,0
removetime = -2
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 2506, Turn]
type = Turn
trigger1 = Time = 0

[State 2506, Shaking Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 2506

[State 2506, Velocity]
type = VelSet
trigger1 = Time = 0
x = -2
y = -6

[State 2506, Add Velocity]
type = VelAdd
trigger1 = 1
y = .45

[State 2506, Hit Wall]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 20
value = 5050
ctrl = 0

; U. N. Gajardo Was Him? - Startup

[Statedef 3690]
type = S
movetype = I
physics =S
velset = 0,0
ctrl = 0
anim = 3690

[State 3690, Turn Scarlet In G-Major! LOL!]
type = PlaySnd
trigger1 = animElemTime(2) = 0
value = S3690,0
channel = 0

[State 3690, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 45

[State 3690, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3690, Super A]
type = SuperPause
trigger1 = Time = 0
time = 199
movetime = 199
anim = -1
sound = s7, 0
poweradd = -1000
darken = 0

[State 3690, IWillKillThem]
type = ChangeState
trigger1 = AnimTime = 0
value = 3691

[Statedef 3691]
type = S
movetype = A
physics =N
velset = 0,0
ctrl = 0
anim = 3691

[State 3691, Move It Fast]
type = VelSet
trigger1 = AnimElem = 5
x = 15

[State 3691, VelMul]
type = VelMul
trigger1 = Time > 34
x = .90

[State 3691, Get It?]
type = HitDef
trigger1 = Time = 0
attr = S, HT
hitflag = M-
getpower  = 0
priority  = 1, Miss
p1stateno = 3692
p2stateno = 3695
fall.envshake.time = 35
fall.envshake.freq = 350
fall.envshake.ampl = 8
fall.envshake.phase = 140
id = 3691
guardflag = MA
sparkno = -1
guard.sparkno = S7911
sparkxy = -5,-45
hitsound = S800,0
guard.hitsound = S6,0
hitonce = 1
numhits = 0
fall = 1

[State 3691, Fail]
type = ChangeState
trigger1 = Time >= 35
value = 5070
ctrl = 0

[Statedef 3692]
type = S
movetype = A
physics =N
velset = 0,0
ctrl = 0
anim = 3692

[State 3692, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
statetype = A

[State 3692, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) < 0
id = 3691
pos = 50,0

[State 3692, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0
value = -4
ID = 3691
kill = 0

[State 3692, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(3) = 0
value = 1

[State 3692, PlaySnd]
type = PlaySnd
trigger1 = animelemTime(3) = 0
value = S5,9
abspan = 0
channel = -1

[State 3692, HitSpark]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 7930+random%8
ID = 4112
random = 20, 0
pos = -10,-59
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 3692, Vel Set]
type = VelSet
trigger1 = AnimElemTime(5) = 0
y = -10

[State 3692, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3692, ChangeState]
type = ChangeState
trigger1 = ScreenPos Y <= -100
value = 3693
ctrl = 0

[Statedef 3693]
type = A
movetype = A
physics =N
velset = 0,10
ctrl = 0

[State 3693, Offset]
type = PosAdd
trigger1 = Time = 0
x = -160

[State 3693, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 3693, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3694
ctrl = 0

[Statedef 3694]
type = S
movetype = A
physics =N
velset = 0,0
ctrl = 0
anim = 3693

[State 3694, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 3696
ID = 3691

[State 3694, On The Right Place]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3694, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 3694, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 45

[State 3694, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3694, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
movetime = 35
anim = -1
sound = s7, 0
poweradd = -1000 ;The Final Thousand
darken = 0

[State 3694, G-Major]
type = PlaySnd
trigger1 = time = 40
value = S3690,1
channel = 0

[State 3694, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(5) = 0 || AnimElemTime(7) = 0 || AnimElemTime(9) = 0
trigger2 = AnimElemTime(11) = 0 || AnimElemTime(13) = 0 || AnimElemTime(15) = 0 || AnimElemTime(17) = 0
trigger3 = AnimElemTime(19) = 0 || AnimElemTime(21) = 0 || AnimElemTime(23) = 0 || AnimElemTime(25) = 0
trigger4 = AnimElemTime(27) = 0 || AnimElemTime(29) = 0 || AnimElemTime(31) = 0 || AnimElemTime(33) = 0
trigger5 = AnimElemTime(35) = 0 || AnimElemTime(37) = 0 || AnimElemTime(39) = 0 || AnimElemTime(41) = 0
trigger6 = AnimElemTime(43) = 0 || AnimElemTime(45) = 0 || AnimElemTime(47) = 0 || AnimElemTime(49) = 0
trigger7 = AnimElemTime(51) = 0 || AnimElemTime(53) = 0 || AnimElemTime(55) = 0 || AnimElemTime(57) = 0
trigger8 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0 || AnimElemTime(63) = 0 || AnimElemTime(65) = 0
trigger9 = AnimElemTime(67) = 0 || AnimElemTime(69) = 0 || AnimElemTime(71) = 0 || AnimElemTime(73) = 0
trigger10 = AnimElemTime(75) = 0 || AnimElemTime(77) = 0 || AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger11 = AnimElemTime(83) = 0 || AnimElemTime(85) = 0 || AnimElemTime(87) = 0 || AnimElemTime(89) = 0
trigger12 = AnimElemTime(91) = 0 || AnimElemTime(93) = 0 || AnimElemTime(95) = 0 || AnimElemTime(97) = 0
trigger13 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0 || AnimElemTime(103) = 0 || AnimElemTime(105) = 0
trigger14 = AnimElemTime(107) = 0 || AnimElemTime(109) = 0 || AnimElemTime(111) = 0 || AnimElemTime(113) = 0
trigger15 = AnimElemTime(115) = 0 || AnimElemTime(117) = 0 || AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger16 = AnimElemTime(123) = 0 || AnimElemTime(125) = 0
value = -2 ;124 HP
ID = 3691
kill = 0

[State 3694, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(126) = 0
value = -125
ID = 3691
kill = 1

[State 3694, TargetState]
type = TargetState
trigger1 = AnimElemTime(126) = 1
value = 3697
ID = 3691

[State 3694, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(5) = 0 || AnimElemTime(7) = 0 || AnimElemTime(9) = 0
trigger2 = AnimElemTime(11) = 0 || AnimElemTime(13) = 0 || AnimElemTime(15) = 0 || AnimElemTime(17) = 0
trigger3 = AnimElemTime(19) = 0 || AnimElemTime(21) = 0 || AnimElemTime(23) = 0 || AnimElemTime(25) = 0
trigger4 = AnimElemTime(27) = 0 || AnimElemTime(29) = 0 || AnimElemTime(31) = 0 || AnimElemTime(33) = 0
trigger5 = AnimElemTime(35) = 0 || AnimElemTime(37) = 0 || AnimElemTime(39) = 0 || AnimElemTime(41) = 0
trigger6 = AnimElemTime(43) = 0 || AnimElemTime(45) = 0 || AnimElemTime(47) = 0 || AnimElemTime(49) = 0
trigger7 = AnimElemTime(51) = 0 || AnimElemTime(53) = 0 || AnimElemTime(55) = 0 || AnimElemTime(57) = 0
trigger8 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0 || AnimElemTime(63) = 0 || AnimElemTime(65) = 0
trigger9 = AnimElemTime(67) = 0 || AnimElemTime(69) = 0 || AnimElemTime(71) = 0 || AnimElemTime(73) = 0
trigger10 = AnimElemTime(75) = 0 || AnimElemTime(77) = 0 || AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger11 = AnimElemTime(83) = 0 || AnimElemTime(85) = 0 || AnimElemTime(87) = 0 || AnimElemTime(89) = 0
trigger12 = AnimElemTime(91) = 0 || AnimElemTime(93) = 0 || AnimElemTime(95) = 0 || AnimElemTime(97) = 0
trigger13 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0 || AnimElemTime(103) = 0 || AnimElemTime(105) = 0
trigger14 = AnimElemTime(107) = 0 || AnimElemTime(109) = 0 || AnimElemTime(111) = 0 || AnimElemTime(113) = 0
trigger15 = AnimElemTime(115) = 0 || AnimElemTime(117) = 0 || AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger16 = AnimElemTime(123) = 0 || AnimElemTime(125) = 0 || AnimElemTime(126) = 0
value = 16

[State 3694, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(5) = 0 || AnimElemTime(7) = 0 || AnimElemTime(9) = 0
trigger2 = AnimElemTime(11) = 0 || AnimElemTime(13) = 0 || AnimElemTime(15) = 0 || AnimElemTime(17) = 0
trigger3 = AnimElemTime(19) = 0 || AnimElemTime(21) = 0 || AnimElemTime(23) = 0 || AnimElemTime(25) = 0
trigger4 = AnimElemTime(27) = 0 || AnimElemTime(29) = 0 || AnimElemTime(31) = 0 || AnimElemTime(33) = 0
trigger5 = AnimElemTime(35) = 0 || AnimElemTime(37) = 0 || AnimElemTime(39) = 0 || AnimElemTime(41) = 0
trigger6 = AnimElemTime(43) = 0 || AnimElemTime(45) = 0 || AnimElemTime(47) = 0 || AnimElemTime(49) = 0
trigger7 = AnimElemTime(51) = 0 || AnimElemTime(53) = 0 || AnimElemTime(55) = 0 || AnimElemTime(57) = 0
trigger8 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0 || AnimElemTime(63) = 0 || AnimElemTime(65) = 0
trigger9 = AnimElemTime(67) = 0 || AnimElemTime(69) = 0 || AnimElemTime(71) = 0 || AnimElemTime(73) = 0
trigger10 = AnimElemTime(75) = 0 || AnimElemTime(77) = 0 || AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger11 = AnimElemTime(83) = 0 || AnimElemTime(85) = 0 || AnimElemTime(87) = 0 || AnimElemTime(89) = 0
trigger12 = AnimElemTime(91) = 0 || AnimElemTime(93) = 0 || AnimElemTime(95) = 0 || AnimElemTime(97) = 0
trigger13 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0 || AnimElemTime(103) = 0 || AnimElemTime(105) = 0
trigger14 = AnimElemTime(107) = 0 || AnimElemTime(109) = 0 || AnimElemTime(111) = 0 || AnimElemTime(113) = 0
trigger15 = AnimElemTime(115) = 0 || AnimElemTime(117) = 0 || AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger16 = AnimElemTime(123) = 0 || AnimElemTime(125) = 0
value = S5,2
abspan = 0
channel = -1

[State 3694, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(126) = 0
value = S5,9
abspan = 0
channel = -1

[State 3694, HitSparks]
type = Explod
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(5) = 0 || AnimElemTime(7) = 0 || AnimElemTime(9) = 0
trigger2 = AnimElemTime(11) = 0 || AnimElemTime(13) = 0 || AnimElemTime(15) = 0 || AnimElemTime(17) = 0
trigger3 = AnimElemTime(19) = 0 || AnimElemTime(21) = 0 || AnimElemTime(23) = 0 || AnimElemTime(25) = 0
trigger4 = AnimElemTime(27) = 0 || AnimElemTime(29) = 0 || AnimElemTime(31) = 0 || AnimElemTime(33) = 0
trigger5 = AnimElemTime(35) = 0 || AnimElemTime(37) = 0 || AnimElemTime(39) = 0 || AnimElemTime(41) = 0
trigger6 = AnimElemTime(43) = 0 || AnimElemTime(45) = 0 || AnimElemTime(47) = 0 || AnimElemTime(49) = 0
trigger7 = AnimElemTime(51) = 0 || AnimElemTime(53) = 0 || AnimElemTime(55) = 0 || AnimElemTime(57) = 0
trigger8 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0 || AnimElemTime(63) = 0 || AnimElemTime(65) = 0
trigger9 = AnimElemTime(67) = 0 || AnimElemTime(69) = 0 || AnimElemTime(71) = 0 || AnimElemTime(73) = 0
trigger10 = AnimElemTime(75) = 0 || AnimElemTime(77) = 0 || AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger11 = AnimElemTime(83) = 0 || AnimElemTime(85) = 0 || AnimElemTime(87) = 0 || AnimElemTime(89) = 0
trigger12 = AnimElemTime(91) = 0 || AnimElemTime(93) = 0 || AnimElemTime(95) = 0 || AnimElemTime(97) = 0
trigger13 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0 || AnimElemTime(103) = 0 || AnimElemTime(105) = 0
trigger14 = AnimElemTime(107) = 0 || AnimElemTime(109) = 0 || AnimElemTime(111) = 0 || AnimElemTime(113) = 0
trigger15 = AnimElemTime(115) = 0 || AnimElemTime(117) = 0 || AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger16 = AnimElemTime(123) = 0 || AnimElemTime(125) = 0 || AnimElemTime(126) = 0
anim = 7930+random%8
ID = 3694
random = 20, 70
pos = -10,-70
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 3694, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 5070
ctrl = 0

[Statedef 3695]
type = S
movetype = H
physics =N
velset = 0,0
ctrl = 0

[State 3695, Bug Fix/Aesthetic Fix]
type = NotHitBy
value = SCA
trigger1 = 1
ignorehitpause = 1

[State 3695, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 0
value = 5300

[Statedef 3696]
type = S
movetype = H
physics =N
velset = 0,0
ctrl = 0

[State 3696, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S11,0
volume = 255
channel = -1

[State 3696, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3696

[Statedef 3697]
type = A
movetype = H
physics =N
velset = 1,-40
ctrl = 0

[State 3697, VelAdd]
type = VelAdd
trigger1 = 1
y = .6

[State 3697, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S11,0
volume = 255
channel = -1

[State 3697, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 3697, SelfState]
type = SelfState
trigger1 = Pos Y >= 20 && Vel Y >= 0
value = 5100
ctrl = 0

[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 4003
ctrl = 0
sprpriority = 2

[State 3500, Gruñe!!!]
type = PlaySnd
trigger1 = Time = 0
value = S36500, 3
channel = 1

[State 3500, Bounce]
type = VarSet
trigger1 = time = 0
var(19) = 0

[State 3050, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 3500, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3500, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0

[State 3500, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 200,0,0
timegap = 2
framegap = 3
trans = add

[State 3500, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 3500, Hit]
type = HitDef
trigger1 = Time = 1
attr = S,HT
hitflag = MAF
guardflag = HA
getpower = 0,0
ID = 3500
animtype = DiagUp
priority = 2,Miss
damage = 0,2
pausetime = 15,0
guard.pausetime = 3, 20
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 10,-48
hitsound = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 99
ground.velocity = -0.5,-10.2
air.hittime = 20
yaccel = .3
air.velocity = -0.5,-10.01
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 20
down.bounce = 1
kill = 0
guard.kill = 0
fall.kill = 1
numhits = 1
envshake.time = 25
envshake.freq = 100
envshake.ampl = 4
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
p2stateno = 3501

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0
value = SCA
ignorehitpause = 1

[State 3500, TargetState]
type = TargetState
triggerall = numtarget(3500)
triggerall = (target(3500),time = 1) && (target(3500),stateno = 3501)
trigger1 = var(19) >= 4
value = 5682
ID = 3500

[State 3500, Bounce Counter Goes Up!]
type = VarAdd
triggerall = numtarget(3500)
trigger1 = (target(3500),time = 1) && (target(3500),stateno = 3501)
var(19) = 1

[State 3500, Mega Shot]
type = PlaySnd
triggerall = numtarget(3500)
trigger1 = (target(3500),time = 1) && (target(3500),stateno = 3501)
value = S11111,0

[State 3500, Phail]
type = ChangeState
trigger1 = AnimElemTime(5) >= 34 && !MoveHit
trigger2 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3501]
type = A
movetype = H
physics =N
velset = 9-(random%18),-20
ctrl = 0

[State 3501, LifeAdd]
type = LifeAdd
trigger1 = Time = 0
value = -54
kill = 1
absolute = 0

[State 3501, VelAdd]
type = VelAdd
trigger1 = 1
y = .75

[State 3501, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3501

[State 3501, Repeat]
type = ChangeState
trigger1 = Pos Y >= 40 && Vel Y >= 0
value = 3501
ctrl = 0

[State 3501, rotate]
type = AngleDraw
trigger1 = 1
value = -(atan(Vel Y*(Vel X**-1))*57.2957795)
ignorehitpause = 1

[Statedef 3800]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3800
sprpriority = 2

[State 3800, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 3800, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3800, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0

[State 3800, VelSet]
type = VelSet
trigger1 = Time = 1
x = 8
y = 0

[State 3800, Grab]
type = HitDef
trigger1 = Time = 0
attr = S, HT
guardflag = MA
hitflag = M-
priority = 1,Miss
sparkno = -1
guard.sparkno = S7911
sparkxy = -8,-40
hitsound = S800,0
guardsound = S6, 0
numhits = 0
p1stateno = 3801
p2stateno = 3810
down.bounce = 1
guard.dist = 45
hitonce = 1
p2facing = 1
fall = 1
kill = 0
ID = 3800

[State 3800, Jump away then]
type = ChangeState
trigger1 = Time >= 25
value = 4895
ctrl = 0

[Statedef 3801]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3801
sprpriority = 2

[State 3801, Bind P2]
type = TargetBind
trigger1 = 1
id = 3800
pos = 49,0

[State 3801, Change Everyone!]
type = TargetState
trigger1 = AnimTime = 0
value = 3811
id = 3800

[State 3801, Progress]
type = ChangeState
trigger1 = AnimTime = 0
value = 3802
ctrl = 0

[Statedef 3802]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3802
sprpriority = 2

[State 3802, Suck Counter]
type = VarSet
trigger1 = Time = 0
var(20) = 0

[State 3802, Bind P2 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
id = 3800
pos = 49,0

[State 3802, Bind P2 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
id = 3800
pos = 31,-43

[State 3802, Bind P2 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
id = 3800
pos = 41,-62

[State 3802, Bind P2 4]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
id = 3800
pos = 41,-76

;[State 3802, Too Much For You? P2]
;type = TargetState
;triggerall = AnimElemTime(6) >= 0
;trigger1 = life >= (lifemax/2)
;value = 3814
;ctrl = 0

;[State 3802, Too Much For You? Self]
;type = ChangeState
;triggerall = AnimElemTime(6) >= 0
;trigger1 = life >= (lifemax/2)
;value = 3804
;ctrl = 0

[State 3802, Suck]
type = TargetLifeAdd
trigger1 = AnimElemTime(5) = 0 || AnimElemTime(9) = 0 ||AnimElemTime(13) = 0
trigger2 = AnimElemTime(17) = 0 || AnimElemTime(21) = 0 ||AnimElemTime(25) = 0
trigger3 = AnimElemTime(29) = 0 || AnimElemTime(33) = 0 ||AnimElemTime(37) = 0
trigger4 = AnimElemTime(41) = 0
value = -14
ID = 3800
kill = 0
absolute = 0

[State 3802, Sucking Sound]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0 || AnimElemTime(9) = 0 ||AnimElemTime(13) = 0
trigger2 = AnimElemTime(17) = 0 || AnimElemTime(21) = 0 ||AnimElemTime(25) = 0
trigger3 = AnimElemTime(29) = 0 || AnimElemTime(33) = 0 ||AnimElemTime(37) = 0
trigger4 = AnimElemTime(41) = 0
value = S3800,0

[State 3802, Recieve]
type = LifeAdd
trigger1 = AnimElemTime(8) = 0 || AnimElemTime(12) = 0 ||AnimElemTime(16) = 0
trigger2 = AnimElemTime(20) = 0 || AnimElemTime(24) = 0 ||AnimElemTime(28) = 0
trigger3 = AnimElemTime(32) = 0 || AnimElemTime(36) = 0 ||AnimElemTime(40) = 0
trigger4 = AnimElemTime(44) = 0
value = 14
kill = 0
absolute = 1

[State 3802, Suck Counter goes up!]
type = VarAdd
trigger1 = AnimElemTime(8) = 0 || AnimElemTime(12) = 0 ||AnimElemTime(16) = 0
trigger2 = AnimElemTime(20) = 0 || AnimElemTime(24) = 0 ||AnimElemTime(28) = 0
trigger3 = AnimElemTime(32) = 0 || AnimElemTime(36) = 0 ||AnimElemTime(40) = 0
trigger4 = AnimElemTime(44) = 0
var(20) = 14

[State 3802, Blood!!]
type = Explod
trigger1 = AnimElemTime(5) = 0 || AnimElemTime(9) = 0 ||AnimElemTime(13) = 0
trigger2 = AnimElemTime(17) = 0 || AnimElemTime(21) = 0 ||AnimElemTime(25) = 0
trigger3 = AnimElemTime(29) = 0 || AnimElemTime(33) = 0 ||AnimElemTime(37) = 0
trigger4 = AnimElemTime(41) = 0
anim = F10
ID = 3802
pos = 41,-73
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3802, TargetState]
type = TargetState
trigger1 = AnimTime = 0
value = 3812
ID = 3800

[State 3802, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3803
ctrl = 0

[Statedef 3803]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3803
sprpriority = 2

[State 3803, Bind P2 4]
type = TargetBind
trigger1 = AnimElemTime(6) < 1
id = 3800
pos = 41,-76

[State 3803, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = S3800,1

[State 3803, Give]
type = LifeAdd
trigger1 = AnimElemTime(3) = 0
value = -140
kill = 1
absolute = 1

[State 3803, Recieve Impact]
type = TargetLifeAdd
trigger1 = AnimElemTime(6) = 0
value = -140
ID = 3800
kill = 1
absolute = 0

[State 3803, Blood!!]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = F12
ID = 4122
pos = 41,-73
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3803, HitSpark]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 7930+random%8
ID = 4122
pos = 41,-73
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3803, Done]
type = TargetState
trigger1 = AnimElemTime(6) = 1
value = 3813
ID = 3800

[State 3803, Jump away then]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

[Statedef 3804]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3804
sprpriority = 2

[State 3804, WHOA!!]
type = PlaySnd
trigger1 = Time = 0
value = S666,0

[State 3804, Pause]
type = Pause
trigger1 = Time = 0
time = 60
pausebg = 1

[State 3804, Bind P2 4]
type = TargetBind
trigger1 = AnimElemTime(6) < 2
id = 3800
pos = 41,-76

[State 3804, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = S3800,0

[State 3804, Give]
type = LifeAdd
trigger1 = AnimElemTime(3) = 0
value = -299-var(20)
kill = 0
absolute = 1

[State 3804, Recieve!! :D]
type = TargetLifeAdd
trigger1 = AnimElemTime(6) = 0
value = 300+var(20)
ID = 3800
kill = 0
absolute = 0

[State 3804, Give]
type = LifeAdd
trigger1 = AnimElemTime(6) = 0
value = -1
kill = 1
absolute = 1

[State 3804, D'oh! >_<]
type = ChangeState
trigger1 = AnimTime = 0
value = 4057
ctrl = 0

[Statedef 3810]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3810, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
trigger1 = !SelfAnimExist(66660)
value = 3810

[State 3810, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(66660)
value = 66660

[Statedef 3811]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3811, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
trigger1 = !SelfAnimExist(66661)
value = 3811

[State 3811, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(66661)
value = 66661

[Statedef 3812]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1

[State 3812, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
trigger1 = !SelfAnimExist(66662)
value = 3812

[State 3812, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(66662)
value = 66662

[Statedef 3813]
type = A
movetype = H
physics = N
ctrl = 0
velset = -8,-10
sprpriority = 0

[State 3813, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 3813, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3813

[State 3813, AngleDraw]
type = AngleDraw
trigger1 = 1
value = Time*9
ignorehitpause = 1

[State 3813, SelfState]
type = SelfState
trigger1 = Pos Y >= 20 && Vel Y > 0
value = 5100 ;HIT_BOUNCE

[Statedef 3814]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3814, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3813

[State 3814, SelfState]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5210 ;HIT_FALL_RECOVER
