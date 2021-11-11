;---------------------------------------------------------------------------
;Siythe
[Statedef 500]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 8.3,0
ctrl = 0
anim = 500
sprpriority = 2

[State 500, Friction]
type = VelMul
trigger1 = 1
x = 0.89950

[State 500, Whoosh!]
type = playsnd
trigger1 = Time = 6
value = S1, 5

[State 500, CutSound]
type = playsnd
trigger1 = AnimElem = 4
value = S500, 0

[State 500, Whoosh Explod]
type = Explod
trigger1 = AnimElemTime(3) = 2
anim = 501
ID = 501
pos = 0,0
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 500, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
pausetime = 8,8
hitflag = MAF
guardflag = MA
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -15,-50
damage = 92, 1
hitsound = S5, 7
guardsound = S6, 0
ground.velocity = -12, -4
air.velocity = -9, -2
ground.hittime = 19
ground.slidetime = 5
guard.dist = 100
fall = 1

[State 500, ChangeState]
type = ChangeState
value = 0
ctrl = 1
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Siythe (Air Version)
[Statedef 501]
type    = A
movetype= A
physics = N
juggle  = 5
velset = 8.5,1.1
ctrl = 0
anim = 500
sprpriority = 2

[State 501, Friction]
type = VelMul
trigger1 = 1
x = 0.9105

[State 501, Whoosh!]
type = playsnd
trigger1 = Time = 6
value = S1, 5

[State 501, CutSound]
type = playsnd
trigger1 = AnimElem = 4
value = S500, 0

[State 501, Whoosh Explod]
type = Explod
trigger1 = AnimElemTime(3) = 2
anim = 501
ID = 501
pos = 0,0
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 501, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 5, Hit
pausetime = 8,8
sparkno = S7920+random%8
sparkxy = -15,-50
hitsound = S5, 7
damage = 60, 0
guardsound = S6, 0
ground.velocity = -12, -4
air.velocity = -9, -2
ground.hittime = 19
ground.slidetime = 5
guard.dist = 100
guard.sparkno = s7911
fall = 1

[State 501, ChangeState]
type = ChangeState
value = 50
ctrl = 1
trigger1 = AnimTime = 0

[State 501, Land]
type = ChangeState
value = 52
ctrl = 0
trigger1 = Pos Y >= 0 && Vel Y > 0

;---------------------------------------------------------------------------
; Grab Kick

[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
anim = 801
ctrl = 0
sprpriority = 2

[State 1020, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 1020, 6]
type = HitDef
trigger1 = !MoveContact
attr = S, ST
hitflag = MA-
priority  = 2, Dodge
sparkno = -1
sparkxy = -10,-60
hitsound   = S800,0
guardsound = 6,0
fall = 0
p1stateno = 1021
p2stateno = 1025    ;Make p2 go to state 1025 on grab
p2facing = -1        ;Force to face away from p1
hitonce = 1

[State 1020, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hold and then Kick
[Statedef 1021]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1020
ctrl = 0
sprpriority = 2

[State 1021, Randomly Say Kick in the Ass]
type = null;PlaySnd
trigger1 = Time = 0 && Random <= 120
value = S191,0
channel = 0
freqmul = 1.16

[State 1021, Bind To Daniel's Hand]
type = TargetBind
trigger1 = AnimElemTime(4) < 0
pos = 37,-57

[State 1021, Bright Spark]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Super Cool Sparks"
ID = 8696
stateno = 8696
postype = p1
pos = 37,-57
ownpal = 1
supermovetime = 9999

[State 1021, HitSpark]
type = Null;Explod
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

[State 1021, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S5,6

[State 1021, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
value = -76
kill = 1
absolute = 0

[State 1021, Change To Falling State]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 1026

[State 1021, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; Grabbed.

[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = Time = 0
value = 1025

[State 1025, Un-Bind if Daniel gets hit]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050

;------------------
; Kicked. Flying through the air

[Statedef 1026]
type    = A
movetype= H
physics = N
sprpriority = 1

[State 1026, Changeanim]
type = ChangeAnim2
trigger1 = !time
value = 1026

[State 1026, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 1026, VelSet]
type = Velset
trigger1 = !time
x = 2
y = -8

[State 1026, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;---------------------------------------------------------------------------
; Grab Kick (Your TeamMate) EM

[Statedef 2030]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
anim = 801
poweradd = -500
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

[State 2030, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 2030, 6]
type = HitDef
trigger1 = !MoveContact
attr = S, ST
hitflag = MA-
affectteam = F
priority  = 2, Dodge
sparkno = -1
sparkxy = -10,-60
hitsound   = S800,0
guardsound = 6,0
fall = 0
p1stateno = 2031
p2stateno = 2025
p2facing = -1
hitonce = 1

[State 2030, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hold and then Kick
[Statedef 2031]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1020
ctrl = 0
sprpriority = 2

[State 2031, Randomly Say Kick in the Ass]
type = PlaySnd
trigger1 = Time = 0 && Random <= 120
value = S191,0
channel = 0
freqmul = 1.16

[State 2031, Bind To Daniel's Hand]
type = TargetBind
trigger1 = AnimElemTime(4) < 0
pos = 37,-57

[State 2031, HitSpark]
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

[State 2031, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S5,6

[State 2031, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
value = -40
kill = 1
absolute = 0

[State 2031, Change To Falling State]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 2026

[State 2031, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; Grabbed.

[Statedef 2025]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 2025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = Time = 0
value = 1025

[State 2025, Un-Bind if Daniel gets hit]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050

;------------------
; Kicked. Flying through the air, Ready To Deal Damage.

[Statedef 2026]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 1

[State 2026, Changeanim]
type = ChangeAnim2
trigger1 = !time
value = 2026

[State 2026, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 2026, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 100, 5
hitflag = MAF
guardflag = MA
pausetime = 15,15
sparkno = Const(data.sparkno)
guard.sparkno = 6
sparkxy = -5,-10
hitsound = 5, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.velocity = -6,-6
fall = 1
fall.recover = 0

[State 2026, VelSet]
type = Velset
trigger1 = !time
x = 4
y = -8

[State 2026, VelSet]
type = Velset
trigger1 = MoveContact
x = -(Vel X)
y = -4

[State 2026, ChangeState]
type = SelfState
trigger1 = MoveContact
value = 5050
ctrl = 0

[State 2026, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;---------------------------------------------------------------------------
; Kung Fu Knee
; CNS difficulty: medium
; Description: Like the Kung Fu Palm, this is a special attack. This attack
;     begins on the ground, launches KFM into the air, then ends when KFM
;     lands on the ground. To achieve this, we use three states. The first
;     has KFM starting on the ground (note that type = S in the Statedef).
;     The ChangeState controller brings KFM into the second state (state
;     1051) when his ground animation ends. The second state controls KFM's
;     movement into the air and back towards the ground. The last state
;     (state 1052) stops KFM from moving when he touches the ground, and
;     brings him back to his stand state (state 0) when the animation is
;     over. More details are given in comments before each of the following
;     states.
[Statedef 1050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 40
ctrl = 0
sprpriority = 2

[State 1050, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,5

[State 1050, 2]
type = null;PosAdd
trigger1 = AnimElem = 2
x = 15

[State 1050, 3]
type = PosAdd
trigger1 = AnimElem = 4
x = 20

[State 1050, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Medium
damage    = 80, 4
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = -10,-70
sparkno = s7920+random%8
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound   = s5,4
guardsound = s6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7
guard.velocity = -7
air.velocity = -3.5,-7
fall = 1
guard.sparkno = s7911

[State 1050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1051

;------------------
; Light Kung Fu Knee - jump
; Description: This state uses a velset parameter in the Statedef to make
;     KFM move upwards. A value of 2,-6 means 2 pixels/tick forwards, and
;     6 pixels/tick upwards. Since this is an aerial state, the type is set
;     to A in the Statedef.
;     Notice that physics = N (N for None) here. This means we are not using
;     the built-in aerial physics model (physics = A), so we have complete
;     control over what KFM does in this state. Since we do not have
;     physics = A to take care of gravity for us, we need to put in our own
;     controller for that. Controller 1051,1 does the work of pulling KFM
;     down towards the ground. Controller 1051,2 checks if KFM has reached
;     the ground, and changes to state 1052 if so.
;     In this state's Statedef, we will use the hitdefpersist parameter to
;     retain the HitDef information from the last state. If we did not have
;     hitdefpersist, the HitDef will be turned off between state changes.
[Statedef 1051]
type    = A
movetype= A
physics = N
velset = 2,-6
anim = 600
hitdefpersist = 1 ;Keep the HitDef from previous state active

[State 1051, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = .45

[State 1051, 2]
type = ChangeState
trigger1 = Command = "a" || Command = "b"
trigger1 = Vel y < -1
value = 1055

[State 1051, PosSet]
type = PosSet
trigger1 = vel y > 0
trigger1 = pos y >= 0
y = 0

[State 1051, 3] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;------------------
; Light Kung Fu Knee - land
; Description: This is KFM's landing state. There is a velset in the
;     Statedef to stop KFM from moving. Since KFM's y-position can be any
;     number greater than -10 upon entering this state (see the ChangeState
;     controller in State 1051), we need to reset it to 0, the ground
;     level. That is what controller 1052,1 is for.
[Statedef 1052]
type    = S
movetype= I
physics = S
anim = 1052
sprpriority = 1
velset = 0,0

[State 1052, 1] ;Reset y-position to ground level
type = PosSet
trigger1 = Time = 0
y = 0

[State 1052, 2] ;Play a sound for landing
type = PlaySnd
trigger1 = Time = 0
value = 40, 0

[State 1052, 3] ;Give KFM back control early
type = CtrlSet
trigger1 = AnimElem = 3, -1
value = 1

[State 1052, 4] ;Move KFM back a little
type = PosAdd
trigger1 = AnimElem = 4
x = -15

[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; Kung Fu Knee - kick
[Statedef 1055]
type    = A
movetype= A
physics = N
anim = 640

[State 1055, 1]
type = PlaySnd
trigger1 = Time = 0
value = 100,0
channel = 0

[State 1055, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0, 1

[State 1055, 3]
type = PosAdd
trigger1 = Time = 0
x = 10
y = -10

[State 1055, 4] ;Gravity
type = VelAdd
trigger1 = 1
y = .45

[State 1055, 5]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Med
damage    = 35 + (prevstateno = 1061)*5, 2
priority  = 4
guardflag = MA
pausetime = 12,12
sparkxy = 0,-90
sparkno = s7920+random%8
envshake.time = 15
envshake.freq = 90
envshake.ampl = -8
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -6
guard.velocity = -8
guard.ctrltime = 12
air.velocity = -4,-5
airguard.velocity = -4,-4.5
air.fall = 1
guard.sparkno = s7911

[State 1055, 6] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1056

;------------------
; Kung Fu Knee - land from kick
[Statedef 1056]
type    = S
movetype= I
physics = S
anim = 47
sprpriority = 1
velset = 0,0

[State 1056, 1] ;Reset y-position to ground level
type = PosSet
trigger1 = Time = 0
y = 0

[State 1056, 2] ;Play a sound for landing
type = PlaySnd
trigger1 = Time = 0
value = 40, 0

[State 1056, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strong Kung Fu Knee
[Statedef 1060]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 40
ctrl = 0
sprpriority = 2

[State 1060, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1060, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,5

[State 1060, 2]
type = PosAdd
trigger1 = AnimElem = 2
x = 6

[State 1060, 3]
type = PosAdd
trigger1 = AnimElem = 4
x = 21

[State 1060, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Medium
damage    = 90, 4
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = -10,-70
sparkno = s7920+random%8
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound   = s5,5
guardsound = s6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7.5
guard.velocity = -7
air.velocity = -3.5,-7.5
fall = 1
guard.sparkno = s7911

[State 1060, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1061

;------------------
; Strong Kung Fu Knee - jump
[Statedef 1061]
type    = A
movetype= A
physics = N
velset = 2.5,-7.5
anim = 600
hitdefpersist = 1 ;Keep the HitDef from previous state active

[State 1061, 1]
type = VelAdd
trigger1 = 1
y = .45

[State 1061, 2]
type = ChangeState
trigger1 = Command = "a" || Command = "b"
trigger1 = Vel y < -1
value = 1055

[State 1061, PosSet]
type = PosSet
trigger1 = vel y > 0
trigger1 = pos y >= 0
y = 0

[State 1061, 3]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fast Kung Fu Knee
; Description: This version of the Kung Fu Knee hits up to 3 times (including
;     the kick).
[Statedef 1070]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= -330
velset = 0,0
anim = 40
ctrl = 0
sprpriority = 2

[State 1070, Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 2

[State 1070, Afterimage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 1070, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 20
add = 32,16,0
sinadd = 64,32,5,3

[State 1070, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1070, 2]
type = PosAdd
trigger1 = AnimElem = 2
x = 6

[State 1070, 3]
type = PosAdd
trigger1 = AnimElem = 4
x = 21

[State 1070, 4]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Medium
getpower  = 0
damage    = 35, 3
priority  = 5
hitflag   = MA
guardflag = MA
pausetime = 8,7
sparkxy = -10,-70
hitsound   = s5,6
guardsound = s6,0
sparkno = s7920+random%8
envshake.time = 15
envshake.freq = 90
envshake.ampl = -8
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2,-6
guard.velocity = -7
air.velocity = -2,-6
fall = 1
fall.animtype = Med
fall.recovertime = 30
guard.sparkno = s7911

[State 1070, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1071

;------------------
; Fast Kung Fu Knee - jump
[Statedef 1071]
type    = A
movetype= A
physics = N
velset = 2.5,-9
anim = 600

[State 1071, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 18
add = 32,16,0
sinadd = 64,32,5,3

[State 1071, Afterimage]
type = AfterImageTime
trigger1 = Vel Y < 0
time = 2

[State 1071, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 1071, 2]
type = VelAdd
trigger1 = Vel Y >= -1
y = .2

[State 1071, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Medium
getpower  = 0
damage    = 68, 4
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = -10,-70
hitsound   = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3,-9.5
guard.velocity = -7
air.velocity = -3,-9.5
fall = 1
fall.recovertime = 30

[State 1071, 4]
type = ChangeState
trigger1 = Command = "a" || Command = "b"
trigger1 = Vel y < -1
trigger1 = Time > 0
value = 1075

[State 1071, 5]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;------------------
; Fast Kung Fu Knee - kick
[Statedef 1075]
type    = A
movetype= A
physics = N
anim = 640

[State 1075, Afterimage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 1075, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 20
add = 32,16,0
sinadd = 64,32,5,3

[State 1075, 1]
type = PlaySnd
trigger1 = Time = 0
value = 100,0
channel = 0

[State 1075, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0, 1

[State 1075, 3]
type = PosAdd
trigger1 = Time = 0
x = 10
y = -10

[State 1075, 4]
type = VelAdd
trigger1 = 1
y = .45

[State 1075, 5]
type = VelAdd
trigger1 = Vel Y >= -1
y = .2

[State 1075, 6]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Med
damage    = 42, 2
getpower  = 0
priority  = 4
guardflag = MA
pausetime = 12,12
sparkxy = 0,-90
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -6
guard.velocity = -6
air.velocity = -4,-6
airguard.velocity = -4,-4.5
air.fall = 1

[State 1075, 7]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Weak Projectile
[Statedef 65000]
type    = S
movetype = A
physics = S
juggle  = 4
anim = 250
ctrl = 0

[State 65000, CreateTheProj]
type = Projectile
trigger1 = AnimElemTime(5) = 0
ProjID = 66666
projanim = 251
projremove = 1
velocity = 3
projsprpriority = 4
offset = 52, -46
attr = S, SP
velocity = 5, 0
animtype  = Hard
damage    = 60
guardflag = MA
pausetime = 12,12
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -20,0
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound = s5,10
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -8
air.velocity = -2.2,-3.2

[State 65000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0 && random<500
value = 1880, 1+random%2
channel = 0

[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Medium Projectile
[Statedef 65001]
type    = S
movetype = A
physics = S
juggle  = 4
anim = 250
ctrl = 0

[State 65000, CreateTheProj]
type = Projectile
trigger1 = AnimElemTime(5) = 0
ProjID = 66666
projanim = 251
projremove = 1
velocity = 5
projsprpriority = 4
offset = 52, -46
attr = S, SP
velocity = 5, 0
animtype  = Hard
damage    = 60
guardflag = MA
pausetime = 12,12
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -20,0
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound = s5,10
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -8
air.velocity = -2.2,-3.2

[State 65000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0 && random<500
value = 1880, 1+random%2
channel = 0

[State 65000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = S1,6

[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Strong Projectile
[Statedef 65002]
type    = S
movetype = A
physics = S
juggle  = 4
anim = 250
ctrl = 0

[State 65000, CreateTheProj]
type = Projectile
trigger1 = AnimElemTime(5) = 0
ProjID = 66666
projanim = 251
projremove = 1
velocity = 7
projsprpriority = 4
offset = 52, -46
attr = S, SP
velocity = 7, 0
animtype  = Hard
damage    = 60
guardflag = MA
pausetime = 12,12
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -20,0
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound = s5,10
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -8
air.velocity = -2.2,-3.2

[State 65000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0 && random<500
value = 1880, 1+random%2
channel = 0

[State 65000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = S1,6

[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Projectile EX
[Statedef 65005]
type    = S
movetype = A
physics = S
juggle  = 4
poweradd = -500
anim = 255
ctrl = 0

[State 65002, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 22
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, CreateTheProj]
type = Projectile
trigger1 = AnimElemTime(5) = 0
ProjID = 251
projanim = 251
projremove = 1
velocity = 7
projsprpriority = 4
offset = 52, -46
attr = S, SP
velocity = 7, 0
animtype  = Hard
damage    = 20,1
guardflag = MA
pausetime = 3,12
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -20,0
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound = s5,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -8
air.velocity = -2.2,-3.2
projhits = 5
getpower = 0,0
afterimage.time = -1
afterimage.length = 10
afterimage.paladd = 50,50,0
afterimage.framegap = 2
afterimage.trans = add

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 22
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 65000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0 && random<500
value = 1880, 1+random%2
channel = 0

[State 65000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = S1,6

[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light Kung Fu Upper
; CNS difficulty: easy
; Description: This is a simple special attack that can hit twice. Notice
;     the use of the Width controller to keep opponents from getting too
;     close to KFM during his uppercut (press Ctrl-C, and look at the
;     yellow bar at KFM's feet during the move).
;     The second HitDef has some interesting parameters. fall.recovertime
;     is used to prevent the opponent (p2) from recovering immediately
;     after being hit (eg. press x+y with KFM to recover). This gives the
;     attacking KFM a chance to follow up with an extra attack, such as
;     a Kung Fu Knee. The yaccel parameter, set at 0.4, makes p2 fall at a
;     greater value of acceleration than the default, which is 0.35.
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1100, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(13) < 0
value = 5,0

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 2

[State 1100, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Med
damage    = 52, 4
priority  = 5
guardflag = MA
pausetime = 4,8
sparkxy = 0,-48
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -3
guard.velocity = -6
air.velocity = -2,-2
airguard.velocity = -4,-4.5
p2facing = 1
forcestand = 1         ;Force p2 into a standing state if hit

[State 1100, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Up
damage    = 55, 4
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-110
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1,-9.5
guard.velocity = -6
air.velocity = -1,-7.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1                   ;Make p2 fall down
fall.recovertime = 40      ;40 ticks before p2 can recover from fall
yaccel = .4                ;p2 will accelerate down at .4 pixels/sec^2 when falling

[State 1100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strong Kung Fu Upper
[Statedef 1110]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1110
ctrl = 0
sprpriority = 2

[State 1110, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(14) < 0
value = 5,0

[State 1110, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 2

[State 1110, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Med
damage    = 57, 4
priority  = 5
guardflag = MA
pausetime = 4,8
sparkxy = 0,-48
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -3
guard.velocity = -6
air.velocity = -2,-2
airguard.velocity = -4,-4.5
p2facing = 1
forcestand = 1

[State 1110, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Up
damage    = 60, 4
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-110
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1,-10.5
guard.velocity = -6
air.velocity = -1,-8.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1
fall.recovertime = 50
yaccel = .4

[State 1110, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fast Kung Fu Upper
[Statedef 1120]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= -330
velset = 0,0
anim = 1120
ctrl = 0
sprpriority = 2

[State 1120, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(14) < 0
value = 5,0

[State 1120, Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 2

[State 1120, Afterimage]
type = AfterImageTime
trigger1 = AnimTime < -2
time = 2

[State 1120, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 20
add = 32,16,0
sinadd = 64,32,5,3

[State 1120, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 2

[State 1120, 2]
type = HitDef
trigger1 = Time = 0
trigger2 = AnimElem = 4
attr = S, SA
animtype  = Med
damage    = 30, 4
getpower  = 0
priority  = 5
guardflag = MA
pausetime = 6,10
sparkxy = 0, ifelse(Time = 0, -48, -55)
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 21
ground.velocity = -3
guard.velocity = -6
air.velocity = -2,-2
airguard.velocity = -4,-4.5
p2facing = 1
forcestand = 1

[State 1120, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Up
damage    = 68, 4
getpower  = 0
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-110
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 21
ground.velocity = -1.2,-11
guard.velocity = -6
air.velocity = -1.2,-9
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1
fall.recovertime = 60
yaccel = .4

[State 1120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light Kung Fu Blow
; CNS difficulty: easy
; Notes: This uses the EnvShake controller to shake the screen. It makes the
;        move look stronger.
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 3

[State 1200, Width 1]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = 10,0

[State 1200, Width 2]
type = Width
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) < 0
value = 20,0

[State 1200, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 6
time = 4     ;Time to shake screen
ampl = 2     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 1200, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 100, 6
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-65
hitsound   = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 18
ground.velocity = -10
ground.cornerpush.veloff = -12 ;To push far away when p2 is in corner
guard.velocity = -7
air.velocity = -3.5,-4.5
airguard.velocity = -3.5,-4.5

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strong Kung Fu Blow
; CNS difficulty: easy
[Statedef 1210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1210
ctrl = 0
sprpriority = 2

[State 1210, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 3

[State 1210, Width 1]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = 10,0

[State 1210, Width 2]
type = Width
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) < 0
value = 20,0

[State 1210, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 6
time = 8
ampl = 2
freq = 170   ;A frequency of less than 180 causes a dampening effect

[State 1210, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 125, 9
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-65
hitsound   = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 20
ground.velocity = -10
ground.cornerpush.veloff = -15 ;To push far away when p2 is in corner
guard.velocity = -8
air.velocity = -4,-4.5
airguard.velocity = -4,-4.5

[State 1210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fast Kung Fu Blow
; CNS difficulty: easy
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= -330
velset = 0,0
anim = 1220
ctrl = 0
sprpriority = 2

[State 1220, Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 2

[State 1220, Afterimage]
type = AfterImageTime
trigger1 = AnimTime < -2
time = 2

[State 1220, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 20
add = 32,16,0
sinadd = 64,32,5,3

[State 1220, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 3

[State 1220, Width 1]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = 10,0

[State 1220, Width 2]
type = Width
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) < 0
value = 20,0

[State 1220, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 6
time = 8
ampl = 3
freq = 170

[State 1220, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 125, 9
getpower  = 0
priority  = 5
guardflag = MA
pausetime = 15,15
sparkxy = 0,-65
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 30
ground.velocity = -15
ground.cornerpush.veloff = -20 ;To push far away when p2 is in corner
guard.velocity = -9
air.velocity = -5,-5
airguard.velocity = -5,-5
air.fall = 1
fall.animtype = Hard           ;Show "hard" animtype when hit for a fall
yaccel = .4                    ;Fall faster

[State 1220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Cherry Summon 1, Shopping bag
[Statedef 1500]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 7888 ;Summon Anim
ctrl = 0
sprpriority = 2

[State 1500, Summon]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Cherry"
ID = 14000
stateno = 14000
postype = back
pos = -40,0
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 50

[State 1500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Cherry Summon 2, Aereal Rave Kick?
[Statedef 1501]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 7888 ;Summon Anim
ctrl = 0
sprpriority = 2

[State 1501, Summon 2]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Cherry"
ID = 14001
stateno = 14000
postype = back
pos = -40,0
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 50

[State 1501, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Violet Summon
[Statedef 1550]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 7888 ;Summon Anim
ctrl = 0
sprpriority = 2

[State 1550, Summon]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Violet"
ID = 17652
stateno = 17652
postype = back
pos = -40,(enemynear,pos Y)-60
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 20
pausemovetime = 50

[State 1550, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Roll
[StateDef 1362]
type = S
movetype = I
physics = N
velset = 5.5,0
ctrl = 0
anim = 1362
;poweradd = -500
sprpriority = 0

[State 1362, Invulnerable, I guess]
type = NotHITBY
trigger1 = 1
ignorehitpause = 1
value = SCA

[State 1362, Except for this]
type = HITBY
trigger1 = 1
ignorehitpause = 1
value = SC, ST, HT

[State 1362, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 5
timegap = 1
framegap = 2
trans = add

[State 1362, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 1362, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1362, end]
type = ChangeState
trigger1 = Time >= 30
value = 12
ctrl = 1

[StateDef 1363]
type = S
movetype = I
physics = N
velset = -8,0
ctrl = 0
anim = 1363
poweradd = -500
sprpriority = 0

[State 1363, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S7,1

[State 1363, Invulnerable]
type = NotHITBY
trigger1 = 1
ignorehitpause = 1
value = SCA

[State 1363, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 5
palcontrast = 73,120,20
paladd = 10,30,65
palmul = .65,.65,.75
timegap = 1
framegap = 2
trans = add

[State 1363, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 3

[State 1363, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1363, end]
type = ChangeState
trigger1 = Time >= 14
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Little Beatdown Attempt

[Statedef 900]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 900, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
p2sprpriority = 0
p1facing = 1
p2facing = 1
p1stateno = 901
p2stateno = 910
guard.dist = 0
id = 900
numhits = 0
fall = 1

[State 900, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 901]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 900
sprpriority = 2

[State 901, AlwaysBind]
type = TargetBind
trigger1 = 1
id = 900
pos = 45,0

[State 901, Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
value = -6
ID = 900
kill = 0

[State 901, Finish with the Ground Player]
type = ChangeState
trigger1 = AnimTime = 0
value = 810
ctrl = 0

[State 901, Finish with the Ground Target]
type = TargetState
trigger1 = AnimTime = 0
value = 820
ID = 900

[State 901, Combo]
type = HitAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
value = 1

[State 901, Whoosh]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
value = S1,5
channel = -1

[State 901, HitSound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
value = S5,6
channel = -1

[State 901, HitSparks]
type = Explod
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
anim = 7920+random%8
ID = 3694
pos = -5, -58
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[Statedef 910]
type    = A
movetype= H
physics = N
velset = 0,0

[State 910, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 910

[State 910, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050
