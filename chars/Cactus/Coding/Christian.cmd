
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]

command.time = 15
command.buffer.time = 1
;-------------------------------------------------------------------------------
;A.I. ACTIVATION
[Command]
name = "AI_1"
command = FF, FF, F, D, a, a, D
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
;-| Super Motions |--------------------------------------------------------

[command]
name = "4-Hit Rushdown"
command = ~D, DB, B, a+b
time = 20

[command]
name = "Kamehameha"
command = ~D, DF, F, a+b
time = 20

[command]
name = "Shotgun"
command = ~D,DF,F,y+z 
time = 15

[command]
name = "Shun Taydo Satsu"
command = ~D, DB, B, DB, D, DF, F, x
time = 42

;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "Hadoken"
command = ~D, DF, F, x
time = 12

[Command]
name = "Burning Knuckle"
command = ~D, DF, F, y
time = 12

[Command]
name = "NES Zapper"
command = ~D, DB, B, x
time = 12

[Command]
name = "HaruhiStriker"
command = a+x

[Command]
name = "PowerCharge"
command = /b+y
time = 10

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
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "start"
command = s
time = 1

[Command]
name = "SuperJump"
command = $D, $U
time = 10


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

[Command]
name = "hold_s"
command = /$s
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$z
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_c"
command = /$z
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
; 2. State entry
[Statedef -1]

;-|-AI-|--------------------------------------------------------------------
[State -1, AI]
type = VarSet
triggerall = roundstate = [1,2]
triggerall = life >= 1
triggerall = var(59) != 1
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
v = 59
value = 1 ;set to this for Hard mode
;value = 2 ;set to this for Normal mode



;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1
triggerall = stateno = 100 || Ctrl
triggerall = p2movetype = A && statetype = S
trigger1 = p2bodydist X <= 250 && random <= 799
value = 130

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1
triggerall = stateno = 100 || Ctrl
triggerall = p2movetype = A && statetype = C
trigger1 = p2bodydist X <= 250 && random <= 799
value = 131

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1
triggerall = stateno = 100 || Ctrl
triggerall = p2movetype = A && statetype = A
trigger1 = p2bodydist X <= 250 && random <= 799
value = 132

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2
triggerall = Ctrl && p2movetype = A && statetype = S
trigger1 = p2bodydist X <= 250 && random <= 799
value = 130

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2
triggerall = Ctrl && p2movetype = A && statetype = C
trigger1 = p2bodydist X <= 250 && random <= 799
value = 131

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2
triggerall = Ctrl && p2movetype = A && statetype = A
trigger1 = p2bodydist X <= 250 && random <= 799
value = 132

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1
trigger1 = p2movetype = A && statetype = S
trigger1 = stateno = 150
value = 1100

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1
trigger1 = p2movetype = A && statetype = C
trigger1 = stateno = 151
value = 1000

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1
trigger1 = p2movetype = A && statetype = A
trigger1 = stateno = 152
value = 1100

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2
trigger1 = p2movetype = A && statetype = S
trigger1 = stateno = 150 && random <= 333
value = 1000

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2
trigger1 = p2movetype = A && statetype = C
trigger1 = stateno = 151 && random <= 333
value = 1100

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2
trigger1 = p2movetype = A && statetype = A
trigger1 = stateno = 152 && random <= 333
value = 1000

;-|-AI Combo Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1
triggerall = Ctrl && statetype = S
triggerall = numhelper(1050) = 0
triggerall = random < 444
trigger1 = p2bodydist X > 60
value = 1100

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2
triggerall = Ctrl && statetype = S
triggerall = numhelper(1050) = 0
triggerall = random < 222
trigger1 = p2bodydist X > 80
value = 1000

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0 && p2statetype != L
triggerall = Ctrl && statetype = S
triggerall = stateno != 100
trigger1 = numhelper(1050) = 1
trigger2 = p2bodydist X > 20
value = 100

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0 && p2statetype = L
triggerall = Ctrl && statetype = S
triggerall = stateno != 100
trigger1 = numhelper(1050) = 1
trigger2 = p2bodydist X <= 50
value = 105

[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && var(59) = 1 && p2statetype != L
triggerall = stateno = 100 || ctrl
trigger1 = StateType != A
trigger1 = p2bodyDist X <= 20
trigger1 = stateno != 200
triggerall = random > 666
triggerall = stateno != [3000,7999]
triggerall = stateno != [800,899]

[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && var(59) = 2 && p2statetype != L
triggerall = statetype != A && ctrl
trigger1 = p2bodyDist X <= 20
trigger1 = stateno != 200
trigger2 = stateno = 200 && moveguarded
triggerall = stateno != [3000,7999]
triggerall = stateno != [800,899]
triggerall = random <= 499

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 232 && statetype = S && movehit
trigger1 = p2bodydist X <= 20
value = 210

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0 && var(13) = 0
triggerall = stateno = 200 && statetype = S && movehit
trigger1 = p2bodydist X <= 25
value = 221

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 210 && statetype = S && movehit
trigger1 = p2bodydist X <= 25
value = 240

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1
trigger1 = stateno = 240 || stateno = 210 && statetype = S && movehit
value = 1000

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2
trigger1 = stateno = 240 || stateno = 210 && statetype = S && movehit
value = 1100

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1 && p2statetype != L
triggerall = statetype != A && ctrl
trigger1 = p2bodydist X <= 20
triggerall = random <= 666
value = 400

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2 && p2statetype != L
triggerall = statetype != A && ctrl
trigger1 = p2bodydist X <= 20
triggerall = random > 499
value = 400

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 430 && statetype = C && movehit
trigger1 = p2bodydist X <= 25
value = 410

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 400 && statetype = C && movehit
trigger1 = p2bodydist X <= 25
value = 430

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0 && var(13) = 0
triggerall = stateno = 410 && statetype = C && movehit
trigger1 = p2bodydist X <= 25
value = 440

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1
triggerall = stateno = 440 && statetype = C && movehit
trigger1 = p2bodydist X <= 25 && random <= 499
value = 420

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 1 && var(13) = 1
triggerall = stateno = 410 && statetype = C && movehit
trigger1 = p2bodydist X <= 25 && random > 499
value = 450

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2
triggerall = stateno = 440 && statetype = C && movehit
trigger1 = p2bodydist X <= 25 && random > 299
value = 420

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) = 2 && var(13) = 1
triggerall = stateno = 410 && statetype = C && movehit
trigger1 = p2bodydist X <= 25 && random <= 299
value = 450

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 450 && statetype = C && movehit
trigger1 = p2bodydist X <= 25
value = 1100

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = Ctrl && statetype = A
trigger1 = p2bodydist X <= 25 && p2bodydist y > 10
trigger2 = p2bodydist X <= 25 && p2bodydist y < -10
value = 600

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 630 && statetype = A && movehit
trigger1 = p2bodydist X <= 25
value = 610

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 600 && statetype = A && movehit
trigger1 = p2bodydist X <= 25
value = 630

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 610 && statetype = A && movehit
trigger1 = p2bodydist X <= 25
value = 640

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = power < 500
triggerall = stateno = 640 && statetype = A && movehit
trigger1 = p2bodydist X <= 25
value = 620

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = power >= 500 && power < 1000
triggerall = stateno = 640 && statetype = A && movehit
trigger1 = p2bodydist X <= 25
value = 1000

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = power >= 500 && power < 1000
triggerall = stateno = 640 && statetype = A && movehit
trigger1 = p2bodydist X <= 25
value = 1100

;-|-AI Attempt Hyper-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = power >= 1000
triggerall = roundstate = 2 && var(59) = 1
triggerall = statetype != A && p2statetype != L
trigger1 = Ctrl && p2bodydist x <= 35
trigger1 = prevstateno != 5120 && (numproj = 0)
trigger1 = statetype != A && random = [0,300]
trigger2 = stateno = 1000 && movehit && statetype != A && var(13) = 0
value = 3000

[State -1]
type = ChangeState
triggerall = power >= 1000
triggerall = roundstate = 2 && var(59) != 0
triggerall = p2statetype != l
trigger1 = Ctrl && p2bodydist x <= 50
trigger1 = prevstateno != 5120 && (numproj = 0)
trigger1 = statetype != A && random = [0,300]
trigger2 = stateno = 3000
trigger2 = AnimElem = 11
value = 4222

[State -1]
type = ChangeState
triggerall = power >= 3000
triggerall = roundstate = 2 && var(59) != 0
triggerall = Ctrl && statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 50 && prevstateno != 5120
trigger1 = numproj = 0 && statetype != A
trigger1 = random = [0,300]
trigger2 = stateno = 450 && movehit && statetype != A
value = 8000

[State -1]
type = ChangeState
triggerall = power >= 1000
triggerall = roundstate = 2 && var(59) = 1
triggerall = p2statetype != L
trigger1 = Ctrl && p2bodydist x <= 50 && prevstateno != 5120 && numproj = 0 && statetype != A
trigger1 = Ctrl && power >= 1000 && numproj = 0 && random = [0,300]
trigger2 = stateno = 640 && statetype = A && movehit
trigger3 = stateno = 1000 && statetype = S && movehit && var(13) = 1
value = 3000

[State -1]
type = ChangeState
triggerall = power >= 1000
triggerall = roundstate = 2 && var(59) = 2
triggerall = p2statetype != L
trigger1 = Ctrl && p2bodydist x <= 50 && prevstateno != 5120 && numproj = 0 && statetype != A
trigger1 = Ctrl && power >= 1000 && numproj = 0 && random = [0,300]
trigger2 = stateno = 640 && statetype = A && movehit
trigger3 = stateno = 1000 && statetype = S && movehit && var(13) = 1
value = 3000

;---------------------------------------------------------------------------
;Power Charge
[State -1]
type = ChangeState
value = 1600
triggerall = command = "PowerCharge"
triggerall = power < powermax
trigger1 = command = "b" && command ="y" 
trigger1 = ctrl
trigger1 = statetype != A
;---------------------------------------------------------------------------
;Burning Knuckle
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Burning Knuckle"
triggerall = Power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = movecontact
;---------------------------------------------------------------------------
;Assist Haruhi
[State -1, Assist Haruhi]
type = ChangeState
value = 8000
triggerall = command = "HaruhiStriker"
triggerall = numhelper(8000) !=1
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4-Hit Rushdown]
type = ChangeState
value = 4222
triggerall = command = "4-Hit Rushdown"
triggerall = power >= 1000
triggerall = Statetype != A
trigger1 = ctrl || ((stateno = [200,499]) && MoveContact)
trigger2 = movecontact
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno != [3000,5999)
trigger2 = stateno != [6000,125000)
;---------------------------------------------------------------------------
[State -1, Shun Taydo Satsu]
type = ChangeState
value = 4100
triggerall = command = "Shun Taydo Satsu"
triggerall = command != "holddown"
triggerall = power >= 4000 ;power>3000
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
;---------------------------------------------------------------------------
[State -1, Kamehameha]
type = ChangeState
value = 3000
triggerall = command = "Kamehameha"
triggerall = power >= 2000
triggerall = Statetype != A
trigger1 = ctrl 
trigger2 = var(1)>0
;---------------------------------------------------------------------------
[State -1, Shotgun]
type = ChangeState
value = 3050
triggerall = command = "Shotgun"
triggerall = power >= 3000
triggerall = Statetype != A
trigger1 = ctrl 
trigger2 = var(1)>0
;---------------------------------------------------------------------------
;NES Zapper
[State -1, NES Zapper]
type = ChangeState
value = 1566
triggerall = command = "NES Zapper"
triggerall = Power >= 1000
triggerall = Statetype = S
trigger1 = ctrl
trigger2 = var(1)>0
;---------------------------------------------------------------------------
;Hadoken
[State -1, Hadoken]
type = ChangeState
value = 1000
triggerall = command = "Hadoken"
triggerall = Power >= 1000
triggerall = Statetype = S
trigger1 = ctrl
trigger2 = var(1)>0
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Izuna Drop
[State -1, Izuna Drop]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && Movecontact

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 230 && MoveContact

;---------------------------------------------------------------------------
;Stand Heavy Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 221;220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact 
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 230 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 = StateNo = 400 && MoveContact
trigger6 = StateNo = 410 && MoveContact
trigger7 = StateNo = 430 && MoveContact

;---------------------------------------------------------------------------
;
[State -1, Stand Heavy Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 230 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 = StateNo = 240 && MoveContact 
trigger6 = StateNo = 220 && MoveContact
trigger7 = StateNo = 400 && MoveContact
trigger8 = StateNo = 410 && MoveContact
trigger9 = StateNo = 420 && MoveContact
trigger10 = StateNo = 430 && MoveContact
trigger11 = StateNo = 440 && MoveContact
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195+(command = "holdfwd")+2*(command = "holddown")
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400 && MoveContact
trigger3 = StateNo = 430 && MoveContact

;---------------------------------------------------------------------------
;Crouching Heavy Punch
[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400 && MoveContact
trigger3 = StateNo = 430 && MoveContact
trigger4 = StateNo = 410 && MoveContact
trigger5 = StateNo = 440 && MoveContact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400 && MoveContact
trigger3 = StateNo = 430 && Time > 5
trigger4 = StateNo = 200 && MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400 && MoveContact
trigger3 = StateNo = 430 && MoveContact
trigger4 = StateNo = 410 && MoveContact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400 && MoveContact
trigger3 = StateNo = 430 && MoveContact
trigger4 = StateNo = 410 && MoveContact
trigger5 = StateNo = 420 && MoveContact
trigger6 = StateNo = 440 && MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 630 && MoveContact
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 610 && MoveContact
trigger4 = StateNo = 630 && MoveContact
trigger5 = StateNo = 640 && MoveContact
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && MoveContact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 610 && MoveContact
trigger4 = StateNo = 630 && MoveContact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 610 && MoveContact
trigger4 = StateNo = 630 && MoveContact
trigger5 = StateNo = 640 && MoveContact
trigger6 = StateNo = 620 && MoveContact
;---------------------------------------------------------------------------