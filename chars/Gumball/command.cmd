
;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;-| Super Motions |--------------------------------------------------------
; Super Move
[Command]
name = "Ultimate Combo"
command = D,DF,F,a+b+c
[Command]
name = "Karate Barrage"
command = D,DB,B,b+c
[Command]
name = "Darwin Assist"
command = D,DF,F,b+c
[Command]
name = "Rapid Paintball Shots"
command = D,DF ,F, x+y
[Command]
name = "Gumball Code"
command = D,DB ,B, x+y
[Command]
name = "Hyper Hadouken"
command = D,DF,F, a+b
[Command]
name = "Carrie Possession"
command = D,DB,B,y+z
[Command]
name = "It's the Anaihilator!"
command = D,DF,F,y+z
[Command]
name = "Lightning Shoryuken!"
command = D,DB,B, a+b
[Command]
name = "Lightning Shoryuken"
command = D,DF,F, a+x

;-| Special Motions |------------------------------------------------------
; Special Move
[Command]
name = "Hadouken"
command = D,DF,F, x
[Command]
name = "Hadouken2"
command = D,DF,F, y
[Command]
name = "Hadouken3"
command = D,DF,F, z
[Command]
name = "Clayzooka3"
command = ~D,DB,B, c
[Command]
name = "Clayzooka2"
command = ~D,DB,B, b
[Command]
name = "Clayzooka"
command = ~D,DB,B, a
[Command]
name = "The Anaihilator"
command = ~D,DF,F, a
[Command]
name = "The Anaihilator2"
command = ~D,DF,F, b
[Command]
name = "The Anaihilator3"
command = ~D,DF,F, c
[Command]
name = "Charging Headbutt"
command = D,DB,B, x
[Command]
name = "Charging Headbutt2"
command = D,DB,B, y
[Command]
name = "Charging Headbutt3"
command = D,DB,B, z
[Command]
name = "Shoryuken"
command = ~F,D,DF, x
[Command]
name = "Shoryuken2"
command = ~F,D,DF, y
[Command]
name = "Shoryuken3"
command = ~F,D,DF, z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |---------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
;---------------------------------------------------------------------------
;AI
 [Command]
   name = "AI_1"
   command = a, x, F, D, a, a, D
   time = 1
   
   [Command]
   name = "AI_2"
   command = a, a, a, a, a, a, b
   time = 1
   
   [Command]
   name = "AI_3"
   command = a, a, b, D, F, b, x
   time = 1
   
   [Command]
   name = "AI_4"
   command = y, a, F, b, B, y, a
   time = 1
   
   [Command]
   name = "AI_5"
   command = a, b, x, y, y, b, b
   time = 1
   
   [Command]
   name = "AI_6"
   command = b, y, y, F, b, B, B
   time = 1
   
   [Command]
   name = "AI_7"
   command = a, y, F, a, x, a, F, b
   time = 1
   
   [Command]
   name = "AI_8"
   command = a, a, b, y, x, B, x
   time = 1
   
   [Command]
   name = "AI_9"
   command = x, x, a, F, F, b, D
   time = 1
   
   [Command]
   name = "AI_10"
   command = x, x, a, F, y, a, a, F
   time = 1
   
   [Command]
   name = "AI_11"
   command = a, b, a, x, a, y, a
   time = 1
   
   [Command]
   name = "AI_12"
   command = b, y, a, F, y, a, x
   time = 1
   
   [Command]
   name = "AI_13"
   command = x, a, y, y, x, B, B
   time = 1
   
   [Command]
   name = "AI_14"
   command = a, F, F, x, B, F, x
   time = 1
   
   [Command]
   name = "AI_15"
   command = y, x, b, b, a, x, y
   time = 1

   [Command]
   name = "AI_16"
   command = y, x, a, c, U, D, F
   time = 1

   [Command]
   name = "AI_17"
   command = z, b, c, B, D, a, y
   time = 1

   [Command]
   name = "AI_18"
   command = a, c, b, z, F, x, y
   time = 1

   [Command]
   name = "AI_19"
   command = D, F, b, b, c, a, B
   time = 1

   [Command]
   name = "AI_20"
   command = F, U, a, x, z, B, b
   time = 1

  [Command]
   name = "AI_21"
   command = D, B, z, x, F, U, a
   time = 1

  [Command]
   name = "AI_22"
   command = a, z, a, b, b, x, c
   time = 1

  [Command]
   name = "AI_23"
   command = U, z , a, b, c, x, c
   time = 1

  [Command]
   name = "AI_24"
   command = b, c, a, x, z, y, b
   time = 1

  [Command]
   name = "AI_25"
   command = c, a, b, x, z, y, y
   time = 1

  [Command]
   name = "AI_26"
   command = D, DF, z, x, F, b, a
   time = 1

  [Command]
   name = "AI_27"
   command = D, DB, c, z, U, D, x
   time = 1

  [Command]
   name = "AI_28"
   command = F, B , x, y, a, D, c
   time = 1

  [Command]
   name = "AI_29"
   command = U, c, a, B, D, F, b
   time = 1

  [Command]
   name = "AI_30"
   command = b, x, D, DB, z, a, y
   time = 1
;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
 [State -1, AI]
   type = VarSet
   trigger1 = command = "AI_1"
   trigger2 = command = "AI_2"
   trigger3 = command = "AI_3"
   trigger4 = command = "AI_4"
   trigger5 = command = "AI_5"
   trigger6 = command = "AI_6"
   trigger7 = command = "AI_7"
   trigger8 = command = "AI_8"
   trigger9 = command = "AI_9"
   trigger10 = command = "AI_10"
   trigger11 = command = "AI_11"
   trigger12 = command = "AI_12"
   trigger13 = command = "AI_13"
   trigger14 = command = "AI_14"
   trigger15 = command = "AI_15"
   trigger16 = command = "AI_16"
   trigger17 = command = "AI_17"
   trigger18 = command = "AI_18"
   trigger19 = command = "AI_19"
   trigger20 = command = "AI_20"
   trigger21 = command = "AI_21"
   trigger22 = command = "AI_22"
   trigger23 = command = "AI_23"
   trigger24 = command = "AI_24"
   trigger25 = command = "AI_25"
   trigger26 = command = "AI_26"
   trigger27 = command = "AI_27"
   trigger28 = command = "AI_28"
   trigger29 = command = "AI_29"
   trigger30 = command = "AI_30"
   v = 59
   value = 1
;---------------------------------------------------------------------------
;===== Contact/Hit/Guard =====
;----- MoveContact -----
[State -1, VarSet]
type = VarSet
trigger1 = Time <= 1
trigger2 = StateTime <= 1
ignorehitpause = 1
v = 15
value = 0

[State -1, VarAdd]
type = VarAdd
trigger1 = MoveContact
ignorehitpause = 1
v = 15
value = 1
;--------------------

;----- MoveHit -----
[State -1, VarSet]
type = VarSet
trigger1 = Time <= 1
trigger2 = StateTime <= 1
ignorehitpause = 1
v = 16
value = 0

[State -1, VarAdd]
type = VarAdd
trigger1 = MoveHit
ignorehitpause = 1
v = 16
value = 1
;--------------------

;----- MoveGuarded -----
[State -1, VarSet]
type = VarSet
trigger1 = Time <= 1
trigger2 = StateTime <= 1
ignorehitpause = 1
v = 17
value = 0

[State -1, VarAdd]
type = VarAdd
trigger1 = MoveGuarded
ignorehitpause = 1
v = 17
value = 1
;--------------------
;=========================

;===== Combo Variable =====
;--------------------
; Ground Attack Reset
[State -1, VarSet]
type = VarSet
trigger1 = 1
var(20) = 0

; Ground Attack Check
[State -1, VarSet]
type = VarSet
triggerall = StateType != A
triggerall = HitDefAttr = SC, NA
trigger1 = (StateNo = [200,299]) || (StateNo = [400,499])
var(20) = 1
;--------------------

;--------------------
; Air Attack Reset
[State -1, VarSet]
type = VarSet
trigger1 = 1
var(21) = 0

; Air Attack Check
[State -1, VarSet]
type = VarSet
triggerall = StateType = A
triggerall = HitDefAttr = A, NA
trigger1 = (StateNo = [600,699])
var(21) = 1
;--------------------
;=========================

;===========================================================================
;---------------------------------------------------------------------------
; Recovery Roll
[State -1, VarSet]
type = VarSet
trigger1 = MoveType != H
trigger2 = Var(50) <= 0
var(6) = 0

[State -1, VarSet]
type = VarSet
triggerall = Alive
triggerall = CanRecover
triggerall = Vel Y != 0
triggerall = Var(6) <= 0
triggerall = Var(50) > 0
triggerall = Pos Y < 0
triggerall = HitShakeOver
triggerall = StateType = A
triggerall = MoveType = H
triggerall = StateNo < 5070
trigger1 = Command = "a" && Command = "b"
trigger2 = Command = "b" && Command = "c"
trigger3 = Command = "a" && Command = "c"
var(6) = 1

[State -1, State]
type = ChangeState
value = 5230
triggerall = Alive
triggerall = HitShakeOver
triggerall = CanRecover
triggerall = Var(6) > 0
triggerall = Var(50) > 0
trigger1 = Pos Y >= 0
trigger1 = Vel Y != 0
;---------------------------------------------------------------------------
; Taunt
[State -1, State]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Parry System
;---------------------------------------------------------------------------
;----- Variables -----
[State -1, VarSet]
type = VarSet
triggerall = Var(4) > 0
triggerall = Var(55) = 3
trigger1 = StateType != C
trigger1 = Command != "holdfwd"
trigger2 = StateType = C
trigger2 = Command != "holddown"
ignorehitpause = 1
v = 4
value = 0

[State -1, VarAdd]
type = VarAdd
triggerall = Var(4) < 5
triggerall = Var(55) = 3
trigger1 = StateType != C
trigger1 = Command = "holdfwd"
trigger2 = StateType = C
trigger2 = Command = "holddown"
ignorehitpause = 1
v = 4
value = 1
;--------------------

;----- Override -----
[State -1, Parry]
type = HitOverride
triggerall = Var(55) = 3
triggerall = Var(4) > 0
triggerall = Var(4) < 5
trigger1 = StateType = S
trigger1 = MoveType = I
trigger1 = Ctrl = 1
ignorehitpause = 1
slot = 0
stateno = 990
attr = SCA, AA, AP
time = 1

[State -1, Parry]
type = HitOverride
triggerall = Var(55) = 3
triggerall = Var(4) > 0
triggerall = Var(4) < 5
trigger1 = StateType = C
trigger1 = MoveType = I
trigger1 = Ctrl = 1
ignorehitpause = 1
slot = 0
stateno = 991
attr = SCA, AA, AP
time = 1

[State -1, Parry]
type = HitOverride
triggerall = Var(55) = 3
triggerall = Var(4) > 0
triggerall = Var(4) < 5
trigger1 = StateType = A
trigger1 = MoveType = I
trigger1 = Ctrl = 1
ignorehitpause = 1
slot = 0
stateno = 992
attr = SCA, AA, AP
time = 1
;--------------------

;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------
;Hyper Move: Ultimate Combo
[State -1,State]
type = ChangeState
value = 3050
triggerall = power >= 3000
triggerall= command = "Ultimate Combo"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact

;Super Move: Karate Barrage
[State -1,State]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall= command = "Karate Barrage"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact

;Rapid Paintball Shots
[State -1,State]
type = ChangeState
value = 3001
triggerall = power >= 1000
triggerall=numproj=0
triggerall= command = "Rapid Paintball Shots"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact

;Hyper Hadouken
[State -1,State]
type = ChangeState
value = 3003
triggerall = power >= 2000
triggerall= command = "Hyper Hadouken"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact

;Carrie Possession
[State -1,State]
type = ChangeState
value = 3030
triggerall = power >= 2000
triggerall= command = "Carrie Possession"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact

;It's the Anaihilator!
[State -1,State]
type = ChangeState
value = 3020
triggerall = power >= 1000
triggerall= command = "It's the Anaihilator!"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact



;Lightning Shoryuken
[State -1,State]
type = ChangeState
value = 3002
triggerall = power >= 2000
triggerall= command = "Lightning Shoryuken!"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact


;Lightning Shoryuken
[State -1,State]
type = ChangeState
value = 3014
triggerall = power >= 1000
triggerall= command = "Lightning Shoryuken"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact


;Gumball Code
[State -1,State]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall= command = "Gumball Code"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact

;Darwin Assist
[State -1,State]
type = ChangeState
value = 3015
triggerall = power >= 2000
triggerall= command = "Darwin Assist"
trigger1= statetype= S
trigger1=ctrl
trigger2= stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 230 
trigger4 = movecontact 
trigger5 = stateno=240
trigger5 = movecontact
trigger6= stateno=250
trigger6= movecontact

;===========================================================================
[State -1, State]
type = ChangeState
value = 1017
triggerall = command = "Shoryuken" || command = "Shoryuken2" || command = "Shoryuken3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3= stateno = 200 
trigger3 = movecontact 
trigger4 = stateno = 210 
trigger4 = movecontact 
trigger5 = stateno = 230 
trigger5 = movecontact 
trigger6 = stateno=240
trigger6 = movecontact
trigger7= stateno=250
trigger7= movecontact
trigger8 = stateno = 400 
trigger8 = movecontact
trigger9 = stateno = 410 
trigger9 = movecontact
trigger10 = stateno = 430 
trigger10 = movecontact
trigger11 = stateno = 440 
trigger11 = movecontact
trigger12 = stateno = 1000
trigger12 = movecontact

; Special Move
[State -1, State]
type = ChangeState
value = 1000
triggerall = command = "Hadouken" || command = "Hadouken2" || command = "Hadouken3"
triggerall=numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3= stateno = 200 
trigger3 = movecontact 
trigger4 = stateno = 210 
trigger4 = movecontact 
trigger5 = stateno = 230 
trigger5 = movecontact 
trigger6 = stateno=240
trigger6 = movecontact
trigger7= stateno=250
trigger7= movecontact

[State -1, State]
type = ChangeState
value = 1003
triggerall = command = "Charging Headbutt" || command = "Charging Headbutt2" || command = "Charging Headbutt3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3= stateno = 200 
trigger3 = movecontact 
trigger4 = stateno = 210 
trigger4 = movecontact 
trigger5 = stateno = 230 
trigger5 = movecontact 
trigger6 = stateno=240
trigger6 = movecontact
trigger7= stateno=250
trigger7= movecontact


[State -1, State]
type = ChangeState
value = 1011
triggerall = command = "Clayzooka" || command = "Clayzooka2" || command = "Clayzooka3"
triggerall=!numhelper(1013)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3= stateno = 200 
trigger3 = movecontact 
trigger4 = stateno = 210 
trigger4 = movecontact 
trigger5 = stateno = 230 
trigger5 = movecontact 
trigger6 = stateno=240
trigger6 = movecontact
trigger7= stateno=250
trigger7= movecontact

[State -1, State]
type = ChangeState
value = 1012
triggerall = command = "The Anaihilator" || command = "The Anaihilator2" || command = "The Anaihilator3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3= stateno = 200 
trigger3 = movecontact 
trigger4 = stateno = 210 
trigger4 = movecontact 
trigger5 = stateno = 230 
trigger5 = movecontact 
trigger6 = stateno=240
trigger6 = movecontact
trigger7= stateno=250
trigger7= movecontact


;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Throw
[State -1, State]
type = ChangeState
value = 800
triggerall = ctrl
triggerall = Var(55) < 3
triggerall = statetype = S
triggerall = P2BodyDist X <= 20
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = command = "x" && command = "y"
trigger2 = command = "y" && command = "z"
trigger3 = command = "x" && command = "z"

; Air Throw
[State -1, State]
type = ChangeState
value = 810
triggerall = ctrl
triggerall = Var(55) < 3
triggerall = statetype = A
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = command = "x" && command = "y"
trigger2 = command = "y" && command = "z"
trigger3 = command = "x" && command = "z"

;---------------------------------------------------------------------------
; Taunt
[State -1, State]
type = ChangeState
value = 195
triggerall = Var(50) > 0
triggerall = Var(2) > 0 || Var(5) <= 0
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, State]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = stateno = 210 
trigger3 = movecontact 
trigger4 = stateno = 220 
trigger4 = movecontact
trigger7 = stateno = 230 
trigger7 = movecontact 
trigger7 = stateno = 240 
trigger7 = movecontact 
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, State]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 200 
trigger4 = movecontact 
trigger5 = stateno = 220 
trigger5 = movecontact 
trigger6 = stateno = 230 
trigger6 = movecontact 
trigger7 = stateno = 240 
trigger7 = movecontact 

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, State]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 200 
trigger4 = movecontact 
trigger5 = stateno = 210 
trigger5 = movecontact 
trigger6 = stateno = 230 
trigger6 = movecontact 
trigger7 = stateno = 240 
trigger7 = movecontact 

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, State]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 200 
trigger4 = movecontact 
trigger5 = stateno = 210 
trigger5 = movecontact 
trigger6 = stateno = 220 
trigger6 = movecontact 
trigger7 = stateno = 230 
trigger7 = movecontact 
trigger8 = stateno = 240 
trigger8 = movecontact 


;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, State]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 200 
trigger4 = movecontact 
trigger5 = stateno = 210 
trigger5 = movecontact 
trigger6 = stateno = 220 
trigger6 = movecontact 
trigger7 = stateno = 230 
trigger7 = movecontact

;---------------------------------------------------------------------------
; Stand Strong Kick
[State -1, State]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 200 
trigger4 = movecontact 
trigger5 = stateno = 210 
trigger5 = movecontact 
trigger6 = stateno = 220 
trigger6 = movecontact 
trigger7 = stateno = 230 
trigger7 = movecontact 
trigger8 = stateno = 240 
trigger8 = movecontact 

;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, State]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, State]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 400 
trigger4 = movecontact
trigger5 = stateno = 410 
trigger5 = movecontact
trigger6=stateno=430
trigger6=movecontact
;---------------------------------------------------------------------------
; Crouch Strong Punch
[State -1, State]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 400 
trigger4 = movecontact
trigger5 = stateno = 410 
trigger5 = movecontact
trigger4 = stateno = 430 
trigger4 = movecontact
trigger5 = stateno = 440 
trigger5 = movecontact


;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, State]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 400 
trigger4 = movecontact
trigger5 = stateno = 410 
trigger5 = movecontact

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, State]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 400 
trigger4 = movecontact
trigger5 = stateno = 410 
trigger5 = movecontact
trigger6= stateno = 430 
trigger6=movecontact

;---------------------------------------------------------------------------
; Crouch Strong Kick
[State -1, State]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype != A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 400 
trigger4 = movecontact
trigger5 = stateno = 410 
trigger5 = movecontact
trigger6 = stateno = 430 
trigger6 = movecontact
trigger7 = stateno = 440 
trigger7 = movecontact

;---------------------------------------------------------------------------

; Jump Light Punch
[State -1, State]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype = A
trigger2 = StateNo < 800
trigger3 = stateno = 630 
trigger3 = movecontact


;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, State]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype = A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 630 
trigger5 = movecontact
trigger6 = stateno = 640 
trigger6 = movecontact


;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, State]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype = A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 600 
trigger4 = movecontact
trigger5 = stateno = 610 
trigger5 = movecontact
trigger6 = stateno = 630 
trigger6 = movecontact
trigger7 = stateno = 640 
trigger7 = movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, State]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 
trigger2 = movecontact


;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, State]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype = A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 600 
trigger4 = movecontact
trigger5 = stateno = 610 
trigger5 = movecontact
trigger6 = stateno = 630 
trigger6 = movecontact


;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, State]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Var(2) > 0
trigger2 = Var(15) > 0
trigger2 = statetype = A
trigger2 = StateNo < 800
trigger3 = Var(55) = 2
trigger3 = Var(15) > 0
trigger4 = stateno = 600 
trigger4 = movecontact
trigger5 = stateno = 610 
trigger5 = movecontact
trigger6 = stateno = 630 
trigger6 = movecontact
trigger7 = stateno = 640 
trigger7 = movecontact

;---------------------------------------------------------------------------
