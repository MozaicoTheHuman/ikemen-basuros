;---------------------------------------------------------------------------
; Stand Light Punch
; CNS difficulty: easy
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 10                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 13, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10, -59
hitsound = s5, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 2
ground.hittime  = 5
ground.velocity = -4.8
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -1.4,-3
air.hittime = 12

[State 200, Helper]
type = Helper
triggerall = NumHelper <= 6
trigger1 = NumHelper(200) <= 2 || NumHelper(201) <= 2 || NumHelper(202) <= 2 || NumHelper(203) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 200 + (NumHelper(200) >= 3) + (NumHelper(201) >= 6) + (NumHelper(202) >= 9)
stateno = 201
pos = -10, -59
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 200, Voice]
type = PlaySnd
trigger1 = time = 0
trigger1 = random <=300 ;3/10 Chance of Saying
value = S0,1+random%2
channel = 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 2
value = s1,0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 201]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 4-random%9,-2.5+(random%10/2)
anim = 2351
sprpriority = 5

[State 201, rotate]
type = AngleDraw
trigger1 = 1
value = (atan(Vel Y*(Vel X**-1))*57.2957795)
ignorehitpause = 1

;To see if the rotation is accurate using a hit spark
[State 201, Debug]
type= NotHitBy
value = SCA
trigger1 = 1

[State 201, Fall]
type = VelAdd
trigger1 = 1
y = .5

[State 201, Bounces]
type = VarSet
trigger1 = Time = 0
v = 10
value = 4

[State 201, Vel Y]
type = VarAdd
trigger1 = Vel Y > 0 && Pos Y >= 0
v = 10
value = -1

[State 201, Vel Y]
type = VelSet
trigger1 = Vel Y > 0 && Pos Y >= 0
y = -(Vel Y*0.75)

[State 201, DestroySelf]
type = DestroySelf
trigger1 = var(10) < 0
trigger2 = ScreenPos X > 320 || ScreenPos X < 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Standing medium punch
; CNS difficulty: easy
; Note the width controller. It makes KFM's push box larger, so he doesn't
; stand so close to the opponent. Hit Ctrl-C and look at the red bar at his
; feet.
; The sprpriority for this state is at -1, instead of the usual 2 for
; attacks. This makes KFM appear behind the opponent initially.
; The SprPriority controller in [State 210, 4] brings KFM to the front when
; his arm has swung over.
; To stop KFM from pausing in his swing frame, there is a ChangeAnim in
; [State 210, 3] that detects if the hit has come in contact with the
; opponent during that frame, and switches to the next animation element
; (notice the elem=6 parameter). If you don't see what I mean, try commenting
; out that controller, then hit someone with this attack.
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 48
ctrl = 0
velset = 0,0
anim = 210
sprpriority = -1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
trigger1 = random <=300 ;3/10 Chance of Saying
value = S0,1+random%2
channel = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1,1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 26
guardflag = MA
pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-70
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 210, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(210) <= 2 || NumHelper(211) <= 2 || NumHelper(212) <= 2 || NumHelper(213) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 210 + (NumHelper(210) >= 3) + (NumHelper(211) >= 6) + (NumHelper(212) >= 9)
stateno = 201
pos = -10, -70
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 210, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Standing strong punch
; CNS difficulty: easy
; Note the width controller. It makes KFM's push box larger, so he doesn't
; stand so close to the opponent. Hit Ctrl-C and look at the red bar at his
; feet.
; The sprpriority for this state is at -1, instead of the usual 2 for
; attacks. This makes KFM appear behind the opponent initially.
; The SprPriority controller in [State 210, 4] brings KFM to the front when
; his arm has swung over.
; To stop KFM from pausing in his swing frame, there is a ChangeAnim in
; [State 210, 3] that detects if the hit has come in contact with the
; opponent during that frame, and switches to the next animation element
; (notice the elem=6 parameter). If you don't see what I mean, try commenting
; out that controller, then hit someone with this attack.
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 77
ctrl = 0
velset = 0,0
anim = 220
sprpriority = -1

[State 220, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 220, 1]
type = PlaySnd
trigger1 = time = 0
trigger1 = random <=300 ;3/10 Chance of Saying
value = S0,1+random%2
channel = 0

[State 220, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S1,2

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Hard
damage    = 37
guardflag = MA
pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-49
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 220, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(220) <= 2 || NumHelper(221) <= 2 || NumHelper(222) <= 2 || NumHelper(223) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 220 + (NumHelper(220) >= 3) + (NumHelper(221) >= 6) + (NumHelper(222) >= 9)
stateno = 201
pos = -10, -49
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 220, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing light kick
; CNS difficulty: easy
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
trigger1 = random <=200 ;1/5 Chance of Saying
value = S0,1+random%2
channel = 0

[State 230, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,3

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 15
guardflag = MA
pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-37
hitsound   = s5,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 230, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(230) <= 2 || NumHelper(231) <= 2 || NumHelper(232) <= 2 || NumHelper(233) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 230 + (NumHelper(230) >= 3) + (NumHelper(231) >= 6) + (NumHelper(232) >= 9)
stateno = 201
pos = -10, -37
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing med kick
; CNS difficulty: easy
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 47
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
trigger1 = random <=400 ;2/5 Chance of Saying
value = S0,1+random%2
channel = 0

[State 240, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S1,4

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 26
guardflag = MA
pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-34
hitsound   = s5,4
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 240, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(240) <= 2 || NumHelper(241) <= 2 || NumHelper(242) <= 2 || NumHelper(243) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 240 + (NumHelper(240) >= 3) + (NumHelper(241) >= 6) + (NumHelper(242) >= 9)
stateno = 201
pos = -10, -34
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 7
x = 12

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong kick
; CNS difficulty: easy
[Statedef 260]
type    = S
movetype= A
physics = S
juggle  = 11
poweradd= 47
ctrl = 0
velset = 0,0
anim = 260
sprpriority = 2

[State 260, 1]
type = PlaySnd
trigger1 = Time = 2
trigger1 = random < 200 ;EXACTLY 1/5 Chance of Saying
value = S0,1+random%2
channel = 0

[State 260, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S1,5

[State 260, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 38
guardflag = MA
pausetime = 15,15
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-34
hitsound   = s5,5
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -7,-8.1
fall = 1
fall.recovertime = 10
air.velocity = -3,-3.9

[State 240, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 12

[State 250, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(250) <= 2 || NumHelper(251) <= 2 || NumHelper(252) <= 2 || NumHelper(253) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 250 + (NumHelper(250) >= 3) + (NumHelper(251) >= 6) + (NumHelper(252) >= 9)
stateno = 201
pos = -10, -34
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 260, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Crouching light punch
; CNS difficulty: easy
; Description: Simple crouching attack. The HitDef's guardflag parameter
;     is set to "L", meaning that the move can only be guarded low
;     (crouching), and not by standing or jumping opponents.
;     Like for all light attacks, it's a good idea to keep the slidetime
;     and hittime parameters at a smaller number, so the opponent isn't
;     stunned for too long. For all crouching attacks you have to
;     remember to set the attr parameter to indicate that it is crouching
;     attack. In this case, "C, NA" stands for "crouching, normal attack".
;     The HitDef's priority is set at 3, instead of the default of 4,
;     so this attack has a lower priority than most others, meaning
;     KFM will get hit instead of trading hits with his opponent if
;     their attack collision boxes (Clsn1) intersect each other's Clsn2
;     boxes at the same time.
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 10
ctrl = 0
anim = 400
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-42
hitsound   = s5,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(400) <= 2 || NumHelper(401) <= 2 || NumHelper(402) <= 2 || NumHelper(403) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 400 + (NumHelper(400) >= 3) + (NumHelper(401) >= 6) + (NumHelper(402) >= 9)
stateno = 201
pos = -10, -42
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 400, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
;Crouching strong punch
; CNS difficulty: easy
; Description: This is a 2-hit move. It is done by having two HitDefs
;     triggered, one for each frame of animation that hits.
;     Notice how the first hit cannot be guarded by an opponent in the
;     air, because of the "M" in the guardflag, meaning it can only
;     be guarded "middle". The second hit has an "MA" guardflag, so
;     it can be guarded both on the ground and in the air.
; CNS レベル: 易
; 詳細: これは殴打が二発ある攻撃です。
; 殴打できるアニメーションの枚は一々HitDefを登録しています。
; 一発目の攻撃のHitDefにはguardflagが「M」（middle＝中段ガード）
; にセットされているので、相手は空中でガードできません。二発目
; の攻撃のguardflagは「MA」（middle+air＝中段＋空中ガード）で、
; 地上、空中でもガードすることができます。
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 45
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 26
animtype = Medium
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-42
hitsound = s5,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 16
ground.velocity = -7.05
air.velocity = -6.9,-3.75

[State 400, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(410) <= 2 || NumHelper(411) <= 2 || NumHelper(412) <= 2 || NumHelper(413) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 410 + (NumHelper(410) >= 3) + (NumHelper(411) >= 6) + (NumHelper(412) >= 9)
stateno = 201
pos = -10, -42
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium Beta Punch

[Statedef 411]
type    = C
movetype= A
physics = C
juggle  = 3
poweradd= 0
velset = 8,0
ctrl = 0
anim = 411
sprpriority = 2

[State 411, 1]
type = PlaySnd
trigger1 = Time = 1
value = S1, 5

[State 411, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, SA
damage = 15
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 2,6
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10,-58
hitsound = s5,6
guardsound = s6,0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 18
ground.velocity = -10
air.velocity = -7,-4

[State 411, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium Omega Punch

[Statedef 412]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 0
velset = 16,0
ctrl = 0
anim = 412
sprpriority = 2

[State 412, 1]
type = PlaySnd
trigger1 = Time = 1
value = S1, 5

[State 412, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, SA
damage = 15
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 2,6
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10,-58
hitsound = s5,6
guardsound = s6,0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 18
ground.velocity = -12
air.velocity = -8,-4

[State 412, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 7
velset = 8,0
ctrl = 0
anim = 420
sprpriority = 2

[State 420, Whoosh!]
type = playsnd
trigger1 = Time = 6
value = S1, 5

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
pausetime = 11,11
animtype = Hard
hitflag = MAFD
guardflag = L
priority = 3, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -15,-18
damage = 40
ground.type = Low
hitsound = S5, 6
guardsound = S6, 0
ground.velocity = -8, -4
air.velocity = -7, -1
ground.hittime = 15
ground.slidetime = 12

[State 400, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(420) <= 2 || NumHelper(421) <= 2 || NumHelper(422) <= 2 || NumHelper(423) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 420 + (NumHelper(420) >= 3) + (NumHelper(421) >= 6) + (NumHelper(422) >= 9)
stateno = 201
pos = -15, -18
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 420, ChangeState]
type = ChangeState
value = 11
ctrl = 1
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Crouching light kick
; CNS difficulty: easy
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 10
ctrl = 0
anim = 430
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 3

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-8
hitsound   = s5,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20

[State 400, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(430) <= 2 || NumHelper(431) <= 2 || NumHelper(432) <= 2 || NumHelper(433) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 430 + (NumHelper(430) >= 3) + (NumHelper(431) >= 6) + (NumHelper(432) >= 9)
stateno = 201
pos = -10, -8
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Kick
; CNS difficulty: easy
; Description: This move uses "Trip" for the "ground.type" parameter in
;     its HitDef. It's a special type that puts the opponent in a tripped
;     animation as he falls. Also, the hitflag parameter in the HitDef
;     is set to "MAFD". The "D" indicates that a downed opponent can be
;     hit by the attack.
; CNS レベル: 易
; 詳細:
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 2]
type = PlaySnd
trigger1 = Time = 2
value = 1, 4

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 26
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -5,-10
hitsound   = s5,4
guardsound = s6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 400, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(440) <= 2 || NumHelper(441) <= 2 || NumHelper(442) <= 2 || NumHelper(443) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 440 + (NumHelper(440) >= 3) + (NumHelper(441) >= 6) + (NumHelper(442) >= 9)
stateno = 201
pos = -5, -10
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Aereal Rave Launcher
; CNS difficulty: easy-medium
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 78
ctrl = 0
anim = 450
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 5
ignorehitpause = 1

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 2 && var(13)
attr = C, NA
damage = 34
hitflag = MAFD
animtype = Hard
guardflag = MA
priority = 3,Hit
pausetime = 15,15
sparkno = s7900+random%8
guard.sparkno = s7911
fall = 1
yaccel = .4
sparkxy = -5,-35
hitsound   = s5,5
guardsound = s6,0
ground.type = Low
air.slidetime = 6
ground.hittime  = 26
ground.velocity = -2.5,-13
air.velocity = -2.5,-13

[State 450, Non Aereal-Rave Hit]
type = HitDef
trigger1 = AnimElem = 2 && !var(13)
attr = C, NA
damage = 34
hitflag = MAFD
animtype = Hard
guardflag = MA
priority = 3,Hit
pausetime = 15,15
sparkno = s7900+random%8
guard.sparkno = s7911
fall = 1
sparkxy = -5,-35
hitsound   = s5,5
guardsound = s6,0
ground.type = Low
air.slidetime = 6
ground.hittime  = 15
ground.velocity = -6,-3
air.velocity = -6,-3

[State 400, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(450) <= 2 || NumHelper(451) <= 2 || NumHelper(452) <= 2 || NumHelper(453) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 450 + (NumHelper(450) >= 3) + (NumHelper(451) >= 6) + (NumHelper(452) >= 9)
stateno = 201
pos = -5, -35
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 450, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 450, ChangeState]
type = ChangeState
triggerall = var(13)
trigger1 = command = "JumpLauncher" && MoveContact
trigger2 = (command = "a" || command = "b" || command = "x" || command = "y") && MoveContact
value = 701
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 41
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 600, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 7,10
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-58
hitsound   = s5,0
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3.15

[State 600, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(600) <= 2 || NumHelper(601) <= 2 || NumHelper(602) <= 2 || NumHelper(603) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 600 + (NumHelper(600) >= 3) + (NumHelper(601) >= 6) + (NumHelper(602) >= 9)
stateno = 201
pos = -10, -58
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;---------------------------------------------------------------------------
;Jump Strong Punch
; CNS difficulty: easy
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 60
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S1,1

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 26
guardflag = HA
priority = 4
pausetime = 12,15
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-55
hitsound   = s5,1
guardsound = s6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-3.9

[State 610, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(610) <= 2 || NumHelper(611) <= 2 || NumHelper(612) <= 2 || NumHelper(613) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 610 + (NumHelper(610) >= 3) + (NumHelper(611) >= 6) + (NumHelper(612) >= 9)
stateno = 201
pos = -10, -55
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;---------------------------------------------------------------------------
;Jump Light Kick
; CNS difficulty: easy
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 40
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 630, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,3

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20,0
guardflag = HA
priority = 3
pausetime = 6,8
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -5,0
hitsound   = s5,3
guardsound = s6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-5

[State 630, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(630) <= 2 || NumHelper(631) <= 2 || NumHelper(632) <= 2 || NumHelper(633) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 630 + (NumHelper(630) >= 3) + (NumHelper(631) >= 6) + (NumHelper(632) >= 9)
stateno = 201
pos = -5, -35
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;---------------------------------------------------------------------------
;Jump Strong Kick
; CNS difficulty: easy
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 69
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S1,4

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 24
guardflag = HA
priority = 4
pausetime = 12,15
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10,-40
hitsound   = s5,4
guardsound = s6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-3.8

[State 640, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(640) <= 2 || NumHelper(641) <= 2 || NumHelper(642) <= 2 || NumHelper(643) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 640 + (NumHelper(640) >= 3) + (NumHelper(641) >= 6) + (NumHelper(642) >= 9)
stateno = 201
pos = -10, -40
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;---------------------------------------------------------------------------
;DANIEL RAJAS
; CNS difficulty: easy
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 650, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S1,2

[State 650, 2]
type = HitDef
triggerall = UniqHitCount <= 3
trigger1 = AnimElem = 2
attr = A, NA
damage = 8,0
guardflag = HA
priority = 3
pausetime = 6,(floor(((UniqHitCount+1)**-1)*25))
guard.pausetime = 6,6
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -5,-35
hitsound   = s5,2;S20,37
guardsound = s6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3.88

[State 650, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(650) <= 2 || NumHelper(651) <= 2 || NumHelper(652) <= 2 || NumHelper(653) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 650 + UniqHitCount
stateno = 201
pos = -5, -35
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;[State 650, ChangeState]
;type = ChangeState
;trigger1 = UniqHitCount > 3 && AnimTime = 0
;value = 52

;---------------------------------------------------------------------------
;Jump Strong Kick
; CNS difficulty: easy-medium
[Statedef 660]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 78
ctrl = 0
anim = 660
sprpriority = 2

[State 660, AngleDraw]
type = AngleDraw
trigger1 = time >= 2
value = 20
ignorehitpause = 1

[State 660, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 660, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,5

[State 660, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 34
animtype = Hard
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7900+random%8
guard.sparkno = s7911
air.fall = 1
yaccel = .6
sparkxy = -5,-35
hitsound   = s5,5;S20,37
guardsound = s6,0
ground.type = High
air.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -6,8

[State 660, Helper]
type = Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(660) <= 2 || NumHelper(661) <= 2 || NumHelper(662) <= 2 || NumHelper(663) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 660 + (NumHelper(660) >= 3) + (NumHelper(661) >= 6) + (NumHelper(662) >= 9)
stateno = 201
pos = -5, -35
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;---------------------------------------------------------------------------
[Statedef 701]
type = A
physics = N
anim = 9000

[State 701, 6]
type = VelSet
trigger1 = Time = 0
x = 2.5
y = -14.1

[State 701, Your falling]
type = VelAdd
trigger1 = 1
y = .4

[State 701, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Throw Attempt

[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 810
p2stateno = 820
guard.dist = 0
numhits = 0
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw - Throwing

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 35

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1, 1

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S1, 2

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 32, -84

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 34, -47

[State 810, Change Target's State]
type = TargetState
trigger1 = AnimElemTime(3) = 1
value = 861

[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) = [0,1]
pos = 25, -21

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[Statedef 821]
type    = A
movetype= H
physics = N
velset = -3.5,3.5
poweradd = 40

[State 821, ChangeAnim]
type = ChangeAnim2
trigger1 = Time = 0
value = 821

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 4] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 822

[Statedef 822]
type = A
movetype = H
physics = N
velset = -3.5, -9

[State 822, Hurt]
type = LifeAdd
trigger1 = Time = 0
value = -48
kill = 1

[State 822, fight.snd]
type = PlaySnd
trigger1 = Time = 0
value = F7,2
volume = 255

[State 822, staticfx] ;That was the former name!!!
type = Explod
trigger1 = Time = 0
anim = F61
pos = 0,0
facing = 1
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
ownpal = 1

[State 822, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 822, Recover A] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 822, Recover B] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110


;---------------------------------------------------------------------------
;Throw Attempt (Combo Breaker)

[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 850, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = AF
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 851
p2stateno = 860
guard.dist = 0
fall = 1

[State 850, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw - Throwing

[Statedef 851]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 10

[State 851, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1, 1

[State 851, Throw Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S1, 2

[State 851, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 32, -84

[State 851, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 34, -47

[State 851, Change Target's State]
type = TargetState
trigger1 = AnimElemTime(3) = 1
value = 861

[State 851, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) = [0,1]
pos = 25, -21

[State 851, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 860]
type    = A
movetype= H
physics = N
velset = 0,0

[State 860, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 860, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[Statedef 861]
type    = A
movetype= H
physics = N
velset = -3.5,3.5
poweradd = 60

[State 861, ChangeAnim]
type = ChangeAnim2
trigger1 = Time = 0
value = 821

[State 861, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 861, 4] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 862

[Statedef 862]
type = A
movetype = H
physics = N
velset = -3.5, -9

[State 862, Hurt]
type = LifeAdd
trigger1 = Time = 0
value = -26
kill = 1

[State 862, fight.snd]
type = PlaySnd
trigger1 = Time = 0
value = F7,2
volume = 255

[State 862, staticfx] ;That was the former name!!!
type = Explod
trigger1 = Time = 0
anim = F62
pos = 0,0
facing = 1
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
ownpal = 1

[State 862, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 862, Recover A] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 862, Recover B] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 861, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110

