;---------------------------------------------------------------------------
; Daniel's Common States
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != var(27) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = var(27)

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < 1
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

[Statedef 11]
type    = C
physics = C
anim = 11+(10000*var(27))
sprpriority = 0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11+(10000*var(27))

;Thanks to Choiyer for his low jump code!!
;Note, I modified the code to make sure it worked correctly with Daniel...
;changed variable indices:
;Var(3) --> Var(37)
;Var(5) --> Var(36)
;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 2]
type = VarSet
trigger1 = Time = 0
var(36) = 0

[State 40, 1]
type = VarSet
trigger1 = command != "holdup"
var(36) = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 1]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 1]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

;Dash Jump Variable Reset
[State 40, 1]
type = VarSet
trigger1 = Time = 0
var(37) = 0

;Dash Jump
[State 40, 1]
type = VarSet
triggerall = Time = 0
trigger1 = (PrevStateNo = 100 || PrevStateNo = 101) && sysvar(1) = 1
trigger2 = prevstateno = 100 && command = "holdfwd"
var(37) = 1

[State 40, 1]
type = VelSet
trigger1 = var(37) = 0
trigger1 = Var(36) = 0
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 1]
type = VelSet
trigger1 = var(37) = 1
trigger1 = Var(36) = 0
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, 0, ifelse(sysvar(1)=1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = const(velocity.runjump.y)

[State 40, 1]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = Var(36) = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)
y = const(velocity.jump.y)

[State 40, 1]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = Var(36) = 1
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)
y = -5.5

;OK, I'm getting confused!!
[State 40, 4];è¨ÉWÉÉÉìÉv
type = VelSet
trigger1 = AnimTime = 0
trigger1 = var(37) = 0
trigger1 = Var(36) = 1
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))*2
y = -5.5 ;This was, I mean IS Haruhi's Height for low jump

[State 40, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Run Forward
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4
value = S100,0

[State 105, 3]
type = MakeDust
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
pos = -5,-2
spacing = 3

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd"
value = 101

;---------------------------------------------------------------------------
; Stop Running
[Statedef 101]
type = S
movetype = I
physics = N
ctrl = 0
anim = 101

[State 101, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.5

[State 101, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = S101,0

[State 101, ChangeState]
type = ChangeState
trigger1 = vel x <= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Run Back
[Statedef 105]
type    = S
physics = N
anim = 105
sprpriority = 1
ctrl = 0

[State 105, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.7

[State 105, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S41,0

[State 105, 1]
type = VelSet
triggerall = !var(27)
trigger1 = Time = 0
x = -10
y = 0

[State 105, Expl Moment]
type = VelSet
triggerall = var(27)
trigger1 = Time = 0
x = -15
y = 0

[State 105, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 105, 3] ;Prevent from turning and guarding
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoStandGuard

[State 105, 4]
type = ChangeState
trigger1 = vel x >= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Run Forward Explosion Moment
[Statedef 10100]
type    = S
movetype = A
physics = N
anim = 2503
sprpriority = 1
ctrl = 0

[State 10100, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 13, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10, -47
hitsound = s5, 6
guardsound = s6, 0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -16
airguard.velocity = -6
air.type = Low
air.velocity = -12,-3.2
air.hittime = 12

[State 10100, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.56

[State 10100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,6

[State 10100, 1]
type = VelSet
trigger1 = Time = 0
x = 15
y = 0

[State 10100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 10100, 3] ;Prevent from turning and guarding
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoStandGuard

[State 10100, 4]
type = ChangeState
trigger1 = vel x <= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
triggerall = !var(27)
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
triggerall = !var(27)
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, Explosion Moment A]
type = VelSet
triggerall = var(27)
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)*1.5

[State 20, Explosion Moment B]
type = VelSet
triggerall = var(27)
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)*1.5

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20+(10000*var(27)) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20+(10000*var(27))

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21+(10000*var(27)) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21+(10000*var(27))

;---------------------------------------------------------------------------
; Stand Guard Get-Hit (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; Stand Guard Get-Hit (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Guard Get-Hit (Shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Crouch Guard Get-Hit (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

; Collapse
[Statedef 5130]
type = U
movetype = H
physics = S
anim = 5130 + (2 * (statetype = C))

[State 5130, Set Your Velocities]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 0

[State 5130, Not Hit By Anything]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5130, set your defenses to normal]
type = DefenceMulSet
trigger1 = 1
value = 1
ignorehitpause = 1

[State 5130, DIE]
type = ChangeState
trigger1 = anim = 5130 || anim = 5132
trigger1 = animtime = 0
value = 5131

; Collapse (lying Down)
[Statedef 5131]
type = L
movetype = H
physics = C
anim = anim + 1
velset = 0,0

[State 5131, Not Hit By Anything]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5131, Animation Placement]
type = PosAdd
trigger1 = AnimElem = 1
x = 30

[State 5131, Finnally DIE!!]
type = ChangeState
trigger1 = AnimTime = 0
value = 5150

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, Explosion Moment Off]
type = VarSet
trigger1 = Time = 0
var(27) = 0

[State 5900, Explosion Moment Off]
type = VarSet
trigger1 = Time = 0
var(28) = 0

[State 5900, 3] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
trigger2 = TeamMode = Turns ;Daniel now finnaly has a turns mode intro!
value = 190

[Statedef 5300];Dizzy is not a common state, but still...
type = U
movetype = H
physics = U
ctrl = 0
velset = 0,0
anim = 5300

[State 5300, Regain Conciousness after a while];Say, 2 Seconds
type = SelfState
trigger1 = Time >= 120 && Alive
value = 5201
ctrl = 0

[State 5300, Die Again]
type = SelfState
trigger1 = Time >= 120 && !Alive
value = 5070
ctrl = 0

[State 5300, Random Pain Hitsparks]
type = Explod
trigger1 = Time%10=0
anim = F0+random%4
pos = -35,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
random = 70,0
removetime = -2
supermovetime = 99999999
pausemovetime = 99999999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 5300, DO NOT DIZZY IF IN AIR]
type = SelfState ; Go B... A... C... K... to your OWN CNS!!!
trigger1 = StateType = A
value = 5070 ;Falling

; HIT_BADLY_HURT (Into Air)
[Statedef 5682]
type    = A
movetype= H
physics = N

[State 5682, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1026

[State 5682, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = F7,2

[State 5682, Go on Rolling]
type = AngleAdd
trigger1 = 1
value = 45
ignorehitpause = 1

[State 5682, Yo Died]
type = AngleDraw
trigger1 = 1

[State 5682, VelSet]
type = VelSet
trigger1 = Time = 0
x = -8
y = -158 ; Epic Lose!!!

[State 5682, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 5682, VelAdd]
type = VelAdd
trigger1 = 1
y = 5 ;Fall super faster

[State 5682, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5682, Land]
trigger1 = Vel Y > 0 && Pos Y >= 20
type = SelfState
value = 5110

;------------------------------------------------------------------------------
; Guard unstabilized

[Statedef 6333]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
poweradd = -1000
anim = 6333

[State 6333, Walk Backwards]
type = VelSet
trigger1 = 1
x = -1

[State 6333, Override Throws];Removes cheap & broken stuff
type = NotHitBy
trigger1 = 1
value = , AT

[State 6333, Time Over]
type = SelfState
trigger1 = time >= 60
value = 0
ctrl = 1

; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, Set Tripped Var NOW]
type = VarSet
trigger1 = Time = 0
var(6) = 1

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, Anim For Trip State]
type = ChangeAnim
trigger1 = anim != 6365
trigger1 = var(6)
trigger1 = SelfAnimExist(6365)
value = 6365

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
triggerall = !var(6)
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 11] ;If just died 2
type = ChangeState
triggerall = !alive
triggerall = var(6)
trigger1 = Anim = 6365
value = 5100

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, Disable Trip Var]
type = VarSet
trigger1 = Time = 0
var(6) = 0

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
