; The CMD file.
;-|Hyper Motions |--------------------------------------------------------
;-----------------


;-| AI activativators |--------------------------------------------------------

[Command]
name = "ai"
command = x,x,x,x,x,x,x,x,x,x
time = 1

[Command]
name = "ai1"
command = y,y,y,y,y,y,y,y,y,y
time = 1

[Command]
name = "ai2"
command = U,U,U,U,U,U,U,U,U,U,U
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z
time = 1

[Command]
name = "ai4"
command = a,b,x,y
time = 1

[Command]
name = "ai5"
command = U,D,F,B
time = 1

[Command]
name = "ai6"
command = D,F,U,B
time = 1

[Command]
name = "ai7"
command = x,D,x,D,x,D,x,D
time = 1

[Command]
name = "ai8"
command = F,F,F,F,F,F,B,U,U
time = 1

[Command]
name = "ai9"
command = F,F,F
time = 1

[Command]
name = "ai10"
command = B,U,U
time = 1

[Command]
name = "ai11"
command = F,F,F,B,U
time = 1

[Command]
name = "ai12"
command = F,B,F,B,F
time = 1

[Command]
name = "ai13"
command = x,y,a,b
time = 1


;------------------------------------------------------------------

[Command]
name = "cakes"
command = D, DF, F, x+y
time = 15

[Command]
name = "trex"
command = D, DB, B, a+b
time = 15

[Command]
name = "sportacus"
command = D, DB, B, x+y
time = 15

[Command]
name = "diabetes"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "ship"
command = ~D, DF, F, a+c
time = 15

[Command]
name = "cannon"
command = D, DF, F, x+z
time = 15

[Command]
name = "clone"
command = D, DB, B, x+z
time = 15

;-| Special Motions |------------------------------------------------------

;cakes
[Command]
name = "cake_x"
command = ~D, F, x
time = 15

[Command]
name = "cake_y"
command = ~D, F, y
time = 15

[Command]
name = "cake_z2"
command = ~D, B, x
time = 15

[Command]
name = "cake_z"
command = ~D, F, x+y
time = 15

;Upper
[Command]
name = "Upper"
command = ~F, D , DF, x
time = 15

;Upper
[Command]
name = "UpperS"
command = ~F, D , DF, y
time = 15

[Command]
name = "bat_do"
command =~D, DB, B, x
time = 15

[Command]
name = "bat_do2"
command =~D, DB, B, y
time = 15

[Command]
name = "Peel"
command = ~D, D, x
time = 20

[Command]
name = "Peel"
command = ~D, D, y
time = 20

[Command]
name = "Peel"
command = ~D, D, a
time = 20

[Command]
name = "Peel"
command = ~D, D, b
time = 20

[Command]
name = "Ball"
command = ~B, F, x
time = 10

[Command]
name = "Ball"
command = ~B, F, y
time = 10

[Command]
name = "Net"
command = ~B, F, a
time = 10

[Command]
name = "Net"
command = ~B, F, b
time = 10

[Command]
name = "Sugar Apple_a"
command = ~D, DF, F, a
time = 10

[Command]
name = "Sugar Apple_b"
command = ~D, DF, F, b
time = 10

[Command]
name = "Lair Lever"
command = D,DB,B,a
time = 30

[Command]
name = "Lair Lever"
command = D,DB,B,b
time = 30

[Command]
name = "holdpunch"
command = /x
time = 5

[Command]
name = "holdpunch"
command = /y
time = 5

[Command]
name = "holdpunch"
command = /z
time = 5

[Command]
name = "holdkick"
command = /a
time = 5

[Command]
name = "holdkick"
command = /b
time = 5

[Command]
name = "holdkick"
command = /c
time = 5



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Super Jump Commands |---------------------------------------------------
[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DU"
command = D, UB
time = 10

[Command]
name = "DU"
command = D, UF
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+z
time = 1

[Command]
name = "guardpush"
command = z+y
time = 1

[Command]
name = "DU"
command = a+b+c
time = 1

[Command]
name = "run"
command = x+y+z
time = 1

[Command]
name = "throw"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

[State 0, VarSet]
type = VarSet
triggerall = ishelper(127)
trigger1 = 1
triggerall = var(7) != -1
v = 7    ;fv = 10
value = 1

[State -1, AI Helper Check]
type = ChangeState
triggerall = roundno >= 1
triggerall = roundstate >= 0
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
triggerall = roundno >= 1
triggerall = roundstate >= 0
trigger1 = IsHelper(9742)
value = 9742

[State -1, Go]
type = DestroySelf
triggerall = roundno >= 1
triggerall = roundstate >= 0
trigger1 = IsHelper
trigger1 = movereversed = 1

;===========================================================================
;SUPERS

;cannon
[State -1, cannon]
type = ChangeState
value = 3400
triggerall = command = "cannon"
triggerall = power >= 3000 && life <= 250
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

;ship
[State -1, ship]
type = ChangeState
value = 3300
triggerall = var(7) <= 0
triggerall = command = "ship"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

;Sportacus Disguise
[State -1, Sportacus Disguise]
type = ChangeState
value = 3100
triggerall = var(7) <= 0
triggerall = command = "sportacus"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

;Hyper -cakes
[State -1, Cakes]
type = ChangeState
value = 3000
triggerall = var(7) <= 0
triggerall = command = "cakes"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

;Hyper -cakes
[State -1, Cakes]
type = ChangeState
value = 3002
triggerall = var(7) <= 0
triggerall = command = "cakes"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (MoveContact)
trigger3 = (stateno = 610) && (MoveContact)
trigger4 = (stateno = 630) && (MoveContact)
trigger5 = (stateno = 640) && (MoveContact)

;T Rex Disguise
[State -1, T Rex Disguise]
type = ChangeState
value = 3200
triggerall = var(7) <= 0
triggerall = command = "trex"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

;Diabetes
[State -1, Diabetes]
type = ChangeState
value = 2000
triggerall = var(7) <= 0
triggerall = command = "diabetes"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)


;===========================================================================
;---------------------------------------------------------------------------
;SPECIALS
;---------------------------------------------------------------------------
;Upper (weak)
;---------------------------------------------------------------------------
[State -1, Upper]
type = ChangeState
value = 1100
triggerall = var(7) <= 0
triggerall = command = "Upper"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

[State -1, Upper]
type = ChangeState
value = 1110
triggerall = var(7) <= 0
triggerall = command = "UpperS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)
trigger7 = (stateno = 1100) && (MoveContact)


;===========================================================================
;Cake Z
[State -1, Cake Z]
type = ChangeState
value = 1020
triggerall = var(7) <= 0
triggerall = command = "cake_z2" && NumHelper(1005) < 1
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

;Cake X
[State -1, Cake X]
type = ChangeState
value = 1000
triggerall = var(7) <= 0
triggerall = command = "cake_x" && NumHelper(1005) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

;Cake Y
[State -1, Cake Y]
type = ChangeState
value = 1010
triggerall = var(7) <= 0
triggerall = command = "cake_y" && NumHelper(1005) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

;------------------------------------------------------------------------
;Net
[State -1, Net]
type = ChangeState
value = 1500
triggerall = var(7) <= 0
triggerall = statetype != A
triggerall = command = "Net"
triggerall = power >=250
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact

;Banana Peel
[State -1, Banana Peel]
type = ChangeState
value = 1600
triggerall = var(7) <= 0
triggerall = statetype != A
triggerall = command = "Peel"
triggerall = power >= 250
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact

;Noisy Ball
[State -1, Noisy Ball]
type = ChangeState
value = 1400
triggerall = var(7) <= 0
triggerall = statetype != A
triggerall = command = "Ball"
triggerall = power >= 250
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact

;Lair Lever
[State -1, Lair Lever]
type = ChangeState
value = 1300
triggerall = var(7) <= 0
triggerall = statetype != A
triggerall = command = "Lair Lever"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact

;Grapple gun 2
;[State -1, Grap]
;type = ChangeState
;value = 1050
;triggerall = statetype = A
;triggerall = command = "trop"
;trigger1 = ctrl
;trigger2 = stateno = 600 && MoveContact
;trigger3 = stateno = 610 && MoveContact
;trigger4 = stateno = 630 && MoveContact
;trigger5 = stateno = 640 && MoveContact
;trigger6 = stateno = 660



;Sugar Apple A
[State -1, Sugar Apple A]
type = ChangeState
value = 1200
triggerall = var(7) <= 0
triggerall = command = "Sugar Apple_a"
triggerall = p2stateno !=  7670
triggerall = p2stateno !=  7673
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact

;Sugar Apple B
[State -1, Sugar Apple B]
type = ChangeState
value = 1205
triggerall = var(7) <= 0
triggerall = p2stateno !=  7670
triggerall = p2stateno !=  7673
triggerall = command = "Sugar Apple_b"
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 430 && MoveContact
trigger6 = stateno = 440 && MoveContact


;---------------------------------------------------------------------------

;Air Cake Wall
[State -1]
type = ChangeState
value = 1140
triggerall = var(7) <= 0
triggerall = statetype = A
trigger1 = command = "bat_do"
trigger1 = backedgebodydist <= 2
trigger1 = ctrl = 1
trigger1 = anim = 41 || anim = 43
trigger2 = command = "bat_do"
trigger2 = frontedgebodydist <= 2
trigger2 = ctrl = 1
trigger2 = anim = 42 || anim = 44

;Air Cake Wall
[State -1]
type = ChangeState
value = 1150
triggerall = var(7) <= 0
triggerall = statetype = A
trigger1 = command = "bat_do2"
trigger1 = backedgebodydist <= 2
trigger1 = ctrl = 1
trigger1 = anim = 41 || anim = 43
trigger2 = command = "bat_do"
trigger2 = frontedgebodydist <= 2
trigger2 = ctrl = 1
trigger2 = anim = 42 || anim = 44



;Air Cake Z
[State -1, Air_Cake Z]
type = ChangeState
value = 1025
triggerall = var(7) <= 0
triggerall = command = "cake_z2" && NumHelper(1005) < 1
triggerall = power >= 100
trigger1 = statetype = A
trigger1 = stateno != 105
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
trigger6 = stateno = 660


;Air Cake X
[State -1, Air_Cake X]
type = ChangeState
value = 1005
triggerall = var(7) <= 0
triggerall = command = "cake_x" && NumHelper(1005) < 1
trigger1 = statetype = A
trigger1 = stateno != 105
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
trigger6 = stateno = 660

;Air Cake Y
[State -1, Air_Cake Y]
type = ChangeState
value = 1015
triggerall = var(7) <= 0
triggerall = command = "cake_y" && NumHelper(1005) < 1
trigger1 = statetype = A
trigger1 = stateno != 105
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
trigger6 = stateno = 660


;---------------------------------------------------------------------------
 ;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 60
triggerall = var(7) <= 0
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup" && Var(3) != 1
trigger2 = stateno = 410 && MoveContact


;---------------------------------------------------------------------------
;Run Forward
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = var(7) <= 0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = command = "FF"
trigger2 = command = "run"

;Dash Forward (Air)
[State -1, Dash Fwd Air]
type = ChangeState
value = 107
triggerall = var(7) <= 0
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 107
trigger1 = command = "FF"
trigger2 = command = "run"

; Bounce With Wall
[State -1]
type = ChangeState
value = 48
triggerall = var(7) <= 0
triggerall = statetype = A
trigger1 = command = "holdfwd"
trigger1 = backedgebodydist <= 2
trigger1 = ctrl = 1
trigger1 = anim = 41 || anim = 43
trigger2 = command = "holdback"
trigger2 = frontedgebodydist <= 2
trigger2 = ctrl = 1
trigger2 = anim = 42 || anim = 44

;---------------------------------------------------------------------------
;Dash Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(7) <= 0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = command = "BB"

;Dash Back Air
[State -1, Run Back Air]
type = ChangeState
value = 108
triggerall = var(7) <= 0
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 108
trigger1 = command = "BB"

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;===========================================================================
; Throw
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = var(7) <= 0
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Throw 2]
type = ChangeState
value = 810
triggerall = var(7) <= 0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = var(7) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Strong  Punch
[State -1]
type = ChangeState
value = 210
triggerall = var(7) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = var(7) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact

;Stand Strong  Kick
[State -1]
type = ChangeState
value = 240
triggerall = var(7) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact


;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(7) <= 0
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = var(7) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouch Strong Punch
[State -1]
type = ChangeState
value = 410
triggerall = var(7) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 430 && MoveContact


;---------------------------------------------------------------------------
;Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = var(7) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact

;Crouch Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(7) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 430 && MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = var(7) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Strong Punch
[State -1]
type = ChangeState
value = 610
triggerall = var(7) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact



;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = var(7) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact

;Jump Strong Kick
[State -1]
type = ChangeState
value = 640
triggerall = var(7) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact


;----------------------------------------------------------------------------



;===========================================================================
;---------------------------------------------------------------------------
; AI <Stuff>
;---------------------------------------------------------------------------

;------------------------------------
;AI Guardia (parado)
;------------------------------------
[State -1]
type = null;ChangeState
triggerall = Statetype != A
triggerall = Statetype = S
triggerall = (Var(1)) && (Ctrl)
triggerall = p2bodydist X <= 100
trigger1 = (P2statetype != C) && (P2Movetype = A)
value = 130

;------------------------------------
;AI Guardia (par-aga)
;------------------------------------
[State -1]
type = ChangeState
triggerall = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = StateNo = 150
value = 152

;------------------------------------
;AI Guardia (Agachado)
;------------------------------------
[State -1]
type = null;ChangeState
triggerall = StateType != A
triggerall = (Var(1)) && (Ctrl)
triggerall = p2bodydist X <= 100
trigger1 = (P2statetype = C) && (P2Movetype = A)
trigger2 = (P2statetype != C) && (P2Movetype = A)
value = 131

;------------------------------------
;AI Guardia (aga-par)
;------------------------------------
[State -1]
type = ChangeState
triggerall = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = StateNo = 152
value = 150

;------------------------------------
;AI Guardia (aereo)
;------------------------------------
[State -1]
type = null;ChangeState
triggerall = Statetype = A
triggerall = (Var(1)) && (Ctrl)
triggerall = p2bodydist X <= 100
trigger1 = P2Movetype = A
value = 132

;------------------------------------
;AI Guardia (aer-aga)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155
value = 152

;------------------------------------
;AI Guardia (aer-par)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype != C
trigger1 = stateno = 154
trigger2 = stateno = 155
value = 150


;------------------------------------
;AI Air Recovery
;------------------------------------
[State -1]
type = ChangeState
value = 5210
triggerall = Var(7) >= 1
triggerall = StateType = A
triggerall = StateType != L
triggerall = Pos Y < -20
triggerall = Alive
trigger1 = CanRecover = 1
trigger1 = StateNo = 5050

;------------------------------------
;AI Air Recovery (suelo)
;------------------------------------
[State -1]
type = ChangeState
value = 5200
triggerall = Var(7) >= 1
triggerall = StateType = A
triggerall = StateType != L
triggerall = Pos Y >= -20
triggerall = Alive
trigger1 = CanRecover = 1
trigger1 = StateNo = 5050

;- | AI Dashes | ----------------------------------------------------------

[State -1]
type = ChangeState
value = 102
triggerall = var(7) > 0
triggerall = var(8) = [0,1]
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 102) && (prevstateno != 102)
trigger1 = P2BodyDist X >= 20
trigger1 = ctrl 

[State -1]
type = ChangeState
value = 20
triggerall = var(7)
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl 

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(7) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 900)
trigger2 = (p2bodydist x <= 40) && (stateno = 100)
value = 200


[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(7) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact
value = 210

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(7) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact
value = 230

;Start Standing Chain Combo
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(7) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = [210,211]) && movecontact
value = 240

[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(7) > 0;
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 30
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random < 100 
trigger1 = pos y = 0

[State -1,AI Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(7) > 0
triggerall = p2statetype != A && p2statetype != L 
trigger1 = stateno = 400
trigger1 = movehit
trigger1 = random < 100

;End Crouching Chain

[State -1,  Always superjump on launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(7) > 0)
triggerall = (random <= 900)
trigger1 = (stateno = 410) && movecontact
value = 62

[State -1]
type = ChangeState
value = 195
triggerall = var(7) > 0
triggerall = var(8) = 1
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A)
trigger1 = P2BodyDist X = [100,115]
trigger1 = ctrl 

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(7) > 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [60,61])
value = 600

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(7) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 600) && movecontact
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(7) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 600) && movecontact && (random = [500,999])
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(7) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 630) && movecontact
value = 640

[State -1]
type = ChangeState
value = 1110
triggerall = Var(7) >= 1
triggerall = var(8) = [2,3]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 102) && (prevstateno != 102)
trigger1 = P2BodyDist X <= 30
trigger1 = ctrl 

[State -1]
type = ChangeState
value = 1000
triggerall = Var(7) >= 1
triggerall = var(8) = [2,3]
triggerall = !NumHelper(1001)
triggerall = !NumHelper(1005)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X = [20,220]
trigger1 = ctrl 


[State -1]
type = ChangeState
value = 1155
triggerall = Var(7) >= 1
triggerall = var(8) = [2,3]
triggerall = prevstateno = 1010
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X = [60,100]
trigger1 = ctrl 
;---------------------------------------------------------------------------
;cannon VS special
[State -1, cannon VS special]
type = ChangeState
value = 3400
triggerall = Var(7) >= 1
triggerall = random <=10
triggerall = statetype != A
triggerall = ctrl
trigger1 = enemynear,Name = "Tendril"
trigger2 = enemynear,Name = "SLIME"
trigger3 = enemynear,Name = "kuromaru"
trigger4 = enemynear,Name = "Slime"
trigger5 = enemynear,name = "I-No" && enemynear,Authorname = "MEKA"
trigger6 = enemynear,Name = "gurospooo"
trigger7 = enemynear,Name = "chanpuru"
trigger8 = enemynear,Name = "D4miku"
trigger9 = enemynear,Name = "Minotaur"
trigger10 = enemynear,Name = "slime plus"
trigger11 = authorName = "n"
trigger12 = enemynear,Name = "penis"
trigger13 = var (11) = 1

;ship VS special
[State -1, ship]
type = ChangeState
value = 3300
triggerall = Var(7) >= 1
triggerall = random <=10
triggerall = statetype != A
triggerall = ctrl
trigger1 = enemynear,Name = "Tendril"
trigger2 = enemynear,Name = "SLIME"
trigger3 = enemynear,Name = "kuromaru"
trigger4 = enemynear,Name = "Slime"
trigger5 = enemynear,name = "I-No" && enemynear,Authorname = "MEKA"
trigger6 = enemynear,Name = "gurospooo"
trigger7 = enemynear,Name = "chanpuru"
trigger8 = enemynear,Name = "D4miku"
trigger9 = enemynear,Name = "Minotaur"
trigger10 = enemynear,Name = "slime plus"
trigger11 = authorName = "n"
trigger12 = enemynear,Name = "penis"
trigger13 = var(11) = 1
