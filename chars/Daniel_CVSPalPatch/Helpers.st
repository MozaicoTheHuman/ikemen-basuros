;========================<SUPER CHARGE>=============================
;Notes to myself: Var(10) = 5: Level 1
;Var(10) = 6: Level 2
;Var(10) = 7: Level 3 & 4
[Statedef 7500]
physics=N
velset=0,0
anim=9741

[State 7500, Lv1]
type=bgpalfx
trigger1= time<=10 && root,var(10)=5
time=1
add=256-ceil(25.6*time),256-ceil(25.6*time),256-ceil(25.6*time)
mul=256-floor(25.6*time),256-floor(25.6*time),256
color=256-floor(25.6*time)
[State 7500, Lv1]
type=bgpalfx
trigger1= (time=[11,39]) && root,var(10)=5
time=1
mul=0,0,256
color=0
[State 7500, Lv1]
type=bgpalfx
trigger1= time>=40 && root,var(10)=5
time=1
mul=ceil(51.2*(time-40)),ceil(51.2*(time-40)),256
color=floor(51.2*(time-40))

[State 7500, Lv2]
type=bgpalfx
trigger1= time<=15 && root,var(10)=6
time=1
add=256-ceil(17.07*time),256-ceil(17.07*time),256-ceil(17.07*time)
mul=256-floor(17.07*time),256-floor(17.07*time),256
color=256-floor(17.07*time)
[State 7500, Lv2]
type=bgpalfx
trigger1= (time=[16,47]) && root,var(10)=6
time=1
mul=0,0,256
color=0
[State 7500, Lv2]
type=bgpalfx
trigger1= time>=48 && root,var(10)=6
time=1
mul=ceil(51.2*(time-48)),ceil(51.2*(time-48)),256
color=floor(51.2*(time-48))

[State 7500, Lv3]
type=bgpalfx
trigger1= time<=20 && root,var(10)=7
time=1
add=256-ceil(12.8*time),256-ceil(12.8*time),256-ceil(12.8*time)
mul=256-floor(12.8*time),256-floor(12.8*time),256-floor(12.8*time)
color=256-floor(12.8*time)
[State 7500, Lv3]
type=bgpalfx
trigger1= (time=[21,54]) && root,var(10)=7
time=1
mul=0,0,0
color=0
[State 7500, Lv3]
type=bgpalfx
trigger1= time>=55 && root,var(10)=7
time=1
mul=ceil(51.2*(time-55)),ceil(51.2*(time-55)),ceil(51.2*(time-55))
color=floor(51.2*(time-55))

[State 7500, Spiral]
type=helper
trigger1= !time && root,var(10)>=6
helpertype=normal
stateno=7509
ID=7509
name="Super Charge Spiral"
postype=p1
pausemovetime=255
supermovetime=255
ownpal=1

[State 7500, Main]
type=explod
trigger1= !time
anim=7500
ID=7500
sprpriority=5
postype=p1
removetime=-1
pausemovetime=-1
supermovetime=-1
[State 7500, Large Circle]
type=explod
trigger1= !time
anim=7501
ID=7501
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 7500, Portrait]
type=explod
trigger1= time=1 && root,var(10)=7
anim=7510
ID=7510
postype=back
pos=160,120
sprpriority=-16
bindtime=-1
pausemovetime=-1
supermovetime=-1

[State 7500, Circle]
type=explod
trigger1= !time
anim=7502
ID=75021
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1
[State 7500, Circle]
type=explod
trigger1= time=7
anim=7502
ID=75022
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1
[State 7500, Circle]
type=explod
trigger1= time=14
anim=7502
ID=75023
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1
[State 7500, Circle]
type=explod
trigger1= time=21
anim=7502
ID=75024
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1
[State 7500, Circle]
type=explod
trigger1= time=28
anim=7502
ID=75025
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 7500, Scale]
type=modifyexplod
trigger1= root,var(10)=5
ID=7500
scale=1.5-(.0333*time),1.5-(.0333*time)
[State 7500, Scale]
type=modifyexplod
trigger1= root,var(10)=6
ID=7500
scale=1.5-(.0283*time),1.5-(.0283*time)
[State 7500, Scale]
type=modifyexplod
trigger1= root,var(10)=7
ID=7500
scale=1.5-(.025*time),1.5-(.025*time)

[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7501)
ID=7501
scale=.25+(.075*time),.25+(.075*time)
trans=addalpha
alpha=ceil(256-6.4*time),256

[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7510) && time<8
ID=7510
postype=back
pos=16,120
scale=.5,.5
trans=addalpha
alpha=(32*time),256
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7510) && (time=[8,50])
ID=7510
postype=back
pos=160,120
scale=.5,.5
trans=addalpha
alpha=256,256
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7510) && time>=50
ID=7510
postype=back
pos=160,120+(8*(time-50))
scale=.5+(.25*(time-50)),.5+(.25*(time-50))
trans=addalpha
alpha=256-ceil(25.6*(time-50)),256

[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75021)
ID=75021
scale=.25+(.0375*time),.25+(.0375*time)
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75022)
ID=75022
scale=.25+(.0375*(time-7)),.25+(.0375*(time-7))
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75023)
ID=75023
scale=.25+(.0375*(time-14)),.25+(.0375*(time-14))
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75024)
ID=75024
scale=.25+(.0375*(time-21)),.25+(.0375*(time-21))
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75025)
ID=75025
scale=.25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, Safety]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
[State 7500, No bars]
type=assertspecial
trigger1= root,var(10)=7
flag=nobardisplay
flag2=noFG

[State 7500, Safety]
type=removeexplod
trigger1= root,var(10)=5 && time>=45
trigger2= root,var(10)=6 && time>=53
trigger3= time>=60
[State 7500, End]
type=destroyself
trigger1= root,var(10)=5 && time>=45
trigger2= root,var(10)=6 && time>=53
trigger3= time>=60


;---Spiral---
[Statedef 7509]
physics=N
anim=7509
sprpriority=5
[State 7509, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 7509, Spin]
type=angleset
trigger1= !time
value=-15*(random%24)
[State 7509, Spin]
type=angleadd
trigger1= 1
value=-15

[State 7509, Angle]
type=angledraw
trigger1= root,var(10)=6
scale=1-(time/53.0),1-(time/53.0)
[State 7509, Trans]
type=trans
trigger1= root,var(10)=6
trans=addalpha
alpha=floor(4.83*time),256

[State 7509, Angle]
type=angledraw
trigger1= root,var(10)=7
scale=1-(time/60.0),1-(time/60.0)
[State 7509, Trans]
type=trans
trigger1= root,var(10)=7
trans=addalpha
alpha=floor(4.267*time),256

[State 7509, End]
type=destroyself
trigger1= root,var(10)=6 && time>=54
trigger2= time>=61

;PotS


;---------------------------------------------------------------------------
;Dante in a truck
[Statedef 19997]
type = S
velset = 0, 0
anim = 10290
ctrl = 0

[State 19997, YPOS??]
type = ChangeState
trigger1 = Pos Y >= 0
value = 19998

[State 19998, ChangeStateFail]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = !parent, MoveHit
value = 23000
ctrl = 0

[State 19997, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
facing = 1
pos = 0,130
ignorehitpause = 1

[State 19997, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[Statedef 19998]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 10291
ctrl = 0
sprpriority = 3

[State 19998, ChangeAnim]
type = ChangeAnim
trigger1 = parent,AnimElemTime(4) = 0 || parent,AnimElemTime(7) = 0 || parent,AnimElemTime(10) = 0
trigger2 = parent,AnimElemTime(13) = 0 || parent,AnimElemTime(16) = 0 || parent,AnimElemTime(19) = 0
trigger3 = parent,AnimElemTime(22) = 0 || parent,AnimElemTime(25) = 0 || parent,AnimElemTime(28) = 0
trigger4 = parent,AnimElemTime(31) = 0 || parent,AnimElemTime(34) = 0 || parent,AnimElemTime(37) = 0
trigger5 = parent,AnimElemTime(40) = 0 || parent,AnimElemTime(43) = 0 || parent,AnimElemTime(46) = 0
trigger6 = parent,AnimElemTime(49) = 0 || parent,AnimElemTime(52) = 0 || parent,AnimElemTime(55) = 0
trigger7 = parent,AnimElemTime(58) = 0 || parent,AnimElemTime(61) = 0 || parent,AnimElemTime(64) = 0
trigger8 = parent,AnimElemTime(67) = 0 || parent,AnimElemTime(70) = 0 || parent,AnimElemTime(73) = 0
trigger9 = parent,AnimElemTime(76) = 0 || parent,AnimElemTime(79) = 0 || parent,AnimElemTime(82) = 0
trigger10 = parent,AnimElemTime(85) = 0 || parent,AnimElemTime(88) = 0 || parent,AnimElemTime(91) = 0
trigger11 = parent,AnimElemTime(94) = 0 || parent,AnimElemTime(97) = 0 || parent,AnimElemTime(100) = 0
trigger12 = parent,AnimElemTime(103) = 0 || parent,AnimElemTime(106) = 0 || parent,AnimElemTime(109) = 0
trigger13 = parent,AnimElemTime(112) = 0 || parent,AnimElemTime(115) = 0 || parent,AnimElemTime(118) = 0
trigger14 = parent,AnimElemTime(121) = 0 || parent,AnimElemTime(124) = 0 || parent,AnimElemTime(127) = 0
trigger15 = parent,AnimElemTime(130) = 0 || parent,AnimElemTime(133) = 0 || parent,AnimElemTime(136) = 0
trigger16 = parent,AnimElemTime(139) = 0 || parent,AnimElemTime(146) = 0
value = 10291
elem = 1
;ignorehitpause =
;persistent =

[State 19998, Explod]
type = Explod
triggerall = !NumExplod(10000)
trigger1 = parent, stateno != 184
trigger1 = parent, stateno != 4501
trigger1 = parent, stateno != 4502
anim = 7905
ID = 10000
pos = 0,-60
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 3,3
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 19998, ChangeState]
type = ChangeState
trigger1 = parent, stateno != 184
trigger1 = parent, stateno != 4501
trigger1 = parent, stateno != 4502
value = 23000
ctrl = 0
;ignorehitpause =
;persistent =

[State 19998, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

[Statedef 23000]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 23000
ctrl = 0
sprpriority = 3

[State 23000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S500,4
volume = 888

[State 23000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S500,3
volume = 888

[State 19998, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

[StateDef 4901]
type = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 4901
sprpriority = 2

[State 4901, Random Set 1]
type = VelSet
trigger1 = Time = 0
x = (random%17)-8
y = (random%17)-8

[State 4901, Limit2]
type = VelSet
trigger1 = Vel Y <= -16
y = -16

[State 4901, Kill on Contact]
type = ChangeState
trigger1 = MoveContact
value = 4902

[State 4901, 1]
type = HitDef
trigger1 = 1
attr = S, HP
damage = 22, 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 8, 8
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10, -50
hitsound = s5, 10
getpower  = 0,0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 10
fall = 1
fall.recovertime = 0
ground.velocity = -4, -8
airguard.velocity = -1.9,-6
air.type = Low
air.velocity = -1.4,-8
air.hittime = 12

[State 4901, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 4901, VelAdd]
type = VelAdd
trigger1 = P2dist X > 0
x = .5

[State 4901, VelAdd]
type = VelAdd
trigger1 = P2dist X < 0
x = -0.5

[State 4901, VelAdd]
type = VelAdd
trigger1 = P2dist Y > 0
y = .5

[State 4901, VelAdd]
type = VelAdd
trigger1 = P2dist Y < 0
y = -0.5

[State 4901, LimitY1]
type = VelSet
trigger1 = Vel Y >= 16
y = 16

[State 4901, LimitY2]
type = VelSet
trigger1 = Vel Y <= -16
y = -16

[State 4901, LimitX1]
type = VelSet
trigger1 = Vel X >= 16
x = 16

[State 4901, LimitX2]
type = VelSet
trigger1 = Vel X <= -16
x = -16

;BORROWED CODING FROM WICKYDOO!!!

[State 4901, Angle 0]
type = VarSet
trigger1 = Time = 0
fvar(1) = 5.5

[State 4901, Angle 1a]
type = VarSet
trigger1 = 1
fvar(2) = cos(fvar(1))

[State 4901, Angle 1b]
type = VarSet
trigger1 = 1
fvar(3) = 0 - sin(fvar(1))

[State 4901, Angle 2]
type = VarSet
trigger1 = 1
fvar(4) = fvar(2)*(p2dist y - 50) - fvar(3)*(p2dist x)

[State 4901, Angle 3]
type = VarAdd
trigger1 = 1
fvar(1) = ((fvar(4) < 0) * .1) - ((fvar(4) > 0) * .1)

[State 4901, Angle 4]
type = AngleSet
trigger1 = 1
value = floor (fvar(1) * 57.2957791)

[State 4901, Facing]
type = AngleDraw
trigger1 = 1

;END OF BORROWED CODING

[StateDef 4902]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 7920+random%8
sprpriority = 2

[State 4902, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------
;Cherry's States

[Statedef 14000];Walk Right
type = S
movetype= I
physics = S
ctrl = 0
anim = 14000

[State 14000, Walk]
type = VelSet
trigger1 = 1
x = (parent, Const(velocity.walk.fwd.x)*0.9)

[State 14000, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos X > 450
trigger2 = ScreenPos X < -120

[State 14000, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 14100
ignorehitpause = 1

[State 14000, Handbag Strap]
type = ChangeState
trigger1 = !var(1) && p2bodydist X <= 22
trigger1 = IsHelper(14000)
value = 14001

[State 14000, Upper Kick]
type = ChangeState
trigger1 = !var(1) && p2bodydist X <= 22
trigger1 = IsHelper(14001)
value = 14002

[State 14000, Super]
type = ChangeState
trigger1 = !var(1)
trigger1 = IsHelper(14002)
value = 17000

[State 14000, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = , NT, ST, HT
ignorehitpause = 1

[State 14000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[Statedef 14001];HandBag strap
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 14001

[State 14000, VarSet]
type = VarSet
trigger1 = Time = 0
v = 1
value = 1

[State 14001, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S1,5

[State 14001, 1]
type = HitDef
trigger1 = AnimElem = 3 || AnimElem = 4
attr = S, SA
damage = 65, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 8
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10, -59
hitsound = s5, 1+hitcount
guardsound = s6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5
airguard.velocity = -1.9,-.5
air.type = High
air.velocity = -2,-5
air.hittime = 12

[State 14001, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 5
stateno = 14100
forceair = 1
ignorehitpause = 1

[State 14001, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = , NT, ST, HT
ignorehitpause = 1

[State 14001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 14000
ctrl = 0

;---------------------------------------------------------------------------
;Aereal Rave Launcher?

[Statedef 14002]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 14002
sprpriority = 2

[State 14002, VarSet]
type = VarSet
trigger1 = Time = 0
v = 1
value = 1

[State 14002, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S1,5

[State 14002, 1]
type = PlaySnd
trigger1 = Time = 4
value = 1, 5

[State 14002, 2]
type = HitDef
trigger1 = AnimElemTime(4) = 0
attr = S, SA
damage = 89,1
hitflag = MAF
animtype = Hard
guardflag = MA
priority = 5,Hit
pausetime = 15,15
sparkno = s7900+random%8
guard.sparkno = s7911
fall.damage = 1
fall = 1
fall.recovertime = 55
yaccel = .4
sparkxy = -5,-35
hitsound   = s5,5
guardsound = s6,0
ground.type = Low
air.slidetime = 6
ground.hittime  = 26
ground.velocity = -13,-2.5
air.velocity = -13,-2.5

[State 14001, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 5
stateno = 14100
forceair = 1
ignorehitpause = 1

[State 14001, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = , NT, ST, HT
ignorehitpause = 1

[State 14002, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 14000
ctrl = 0

[Statedef 14100];Get Hit
type = A
movetype= H
physics = N
ctrl = 0
anim = 14100
velset = -8,-8

[State 14100, ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 14100, Destroy]
type = DestroySelf
trigger1 = ScreenPos Y <= -98

[Statedef 14200]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 14200
sprpriority = 2

[State 14200, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 14200+((P2name = "Kuromaru" || P4name = "Kuromaru")*100)

[State 14200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 14201
ctrl = 0

[State 14200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[Statedef 14201];Walk Left
type = S
movetype= I
physics = S
ctrl = 0
anim = 14500

[State 14201, Walk]
type = VelSet
trigger1 = 1
x = (parent, Const(velocity.walk.back.x)*0.9)

[State 14201, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos X > 450
trigger2 = ScreenPos X < -120

[State 14201, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 14201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

;[Statedef 16000]
;type = S
;movetype= I
;ctrl = 0
;anim = 14201

;[State 16000, Helper]
;type = Helper
;trigger1 = Time = 0
;helpertype = normal
;name = "Cherry"
;ID = 19600
;stateno = 14200
;pos = -30,0
;facing = 1
;keyctrl = 0
;ownpal = 1
;supermovetime = 999999
;pausemovetime = 999999

;[State 16000, AssertSpecial]
;type = AssertSpecial
;trigger1 = 1
;flag = intro

;[State 16000, ChangeState]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = ifelse((P2name = "Kuromaru" || P4name = "Kuromaru"),196,0)
;ctrl = 0

;Cherry's Kick Smash
[Statedef 17000]
type = S
movetype= A
physics = S
ctrl = 0
anim = 14999

[State 17000, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 5
stateno = 14100
forceair = 1
ignorehitpause = 1

[State 17000, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = , NT, ST, HT
ignorehitpause = 1

[State 17000, Explod]
type = Explod
trigger1 = Time = 0
anim = 16298
ID = 16298
pos = 20,0
postype = back
facing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermoveTime = 9999999
pausemoveTime = 9999999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 17000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 57
anim = -1
sound = S7,3
pos = 0,0
darken = 1
p2defmul = 1
poweradd = -3000
unhittable = 1

[State 17000, VarSet]
type = VarSet
trigger1 = Time = 0
v = 1
value = 1

[State 17000, VelSet]
type = VelSet
trigger1 = 1
x = 10

[State 17000, 6]
type = HitDef
trigger1 = !MoveContact
attr = S, HT
hitflag = MA-
priority  = 3, Miss
guardflag = MA
sparkno = -1
guard.sparkno = s7911
sparkxy = -7,-30
hitsound   = S800,0
guardsound = s6,0
fall = 0
p1stateno = 17001
p2stateno = 6290
p2facing = 1        ;Force to face p1
hitonce = 1
numhits = 0

[State 17000, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos X > 450
trigger2 = ScreenPos X < -120

;Hold and then Kick
[Statedef 17001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 14750
ctrl = 0
sprpriority = 2

[State 17001, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 5
stateno = 14100
forceair = 1
ignorehitpause = 1

[State 17001, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = , NT, ST, HT
ignorehitpause = 1

[State 17001, Bind Near Cherry]
type = TargetBind
trigger1 = AnimElemTime(23) < 0
pos = 37,0

[State 17001, Bind Near Cherry]
type = TargetBind
trigger1 = AnimElemTime(23) >= 0 && AnimElemTime(26) < 0
pos = 40,0

[State 17001, HitSpark]
type = Explod
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0 || AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0 || AnimElemTime(8) = 0
trigger4 = AnimElemTime(9) = 0 || AnimElemTime(10) = 0
trigger5 = AnimElemTime(11) = 0 || AnimElemTime(12) = 0
trigger6 = AnimElemTime(13) = 0 || AnimElemTime(14) = 0
trigger7 = AnimElemTime(15) = 0 || AnimElemTime(16) = 0
trigger8 = AnimElemTime(17) = 0 || AnimElemTime(18) = 0
trigger9 = AnimElemTime(19) = 0 || AnimElemTime(20) = 0
trigger10 = AnimElemTime(21) = 0 || AnimElemTime(22) = 0
trigger11 = AnimElemTime(26) = 0
anim = ifelse((AnimElemTime(26) = 0),7930,7900)+random%8
pos = 36,-55
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 17001, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0 || AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0 || AnimElemTime(8) = 0
trigger4 = AnimElemTime(9) = 0 || AnimElemTime(10) = 0
trigger5 = AnimElemTime(11) = 0 || AnimElemTime(12) = 0
trigger6 = AnimElemTime(13) = 0 || AnimElemTime(14) = 0
trigger7 = AnimElemTime(15) = 0 || AnimElemTime(16) = 0
trigger8 = AnimElemTime(17) = 0 || AnimElemTime(18) = 0
trigger9 = AnimElemTime(19) = 0 || AnimElemTime(20) = 0
trigger10 = AnimElemTime(21) = 0 || AnimElemTime(22) = 0
trigger11 = AnimElemTime(26) = 0
value = S5,ifelse((AnimElemTime(26) = 0),9,4)

[State 17001, Combo]
type = HitAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0 || AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0 || AnimElemTime(8) = 0
trigger4 = AnimElemTime(9) = 0 || AnimElemTime(10) = 0
trigger5 = AnimElemTime(11) = 0 || AnimElemTime(12) = 0
trigger6 = AnimElemTime(13) = 0 || AnimElemTime(14) = 0
trigger7 = AnimElemTime(15) = 0 || AnimElemTime(16) = 0
trigger8 = AnimElemTime(17) = 0 || AnimElemTime(18) = 0
trigger9 = AnimElemTime(19) = 0 || AnimElemTime(20) = 0
trigger10 = AnimElemTime(21) = 0 || AnimElemTime(22) = 0
trigger11 = AnimElemTime(26) = 0
value = 1

[State 17001, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0 || AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0 || AnimElemTime(8) = 0
trigger4 = AnimElemTime(9) = 0 || AnimElemTime(10) = 0
trigger5 = AnimElemTime(11) = 0 || AnimElemTime(12) = 0
trigger6 = AnimElemTime(13) = 0 || AnimElemTime(14) = 0
trigger7 = AnimElemTime(15) = 0 || AnimElemTime(16) = 0
trigger8 = AnimElemTime(17) = 0 || AnimElemTime(18) = 0
trigger9 = AnimElemTime(19) = 0 || AnimElemTime(20) = 0
trigger10 = AnimElemTime(21) = 0 || AnimElemTime(22) = 0
value = -15
kill = 0
absolute = 0

[State 17001, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(26) = 0
value = -25
kill = 1
absolute = 0

[State 17001, Change To Falling State]
type = TargetState
trigger1 = AnimElemTime(26) = 0
value = 17002

[State 17001, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 14000
ctrl = 0

;------------------
; Kicked. Flying through the air

[Statedef 17002]
type    = A
movetype= H
physics = N
sprpriority = 1
anim = 5050

[State 17002, Has 5061?]
type = ChangeAnim
trigger1 = Time = 0 && SelfAnimExist(5061)
value = 5061

[State 17002, 1]
type = VelAdd
trigger1 = 1
y = .33

[State 17002, VelSet]
type = Velset
trigger1 = !time
x = -15
y = -6

[State 17002, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

[Statedef 4013]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 4013
ctrl = 0
sprpriority = 2

[State 4014, ChangeState]
type = ChangeState
trigger1 = root, stateno != 4012
value = 4016
ctrl = 0
ignorehitpause = 1

[State 4013, Unvulnerable]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 4013, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 4014

[Statedef 4014]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 4014
ctrl = 0
sprpriority = 3

[State 4014, Override]
type = HitOverride
trigger1 = 1
attr = SCA ,AA, AP, AT
stateno = 4016
ignorehitpause = 1

[State 4014, Unvulnerable To Throws]
type = NotHitBy
trigger1 = 1
value = , AT
ignorehitpause = 1

[State 4014, Voice?]
type = PlaySnd
trigger1 = !Time
value = S4014, 0
channel = 0

[State 4014, Bind To Daniel's Hands]
type = BindToRoot
trigger1 = 1
pos = -33, -38
ignorehitpause = 1

[State 4014, Rotate]
type = AngleDraw
trigger1 = 1
value = 11.0*sin(Time)
ignorehitpause = 1

[State 14002, Minamo's Head]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 280,6
hitflag = MAF
animtype = Up
guardflag = M
priority = 5,Hit
pausetime = 0,30
sparkno = s7930+random%8
guard.sparkno = s7911
fall = 1
p1stateno = 4016
fall.damage = 4
fall.recovertime = 0
fall.recover = 0
yaccel = .43
sparkxy = -9,-29
hitsound   = s5,9
guardsound = s6,0
ground.type = Trip
air.slidetime = 9
ground.hittime  = 26
guard.dist = 320
ground.velocity = -9, -3.6
air.velocity = -2.5,-5
envshake.time = 21
envshake.freq = 195
envshake.ampl = -5

[State 4014, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = MoveReversed
trigger3 = root, stateno != 4012
value = 4016
ctrl = 0
ignorehitpause = 1

[Statedef 4016];Get Hit
type = A
movetype= H
physics = N
ctrl = 0
anim = 4014
velset = -8,-8

[State 4016, -45º Degree]
type = AngleDraw
trigger1 = 1
value = -45
ignorehitpause = 1

[State 4016, ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4016, Destroy]
type = DestroySelf
trigger1 = ScreenPos Y <= -98

;Dante, From Intro
[Statedef 62000]
type = S
movetype= I
Physics = N
ctrl = 0
anim = 62000

[State 62000, Walk]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
x = 5

[State 62000, Fall]
type = ChangeState
trigger1 = Time = 180
value = 62001

;Dante, From Intro, Fall Down
[Statedef 62001]
type = S
movetype= I
Physics = N
ctrl = 0
anim = 62001

[State 62001, Instance Destroy]
type = DestroySelf
trigger1 = Time = 105

[Statedef 3062]
type = S
movetype= I
Physics = N
ctrl = 0
anim = 3062
sprpriority = 5

[State 3062, VelSet]
type = VelSet
trigger1 = Time = 0
y = -4

[State 3062, Security]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3062, AngleDraw]
type = AngleDraw
trigger1 = 1
value = Time*3
ignorehitpause = 1

[State 3062, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-time*16, Time-256

[State 3062, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;Violet's Attack, Part 1
[Statedef 17652]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 13.4, 0
juggle = 4
anim = 17652
sprpriority = 2
poweradd = -500

[State 17652, Gravity]
type = VelAdd
trigger1 = 1
y = .2

[State 17652, EX Sound]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 17652, Hit]
type = HitDef
trigger1 = Time = 0
attr = A,SA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Hard
priority = 5,Miss
damage = 25,1
pausetime = 12, 60
guard.pausetime = 8,8
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -5,-20
hitsound = S5,2
guardsound = S6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
air.hittime = 20
ground.velocity = -6,-4
fall = 1
fall.recover = 0
fall.recovertime = 0
down.bounce = 1

[State 17653, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
ignorehitpause = 1

[State 17653, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
stateno = 17655
time = 1
ignorehitpause = 1

[State 17652, ChangeState]
type = ChangeState
trigger1 = MoveHit
value = 17653
ctrl = 0

[State 17652, DestroySelf]
type = DestroySelf
trigger1 = screenpos X < -100 || screenpos X > 420

;Violet's Attack, Part 2
[Statedef 17653]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 17653
sprpriority = 2

[State 17653, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
ignorehitpause = 1

[State 17653, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
stateno = 17655
time = 1
ignorehitpause = 1

[State 17653, ChangeState]
type = ChangeState
trigger1 = pos Y >= 35
value = 17655
ctrl = 0

[State 17653, PlayerPush]
type = PlayerPush
trigger1 = Time = 0
value = 1

[State 17653, Move]
type = VelSet
trigger1 = AnimElem = 3
x = 2

[State 17653, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
x = .85

[State 17653, Feet]
type = VelSet
trigger1 = AnimElem = 8
x = 6
y = 6

[State 17653, Hit A]
type = HitDef
trigger1 = AnimElemTime(3) = 0
attr = A,SA
hitflag = MAFD+
guardflag = MA
getpower = 0,0
animtype = Hard
priority = 5,Hit
damage = 25,1
pausetime = 12, 60
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -5,-20
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
air.hittime = 20
ground.velocity = -6,-4
fall = 1
fall.recover = 0
fall.recovertime = 0
down.bounce = 1

[State 17653, Hit B]
type = HitDef
trigger1 = AnimElemTime(8) = 0
attr = A,SA
hitflag = MAFD+
guardflag = MA
getpower = 0,0
animtype = Back
priority = 5,Hit
damage = 92,1
pausetime = 18, 18
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -5,-20
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
air.hittime = 20
ground.velocity = -12,12
air.velocity = -12,12
fall = 1
p1stateno = 17654
fall.recover = 0
fall.recovertime = 0
down.bounce = 1

;Violet's Attack, Part 3
[Statedef 17654]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0, 0
anim = 17654
sprpriority = 2

[State 17654, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -6
y = -6

[State 17652, DestroySelf]
type = DestroySelf
trigger1 = screenpos X < -100 || screenpos X > 420

;Violet's Attack, FAILED
[Statedef 17655]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0, 0
anim = 17655
sprpriority = 2

[State 17655, VelSet]
type = VelSet
trigger1 = Time = 0
x = -6
y = -6

[State 17655, DestroySelf]
type = DestroySelf
trigger1 = screenpos X < -100 || screenpos X > 420

;========================<SUPER CHARGE Level 3-4>=============================
[Statedef 7501]
physics=N
velset=0,0
anim=9741

[State 7501, Lv3]
type=bgpalfx
trigger1= time<=20
time=1
add=256-ceil(12.8*time),256-ceil(12.8*time),256-ceil(12.8*time)
mul=256-floor(12.8*time),256-floor(12.8*time),256-floor(12.8*time)
color=256-floor(12.8*time)

[State 7501, Lv3]
type=bgpalfx
trigger1= (time=[21,54])
time=1
mul=0,0,0
color=0

[State 7501, Lv3]
type=bgpalfx
trigger1= time>=55
time=1
mul=ceil(51.2*(time-55)),ceil(51.2*(time-55)),ceil(51.2*(time-55))
color=floor(51.2*(time-55))

[State 7501, Portrait]
type=explod
trigger1= time=1
anim=7510
ID=7510
postype=back
pos=160,120
sprpriority=-16
bindtime=-1
pausemovetime=-1
supermovetime=-1

[State 7501, Port]
type=modifyexplod
trigger1= numexplod(7510) && time<8
ID=7510
postype=back
pos=16,120
scale=1,1
trans=addalpha
alpha=(32*time),256

[State 7501, Port]
type=modifyexplod
trigger1= numexplod(7510) && (time=[8,50])
ID=7510
postype=back
pos=160,120
scale=1,1
trans=addalpha
alpha=256,256

[State 7501, Port]
type=modifyexplod
trigger1= numexplod(7510) && time>=50
ID=7510
postype=back
pos=160,120+(8*(time-50))
scale=1+(.25*(time-50)),1+(.25*(time-50))
trans=addalpha
alpha=256-ceil(25.6*(time-50)),256

[State 7501, Safety]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
flag3=nobardisplay

[State 7501, No bars]
type=assertspecial
trigger1= 1
flag=noFG

[State 7501, Safety]
type=removeexplod
trigger1= time>=60

[State 7501, End]
type=destroyself
trigger1= time>=60

;PotS

;Super Spark Helper
[Statedef 7930]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9741
sprpriority = 5

[State 7930, LOL]
type = Explod
trigger1 = Time = 0
anim = 7930+random%8
ID = 7930
pos = 0,0
facing = 1
removetime = -2
supermovetime = 9999
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1

[State 7930, VarSet]
type = VarSet
trigger1 = Time < 10
fvar(0) = 1+(random%4/4)

[State 7930, Create Halos]
type = Explod
trigger1 = Time < 7-(root, var(39))
anim = 8698 ;Up To 7 Halos
ID = 8698
pos = 0,0
vel = -3+random%6,-(random%4)
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
removetime = -2
supermovetime = 0
pausemovetime = 0
ontop = 1
ownpal = 0
scale = fvar(0),fvar(0)

[State 7930, DestroySelf]
type = DestroySelf
trigger1 = !numexplod(7930) && !numexplod(8698)

[Statedef 8696]
type =A
physics = N
velset = 0, 0
anim = 9741
ctrl = 0

[State 8696, HitSpark]
type = Explod
trigger1 = Time = 0
anim = 7920+random%8
ID = 7920
pos = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
ontop = 1
ownpal = 1

[State 8696, VarSet]
type = VarSet
trigger1 = Time < 10
fvar(0) = 0.5+(random%2/2)

[State 8696, Create Halos]
type = Explod
trigger1 = Time < 13-(root, var(38))
anim = 8696 ;Up To 14 Halos
ID = 8696
pos = 0,0
vel = -3+random%6,-(random%4)
removetime = 60
supermovetime = 0
pausemovetime = 0
ontop = 1
ownpal = 1
scale = fvar(0),fvar(0)

[State 8696, DestroySelf]
type = DestroySelf
trigger1 = Time >= 60

