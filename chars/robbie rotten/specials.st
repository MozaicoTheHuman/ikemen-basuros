;-------------SPECIALS------------------------------------------------------
;;---------------------------------------------------------------------------
;Cake
[Statedef 1000]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1000, Cake]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-55
postype = p1
stateno = 1001
priority = 4
ownpal = 1

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 1000,sound]
type = PlaySnd
trigger1 = time = 0
value = 20,3
;---------------------------------------------------------------------------
; Cake Helper
[Statedef 1001]
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
attr = S, SP
damage   = 30,3
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = 0
sparkxy = -10,-15
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
fall = 0
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 20
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
[Statedef 1002]
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

;---------------------------------------------------------------------------
;Air Normal Cake X
;---------------------------------------------------------------------------
[Statedef 1005]
type    = A
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 2

[State 1005, VelSet]
type = VelSet
trigger1 = 1
trigger1 = var(10) = -1
y = .4

[State 1005,sound]
type = Playsnd
trigger1 = time = 10
value = 20,3

[State 1000, Cake]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-20
postype = p1
stateno = 1001
ownpal = 1

[State 1005, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 0

[State 1005,6] ;Bats Hyper
type = Changestate
trigger1 = var(23) =1
value = 2001
ctrl =1

;---------------------------------------------------------------------------
;Electric Cake Y
[Statedef 1010]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2


[State 1010, Cake]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-55
postype = p1
stateno = 1011
ownpal = 1

[State 1010,sound]
type = Playsnd
trigger1 = time = 0
value = 20,3

[State 1015, Spark]
type = Explod
trigger1 = ProjContact1015 = 1
trigger1 = !AnimExist(7696)
anim = 1016
pos = -50, -105
postype = p2
sprpriority = 3
bindtime = -1
ownpal = 1
ontop = 1
persistent = 0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State -2, varrandom]
type = Varset
trigger1 = Time = 0
var(8) = 0

[State 1010, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Electric Cake Helper
;---------------------------------------------------------------------------
[Statedef 1011]
type    = S
movetype = A
physics = N
anim = 1015
velset = 10

[State 1011,sound]
type = Playsnd
trigger1 = time = 4
value = 60,0

[State 1005, Boomerang]
type = VelAdd
trigger1 = 1
x = -0.2

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
attr = S, SP
damage   = 40,3
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound = S9,3
guardsound = S3,0
sparkno = 1
sparkxy = -20,-15
ground.type = High
ground.slidetime = 20
ground.hittime  = 28
ground.velocity = -4
fall = 0
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0
p2stateno = 7696

[State 1002, ]
type = DestroySelf
;trigger1 = time =50
trigger1 = Vel X < 0
trigger1 = Pos X = [parent, Pos X - 30, parent, Pos X + 30]
trigger1 = Pos Y = [parent, Pos Y - 80, parent, Pos Y - 30]
trigger2 = BackEdgeBodyDist <= -120

[State 1001, ChangeState]
type = ChangeState
trigger1 = Movecontact
;trigger2 = abs(Pos X) > 150;FrontEdgeBodyDist <= -10;-120
value = 1012

;Cake Helper Hit
[Statedef 1012]
type    = S
movetype = A
physics = N
anim = 1016

[State -2, 20]
type = Explod
triggerall = !numexplod(1017)
trigger1 = p2stateno = 7696
trigger1 = time = 7
anim = 1017
ID = 1017
bindtime = 100
pos = -10, -20
postype = p2
ontop = 1

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

;---------------------------------------------------------------------------
;Air Electric Cake Y
;---------------------------------------------------------------------------
[Statedef 1015]
type    = A
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 2

[State 1015, VelSet]
type = VelSet
trigger1 = 1
trigger1 = var(10) = -1
y = .4

[State 1015,sound]
type = Playsnd
trigger1 = time = 10
value = 20,3

[State 1010, Cake]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-20
postype = p1
stateno = 1011
ownpal = 1

[State 1015, 3]
type = null;Projectile
trigger1 = AnimElem = 2
attr = S, SP
projID = 1015
projanim = 1015
projhitanim = 1015
projshadow = 68,68,68
offset = 30,-96
velocity = 8,0
damage = 50,10
animtype = Hard
guardflag = MA
pausetime = 0,9
sparkno = 1
sparkxy = -20,-15
hitsound = S9,3
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
p2stateno = 7696

[State 1015, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 0

;---------------------------------------------------------------------------
;Fire Cake Z
[Statedef 1020]
type    = S
movetype= A
physics = S
poweradd= -100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2


[State 1020, 3]
type = null;Projectile
trigger1 = AnimElem = 2
attr = S, SP
projID = 1025
projanim = 1025
projhitanim = 1027
projshadow = 68,68,68
offset = 30,-80
velocity = 8,0
damage = 50,5
animtype = Hard
guardflag = MA
pausetime = 0,9
sparkno = 3
sparkxy = -20,-15
hitsound   = S9,4
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
p2stateno = 7697

[State 1020, Cake]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-55
postype = p1
stateno = 1021
ownpal = 1

[State 1020, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 1020,sound]
type = Playsnd
trigger1 = time = 0
value = 20,3

;---------------------------------------------------------------------------
; Fire Cake Helper
;---------------------------------------------------------------------------
[Statedef 1021]
type    = S
movetype = A
physics = N
anim = 1025
velset = 10

[State 1012,sound]
type = Playsnd
trigger1 = time = 10
value = 60,0

;[State 1005, Boomerang]
;type = VelAdd
;trigger1 = 1
;x = -0.2



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
attr = S, SP
damage = 70,10
animtype = Hard
guardflag = MA
pausetime = 0,9
sparkno = 3
sparkxy = -20,-15
hitsound   = S9,4
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
p2stateno = 7697

[State 1002, ]
type = DestroySelf
trigger1 = time =50
;trigger1 = Vel X < 0
;trigger1 = Pos X = [parent, Pos X - 30, parent, Pos X + 30]
;trigger1 = Pos Y = [parent, Pos Y - 80, parent, Pos Y - 30]
;trigger2 = BackEdgeBodyDist <= -120

[State -2, 20]
type = Explod
triggerall = !numexplod(1027)
trigger1 = movecontact
;trigger1 = time = 7
anim = 1027
ID = 1027
bindtime = 100
pos = 20,5
postype = p2
ontop = 1

[State 1001, ChangeState]
type = Destroyself
trigger1 = Movecontact
;trigger2 = abs(Pos X) > 150;FrontEdgeBodyDist <= -10;-120
;value = 1022

;---------------------------------------------------------------------------
;Air Fire Cake Y
[Statedef 1025]
type    = A
movetype= A
physics = S
poweradd= -100
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 2

[State 1025, VelSet]
type = VelSet
trigger1 = 1
trigger1 = var(10) = -1
y = .4


[State 1025,sound]
type = Playsnd
trigger1 = time = 10
value = 20,3

[State 1025, 3]
type = null
trigger1 = AnimElem = 2
attr = S, SP
projID = 1025
projanim = 1025
projhitanim = 1027
projshadow = 68,68,68
offset = 30,-20
velocity = 8,0
damage = 75,10
animtype = Hard
guardflag = MA
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound   = S9,4
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
p2stateno = 7697

[State 1020, Cake]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Cake"
ID = 1005
pos = 30,-20
postype = p1
stateno = 1021
ownpal = 1

[State 1025, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 0

[State 1025,sound]
type = Playsnd
trigger1 = time = 10
value = 60,0

;-------------------------------------------------------------------------------
;Upper W
[Statedef 1100]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=100
juggle=15


[State 1100,start]   
type=ChangeAnim
trigger1=time=0
value=1100

[State 1100,nohit]   
type=NotHitBy
trigger1=Time=0
value=SCA
time=4

[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 1100, snd]   
type=PlaySnd
trigger1=AnimElem=2
value = 20,9

[State 1100,hit]   
type=HitDef
trigger1=AnimElem=3
attr=S, SA
damage=30,3
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
air.velocity=-3,-8
yaccel=0.45
fall=1
air.fall=1
air.hittime=36

[State 1100]   
type=ChangeState
trigger1=AnimTime=0
value=1101

;-----------------------------------------------------------------------
[Statedef 1101]
type=A
movetype=A
physics=N
juggle=15

[State 1101,hit]   
type=ChangeAnim
trigger1=time=0
value=1101

[State 1101,pos]   
type=PosAdd
trigger1=Time=[2,9]
X=2

[State 1101,vel]   
type=VelSet
trigger1=Time=2
Y=-6

[State 0, ]
type = VarRandom
trigger1 = time >= 0
v = 50
range = -2, 2

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



[State 1101, hitdef]   
type=HitDef
trigger1=AnimElem=1
attr=A, SA
damage=30,3
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

[State 1101, vel]   
type=VelAdd
trigger1=Time >=2
Y=0.4

[State 1101, change]   
type=ChangeState
trigger1=Time > 2 && Pos Y >=0
value=1102

;-----------------------------------------------
[Statedef 1102]
type=S
movetype=I
physics=S
velset=0,0

[State 1102, change]   
type=ChangeAnim
trigger1=time=0
value=1102

[State 1102,pos]   
type=PosSet
trigger1=Time=0
Y=0

[State 1102 , 9]
type = PlaySnd
triggerall = Pos Y >=0
trigger1 = time = 0
value = 8,1

[State 1102, Landing Dust]
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

[State 1102,change]   
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1

;-------------------------------------------------------------------------------
;Upeer H
[Statedef 1110]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=150
juggle=15

[State 1110,change]   
type=ChangeAnim
trigger1=time=0
value=1110

[State 1110,nohit] 
type=NotHitBy
trigger1=Time=0
value=SCA
time=8

[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1


[State 1110,snd]   
type=PlaySnd
trigger1=AnimElem=2
value = 20,9


[State 1110,hit]   
type=HitDef
trigger1=AnimElem=2
attr=S, SA
damage=40,4
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

[State 1110,changehit]   
type=ChangeState
trigger1=AnimTime=0
value=1111

;-----------------------------------------------------------------------
[Statedef 1111]
type=A
movetype=A
physics=N
juggle=15

[State 1110,changes]   
type=ChangeAnim
trigger1=time=0
value=1111

[State 1111, pos]   
type=PosAdd
trigger1=Time=[2,10]
X=4

[State 1111,poss]   
type=PosAdd
trigger1=Time=[11,12]
X=2

[State 1110,vel]   
type=VelSet
trigger1=Time=2
Y=-8

[State 1110,mvel]   
type=VelAdd
trigger1=Time >=2
Y=0.4

[State 0, ]
type = VarRandom
trigger1 = time >= 0
v = 50
range = -2, 2

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



[State 1110,hitdef]   
type=HitDef
trigger1=AnimElem=1
attr=A, SA
damage=40,4
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

[State 1111, end]   
type=ChangeState
trigger1=Time > 2 && Pos Y >=0
value= 1112

;-----------------------------------------------
[Statedef 1112]
type=S
movetype=I
physics=S
velset=0,0

[State 1112, change]   
type=ChangeAnim
trigger1=time=0
value=1112

[State 1112,pos]   
type=PosSet
trigger1=Time=0
Y=0

[State 1102 , 9]
type = PlaySnd
triggerall = Pos Y >=0
trigger1 = time = 0
value = 8,1

[State 1102, Landing Dust]
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

[State 1112,change]   
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; Sugar Apple
[Statedef 1200]
type    = A
movetype= A
physics = S
juggle  = 4
poweradd= -200
ctrl = 0
anim = 1200
sprpriority = 2

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 1200, Apple Helper]
type = Helper
triggerall = !NumExplod(1203)&& !NumHelper(1206)
trigger1= AnimElem = 2
helpertype = normal
name = "Apple"
ID = 1201
pos = 15,-35
postype = P1
facing = 1
stateno = 1201
priority = -2
ownpal = 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------------------------
;Apple Helper
[Statedef 1201]
type    = A
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
anim = 1201
velset = 15,0
sprpriority = 5

[State 1201,0]
type = Gravity
trigger1 = 1

[State 1201, 2]
type = HitDef
trigger1 = Time = 0;AnimElem <= 15
attr = A, NA
damage = 0,0
guardflag = MAFP
hitflag = MAFD
priority = 2
pausetime = 8,8
sparkno = 1
;sparkxy = -5,-15
hitsound   = S2,0
animtype = High
guardsound =S3,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4, 0
down.velocity = -4, 0
air.velocity = -2,-4
fall = 1
p2stateno = 7670
getpower = 0,0

[State 1201,1]
type = ChangeAnim
triggerall = anim != 1202
trigger1 = MoveHit || MoveGuarded
trigger2 = AnimTime = 0
value = 1202

[State 1201,snd]
type = PlaySnd
trigger1 = Movecontact = 1
value = 60,2

[State 1201, Spark]
type = Explod
triggerall =!NumExplod(1203)
trigger1 = Movecontact = 1
anim = 1203
id=1203
pos = 15, -20
postype = p2
facing = -1
sprpriority = 3
bindtime = -1
ownpal = 1
ontop = 1

[State 1201, RemoveExplod]
type = RemoveExplod
trigger1 = p2StateNo = 0
ID = 1203

[State 1201,1]
type = VelSet
trigger1 = 1
x = 3

[State 1201,1]
type = VelMul
trigger1 = Pos Y > 0
y = -0.6

[State 1201,1]
type = VelAdd
trigger1 = Pos Y > 0
x = -1
y = -1

[State 1201, Destroy]
type = DestroySelf
trigger1 = Animtime = 0;time = 20


;---------------------------------------------------------------------------
; Sugar Apple 2
[Statedef 1205]
type    = A
movetype= A
physics = S
juggle  = 4
poweradd= -250
ctrl = 0
anim = 1200
sprpriority = 2

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 1200, Apple Helper]
type = Helper
triggerall = !NumExplod(1203)&& !NumHelper(1206)
trigger1= AnimElem = 2
helpertype = normal
name = "Apple"
ID = 1206
pos = 15,-35
postype = P1
facing = 1
stateno = 1206
priority = -2
ownpal = 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------------------------
;Apple Helper
[Statedef 1206]
type    = A
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
anim = 1201
velset = 20,0
sprpriority = 5

[State 1201,0]
type = Gravity
trigger1 = 1

[State 1201, 2]
type = HitDef
trigger1 = Time = 0;AnimElem <= 15
attr = A, NA
damage = 0,0
guardflag = MAFP
hitflag = MAFD
priority = 2
pausetime = 8,8
sparkno = 3
;sparkxy = -5,-15
hitsound   = S2,1
animtype = High
guardsound =S3,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4, 0
air.velocity = -2,-4
down.velocity= -4,0
fall = 1
p2stateno = 7673

[State 1201,1]
type = ChangeAnim
triggerall = anim != 1202
trigger1 = MoveHit || MoveGuarded
trigger2 = AnimTime = 0
value = 1202

[State 1201,snd]
type = PlaySnd
trigger1 = Movecontact = 1
value = 60,2

[State 0, ]
type = VarRandom
trigger1 = 1
v = 15
range = -10, -75

[State 0, ]
type = VarRandom
trigger1 = 1
v = 16
range = -35, 35


[State 1201, Spark]
type = Explod
triggerall = Time > 1 && Time < 100
trigger1 = (time%1)=0 && Movecontact  && NumHelper(1203) < 15
anim = 1203
id=1203
pos = var(16),var(15)
postype = p2
facing = -1
sprpriority = 3
bindtime = -1
ownpal = 1
ontop = 1

[State 1201, RemoveExplod]
type = RemoveExplod
trigger1 = p2StateNo = 0
ID = 1203

[State 1201,1]
type = VelSet
trigger1 = 1
x = 3

[State 1201,1]
type = VelMul
trigger1 = Pos Y > 0
y = -0.6

[State 1201,1]
type = VelAdd
trigger1 = Pos Y > 0
x = -1
y = -1

[State 1201, Destroy]
type = DestroySelf
trigger1 = AnimTime = 0



;---------------------------------------------------------------------------
;Grapple Gun
;---------------------------------------------------------------------------
[Statedef 1155]
type    = A
movetype = A
physics = N
anim = 1155
ctrl = 0
juggle = 8
velset = 0,0
poweradd = 60

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 0, ]
type = VarRandom
trigger1 = time >= 0
v = 50
range = -2, 2

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



[State 1155,snd]
type = PlaySnd
trigger1 = animelem = 4
value = 60,3

[State 1155,snda]
type = PlaySnd
trigger1 = animelem = 9
value = 60,4

[State 1155, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 16
movetype = I

[State 1155, VelMul]
type = VelMul
trigger1 = 1
y = .995

[State 1155, VelSet]
type = VelSet
trigger1 = AnimElem = 13
y = -20

[State 1055, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 4
y = 20

[State 1055, PosSet]
type = PosAdd
trigger1 = AnimElem = 14
x = 64

[State 1055, VelSet]
type = VelSet
trigger1 = AnimElem = 15
x = 0
y = 0

[State 1055, PosSet]
type = PosSet
trigger1 = AnimElem = 15
y = 0


[State 1055, PosSet]
type = PosSet
trigger1 = AnimElem = 15
y = 0

[State 450, hit]
type = HitDef
trigger1 = animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10
attr = C, NA
damage = 80,0
animtype = hard
guardflag = L
hitflag = MAFD
getpower = 40,160
pausetime = 12,14
sparkno = 2
sparkxy = 0, -32
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -3,-4.5
guard.velocity = -10
air.velocity = -2,-3
down.velocity = -2,-3
fall = 1
fall.recover = 0


[State 450, hit]
type = HitDef
trigger1 = animelem = 11
attr = C, NA
damage = 80,0
animtype = hard
guardflag = L
hitflag = MAFD
getpower = 40,160
pausetime = 12,14
sparkno = 2
sparkxy = 0, -32
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -3,-4.5
guard.velocity = -10
air.velocity = -2,-3
down.velocity = -2,-3
fall = 1
fall.recover = 0

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 16
value = 8, 1

[State 3000, dust]
type = Explod
triggerall = !NumExplod(60)
trigger1 = animelem = 16
id= 60
anim = F60
supermove = 1
ontop = 1
removeongethit = 1

[State 1055, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------------
;grapple swing
;---------------------------------------------------------------------------
 ;---------------------------------------------------------------------------
[Statedef 1050]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd = 50
velset = -0.9,-2
anim = 1050
ctrl=0

[State 1021,1]
type = PosFreeze
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10

;[State 1110,1]
;type = ScreenBound
;trigger1 = Stateno = 1050
;trigger1 = Time < 51
;value = 0
;movecamera = 0, 1

[State 1110,1]
type = PlayerPush
trigger1 = Stateno = 1050
trigger1 = Time < 51
value = 0

[State 1155,snd]
type = PlaySnd
trigger1 = animelem = 1
value = 60,3

[State 1155,snda]
type = PlaySnd
trigger1 = animelem = 2
value = 60,4

[State 200, 1]
type = PlaySnd
trigger1 = animelem=5
value = 8, 3

[State 200, 1]
type = PlaySnd
trigger1 = animelem=5
value = 60, 5
channel=2

[State 100, a7]
type = Explod
trigger1 = Time % 7=0
sprpriority = 7
anim = F590
postype = P1
pos = ifelse(random<500,-5,0),ifelse(random<500,-10,-30)
accel = ifelse(random<500,-.1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
;bindtime= 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

[State 1110,1]
type = VelSet
trigger1 = AnimElem = 3
y = 0
x = 0

[State 1110,1]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1110, 3]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 99,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8,7
numhits = 1
sparkno = 3
sparkxy = -15,-10
guard.sparkno = 40
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -7,-5
guard.slidetime = 12
guard.hittime  = 11
guard.velocity = -11
guard.pausetime = 7,7
airguard.velocity = -6
air.velocity = -7,-4
air.type = Low
air.hittime = 16
fall = 1
fall.recover = 0
fall.animtype = Heavy
fall.envshake.time = 10
fall.envshake.ampl = 5
fall.xvelocity = -5
fall.yvelocity = 18

[State 1110,3]
type = VelAdd
trigger1 = Vel X < 10
trigger1 = time > 5
x = 1.2

[State 1110,4]
type = VelSet
trigger1 = time >= 46
trigger1 = time < 51
x = 6

[State 1110,5]
type = VelSet
trigger1 = time = 50
x = 5
y = -5.8

[State 1110, 7]
type = gravity
trigger1 = time >= 50

;[State 1110,8]
;type = VelAdd
;trigger1 = time >= 46
;trigger1 = Vel X > 0.6
;x = -1.2

;[State 1110,11]
;type = PosSet
;trigger1 = Pos Y >=0
;trigger1 = Time > 50
;y = 0

[State 1110,12]
type = ChangeState
trigger1 = animtime =0 ;Time >= 36
;trigger1 = Pos Y >= 0
value = 660
ctrl=1


;;---------------------------------------------------------------------------
; Cake Wall
;;---------------------------------------------------------------------------
[Statedef 1140]
type    = S
poweradd= 100
velset = 0,0
anim = 1030
ctrl = 0
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = animelem=1
value = 3, 1

[State 1000, Cake]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Cake"
ID = 1141
pos = 0,0
postype = p1
stateno = 1141
priority = 4
ownpal = 1

[State 1000, Cake]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Cakef"
ID = 1142
pos = 5,-15
postype = p1
stateno = 1141
priority = 4
ownpal = 1

[State 1000, Cake]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Caked"
ID = 1143
pos = 5,15
postype = p1
stateno = 1141
priority = 4
ownpal = 1

[State 1000,sound]
type = Playsnd
trigger1 = time = 0
value = 20,3

[State 0, 1]
type = VelAdd
trigger1 = AnimTime = 0
x = 3
y = -3.5

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; Cake Helper
[Statedef 1141]
type    = S
movetype = A
physics = N
anim = 1031
velset =7,5


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
attr = S, SP
damage   = 10,2
animtype = heavy
guardflag = MA
hitflag = MAFD
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = 0
sparkxy = -10,-15
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

[State 1002, ]
type = DestroySelf
trigger1 = time = 100

[State 1001, ChangeState]
type = ChangeState
trigger1 = Movecontact
;trigger2 = abs(Pos X) > 150;FrontEdgeBodyDist <= -10;-120
value = 1002

[State 2310, changestate]
type = ChangeState
trigger1 = Pos Y >= 23
value= 1145
ctrl = 1
;-----------------------------------------
;Cake on the ground finish
[StateDef 1145]
type = S
movetype = A
physics = S
anim =1032
velset=0,0

[State 3155, pSnd]
type = PlaySnd
trigger1 = Time = 0
value = 3,1
channel =7

[State 1001, destroy]
type = Destroyself
trigger1 = Movecontact

[State 2310, DestroySelf]
type = DestroySelf
trigger1 = animtime=0

;;---------------------------------------------------------------------------
; Cake Wall   2
;;---------------------------------------------------------------------------
[Statedef 1150]
type    = S
poweradd= 100
velset = 0,0
anim = 1030
ctrl = 0
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = animelem=1
value = 3, 1

[State 1000, Cake]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Cake"
ID = 1151
pos = 0,0
postype = p1
stateno = 1151
priority = 4
ownpal = 1

[State 1000, Cake]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Cakef"
ID = 1152
pos = 5,-15
postype = p1
stateno = 1151
priority = 4
ownpal = 1

[State 1000, Cake]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Caked"
ID = 1153
pos = 5,15
postype = p1
stateno = 1151
priority = 4
ownpal = 1

[State 1000,sound]
type = Playsnd
trigger1 = time = 0
value = 20,3

[State 0, 1]
type = VelAdd
trigger1 = AnimTime = 0
x = 3
y = -3.5

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; Cake Helper
[Statedef 1151]
type    = S
movetype = A
physics = N
anim = 1060
velset =9,5


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
attr = S, SP
damage   = 40,5
animtype = heavy
guardflag = MA
hitflag = MAFD
pausetime = 0,10
hitsound = S9,4
guardsound =S9,4
sparkno = 0
sparkxy = -10,-15
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7,-2
fall = 1
air.animtype = Back
air.velocity = -4.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0

[State -2, 20]
type = Explod
triggerall = !numexplod(1027)
trigger1 = movecontact
;trigger1 = time = 7
anim = 1027
ID = 1027
bindtime = 100
pos = 20,5
postype = p2
ontop = 1


[State 1002, ]
type = DestroySelf
trigger1 = time = 100

[State 1001, ChangeState]
type = ChangeState
trigger1 = Movecontact
;trigger2 = abs(Pos X) > 150;FrontEdgeBodyDist <= -10;-120
value = 1002

[State 2310, changestate]
type = ChangeState
trigger1 = Pos Y >= 23
value= 1165
ctrl = 1
;-----------------------------------------
;Cake on the ground finish
[StateDef 1165]
type = S
movetype = A
physics = S
anim =1061
velset=0,0

[State 3155, pSnd]
type = PlaySnd
trigger1 = Time = 0
value = 3,1
channel =7

[State 440, 3]
type = HitDef
trigger1 = IsHelper
attr = C, NA
damage    = 90
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = 2
sparkxy = -5,-10
hitsound = S9,4
guardsound = S9,4
ground.type = low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -7.5,-2
down.velocity = -7.5,-2
air.velocity = -7.2,-3
guard.velocity = -5
fall = 1

[State -2, 20]
type = Explod
triggerall = !numexplod(1027)
trigger1 = movecontact
;trigger1 = time = 7
anim = 1027
ID = 1027
bindtime = 1
pos = 20,25
postype = p2
ontop = 1


[State 1001, destroy]
type = Destroyself
trigger1 = Movecontact

[State 2310, DestroySelf]
type = DestroySelf
trigger1 = animtime=0

;---------------------------------------------------------------------------
;Lair Lever
[Statedef 1300]
type    = S
movetype= A
physics = S
poweradd= 20
velset = 0,0
anim = 1300
ctrl = 0
sprpriority = 2

[State 1300, Lever]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "Lever"
ID = 1302
pos = 16,0
postype = p1
stateno = 1302
priority = 99999999999999999999999
ontop = 1
ownpal = 1
size.xscale = 1.2
size.yscale = 1.2
removeongethit = 1

[State 1300, Robbie up]
type = Helper
trigger1 = AnimElem = 12
helpertype = normal
name = "Robbie up"
ID = 1301
pos = -10,135
postype = p1
stateno = 1301
priority = 4
ownpal = 1
removeongethit = 1

[State 1300, VelSet]
type = VelSet
trigger1 = time >=31 && time <= 59
x = 5
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 31
value = S60,3

[State 1300, Turn]
type = Turn
trigger1 = p2dist x < 0
ignorehitpause = 1
persistent = 1

[State 1300, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

;---------------------------------------------------------------------------
;Robbie up
[Statedef 1301]
type    = S
movetype= A
physics = S
poweradd= 0
velset = 0,0
anim = 1301
ctrl = 0
sprpriority = 2

[State 1300, VelSet]
type = VelSet
trigger1 = time <= 12
y = -7.5

[State 1300, VelSet]
type = VelSet
trigger1 = time > 12
y = -5

[State 1300, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 60, 5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2, 2
sparkno = 0
sparkxy = -10, -25
hitsound = S2, 2
guardsound = S3, 0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3,-6
guard.velocity = -1.5
airguard.velocity = -.8,-3
air.type = High
air.velocity = -1.5,-2
air.hittime = 18
fall = 1
getpower = 100,50

[State 1301, DestroySelf]
type = DestroySelf
trigger1 = time = 16

;---------------------------------------------------------------------------
;Lever
[Statedef 1302]
type    = S
movetype= A
physics = S
poweradd= 0
velset = 0,0
anim = 1302
ctrl = 0
sprpriority = 9999

[State 1302, DestroySelf]
type = DestroySelf
trigger1 = time = 18
;---------------------------------------------------------------------------
;Noisy Ball
[Statedef 1400]
type    = S
movetype= A
physics = S
poweradd= -250
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1000, Ball]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Ball"
ID = 1401
pos = 30,-55
postype = p1
stateno = 1401
priority = 4
ownpal = 1

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

;---------------------------------------------------------------------------
; Noisy Ball
[Statedef 1401]
type    = S
movetype = A
physics = N
anim = 1401

[State 1401, Noisy Ball]
type = VelSet
trigger1 = 1
x = 8

[State 1401, Turn]
type = Turn
trigger1 = p2dist x < 0
ignorehitpause = 1
persistent = 1

[State 1005,sound]
type = Playsnd
trigger1 = time = 1
value = 1400,0

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
trigger1 = time <=59 && time %4 = 0
attr = S, SP
damage   = 1,0
animtype = heavy
guardflag =
hitflag = MAFLDP
pausetime = 0,10
hitsound = S123456890,0
guardsound = S1234567890,0
sparkno = 0
sparkxy = -10,-15
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
fall = 0
air.animtype = Back
air.velocity = 0,-0.2
air.juggle = 3
air.fall = 1
down.velocity = 0,0
down.hittime = 20
down.bounce = 0
getpower = 0,0
kill = 0

[State 1401, HitDef]
type = HitDef
trigger1 = time = 60
attr = S, SP
damage   = 1,0
animtype = heavy
guardflag =
hitflag = MAFLDP
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = 0
sparkxy = -10,-15
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
fall = 0
air.animtype = high
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 20
down.bounce = 0
p2stateno = 1402
getpower = 0,0
kill = 0

[State 1002, ]
type = DestroySelf
trigger1 = time = 60

;---------------------------------------------------------------------------
; Ball Hit
[Statedef 1402]
type    = S
movetype= H
physics = N
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0

[State 1402, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5300

[State 1401, 0]
type = PlaySnd
trigger1 = time = 0
value = S11,0

[State 1401, SelfState]
type = SelfState
trigger1 = time = 50
value = 0

;---------------------------------------------------------------------------
; Net
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -250
ctrl = 0
velset = 0,0
anim = 1500

[State 1500, 0]
type = PlaySnd
trigger1 = time = 0
value = S0,1

[State 1500, 0]
type = PlaySnd
trigger1 = time = 0
value = S1500,0

[State 1500, 2]
type = Projectile
trigger1 = Animelem = 3
ProjID = 1502
projanim = 1502
projhitanim = 1503
offset = 60,-45
velocity = 6.5, -4
accel = -0.1,.2
projremove = 1
projremovetime = 60
projscale = .3,.3
attr = S, NP
damage = 10, 0
animtype = Medium
guardflag = MA
hitflag = MAFLDP
priority = 3, Hit
pausetime = 0,12
sparkno = 88888
guard.sparkno = 88888
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 200
air.hittime = 200
ground.velocity = -3
airguard.velocity = -0.8
air.velocity = -1.5
getpower = 0,0
;p2stateno = 1501
kill = 0

[State 1500, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Net Hit
[Statedef 1501]
type    = S
movetype= H
physics = N
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1501

[State 1501, 0]
type = PlaySnd
trigger1 = time = 0
value = S11,1

[State 1501, SelfState]
type = SelfState
trigger1 = time = 200
value = 5050
;---------------------------------------------------------------------------
;Banana peel
[Statedef 1600]
type    = S
movetype= A
physics = S
poweradd= -250
velset = 0,0
anim = 1500
ctrl = 0
sprpriority = 2

[State 1000, Peel]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Peel"
ID = 1601
pos = 30,0
postype = p1
stateno = 1601
priority = 4
ownpal = 1
size.xscale = 0.4
size.yscale = 0.4

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 1000,sound]
type = PlaySnd
trigger1 = time = 0
value = 1600,0
;---------------------------------------------------------------------------
; The peel
[Statedef 1601]
type    = S
movetype = A
physics = N
anim = 1600

[State 1601, AfterImage]
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

[State 1601, HitDef]
type = HitDef
triggerall = time <= 250
trigger1 = time = 0
attr = S, SP
damage  = 100,0
animtype = heavy
guardflag =
hitflag = MAFLP
pausetime = 0,10
hitsound = S1600,1
guardsound = S1234567890,0
sparkno = 0
sparkxy = -10,-15
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
fall = 0
air.animtype = Heavy
air.velocity = 0,-0.2
air.juggle = 3
air.fall = 1
down.velocity = 0,0
down.hittime = 20
down.bounce = 0
getpower = 0,0
kill = 0

[State 1002, ]
type = DestroySelf
trigger1 = time = 260

[State 1002, ]
type = DestroySelf
trigger1 = MoveHit

