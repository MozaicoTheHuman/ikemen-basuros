;-| Button Remapping |-----------------------------------------------------
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
;-------------------------------------------------------------------------------
;A.I. ACTIVATION
[Command]
name = "AI1"
command = a, a, a, a, a, a, a, a, a, a, a
time = 1

[Command]
name = "AI2"
command = b, b, b, b, b, b, b, b, b, b, b
time = 1

[Command]
name = "AI3"
command = c, c, c, c, c, c, c, c, c, c, c
time = 1

[Command]
name = "AI4"
command = x, x, x, x, x, x, x, x, x, x, x
time = 1

[Command]
name = "AI5"
command = y, y, y, y, y, y, y, y, y, y, y
time = 1

[Command]
name = "AI6"
command = z, z, z, z, z, z, z, z, z, z, z
time = 1

[Command]
name = "AI7"
command = a, b, c, a, b, c, a, b, c, a, b, c
time = 1

[Command]
name = "AI8"
command = x, y, z, x, y, z, x, y, z, x, y, z
time = 1

[Command]
name = "AI9"
command = x, U, x, a
time = 1

[Command]
name = "AI10"
command = c, a, c, a
time = 1

[Command]
name = "AI11"
command = U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI12"
command = D, D, D, D, D, D, D, D, D, D, D
time = 1

[Command]
name = "AI13"
command = F, F, F, F, F, F, F, F, F, F, F
time = 1

[Command]
name = "AI14"
command = B, B, B, B, B, B, B, B, B, B, B
time = 1

[Command]
name = "AI15"
command = U, U, D ,D ,F ,F ,B ,B ,b+a
time = 1

;-| Super Motions |--------------------------------------------------------

[command]
name = "Hyper Multi Punch"
command = D,DF,F,D,DF,F,x+y
time = 40

[command]
name = "Combo Punch"
command = D,DF,F,D,DF,F,y
time = 40

[command]
name = "Multi Punch"
command = D,DF,F,D,DF,F,x
time = 40

[command]
name = "Super Knifes"
command = D,DF,F,D,DF,F,z
time = 60

[command]
name = "All Out Attack"
command = D,DF,F,D,DF,F,a
time = 40


;-| Special Motions |------------------------------------------------------

[command]
name = "Knife Attack"
command = D,F,x
time = 15

[command]
name = "Knife"
command = D,F,y
time = 15

[command]
name = "Knife Throw"
command = D,F,z
time = 40

[command]
name = "Kicks"
command = D,F,a
time = 40


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

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
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

;-| Hold Button |--------------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
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
[Statedef -1]

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------
[State -1, AI]
type = VarSet
triggerall = roundstate = [1,2]
triggerall = life >= 1
triggerall = var(59) != 1
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
v = 59
value = 1

;------------------------------------

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 0
triggerall = statetype = S
trigger1 = p2bodydist X <= 20
value = 200

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno != 0
triggerall = stateno != 211 && prevstateno != 211 && statetype = S
trigger1 = p2bodydist X <= -1
trigger1 = p2bodydist X >= -1
value = 2010

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 1
triggerall = stateno != 0
triggerall = statetype = S
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 200

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 1
triggerall = stateno != 0
triggerall =  statetype = S
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 210
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 1
triggerall = stateno != 0
triggerall = statetype = S 
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 220
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 1
triggerall = stateno != 0
triggerall = statetype = S
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 230
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 1
triggerall = stateno != 0
triggerall = statetype = S 
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 240
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 1
triggerall = stateno != 0
triggerall = statetype = S 
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 250
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2
triggerall = stateno != 0
triggerall = stateno != 211 && prevstateno != 211 && statetype = S
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 2010

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2
triggerall = stateno != 0
triggerall = statetype = S
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 200
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2
triggerall = stateno != 0
triggerall =  statetype = S 
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 210
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2
triggerall = statetype = S 
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 220
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2
triggerall = stateno != 0
triggerall = statetype = S 
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 230
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2
triggerall = stateno != 0
triggerall = statetype = S
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 240
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2
triggerall = stateno != 0
triggerall = statetype = S
trigger1 = p2bodydist X <= -40
trigger1 = p2bodydist X >= -40
value = 250
persistent = 0

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 1 && p2statetype != L
triggerall = Ctrl && statetype = S
triggerall = stateno = 200390
trigger1 = p2bodydist X > 20
value = 200390

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2 && p2statetype != L
triggerall = Ctrl && statetype = S
triggerall = stateno = 200390
trigger1 = p2bodydist X > 20
value = 200390

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 1
triggerall = statetype = S
triggerall = stateno = 200390
trigger1 = p2bodydist X = 20
value = 431

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2
triggerall = statetype = S
triggerall = stateno = 200390
trigger1 = p2bodydist X = 20
value = 431

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 1 && p2statetype = A
triggerall = Ctrl && statetype = A
triggerall = stateno = 40
trigger1 = p2bodydist X > 20
value = 40

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 2 && p2statetype = A
triggerall = Ctrl && statetype = A
triggerall = stateno = 40
trigger1 = p2bodydist X > 20
value = 40

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
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 200 && statetype = S && movehit
trigger1 = p2bodydist X <= 20
value = 201

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 201 && statetype = S && movehit
trigger1 = p2bodydist X <= 20
value = 202

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 202 && statetype = S && movehit
trigger1 = p2bodydist X <= 20
value = 203

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 203 && statetype = S && movehit
trigger1 = p2bodydist X <= 20
value = 220

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 220 && statetype = S && movehit
trigger1 = p2bodydist X <= 20
value = 231

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 231 && statetype = S && movehit
trigger1 = p2bodydist X <= 20
value = 211
trigger2 = stateno = 2010 && movecontact

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 50 && statetype = A && movehit
trigger1 = p2bodydist X <= 20
value = 600

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 600 && statetype = A && movehit
trigger1 = p2bodydist X <= 20
value = 610

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 610 && statetype = A && movehit
trigger1 = p2bodydist X <= 20
value = 620

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 620 && statetype = A && movehit
trigger1 = p2bodydist X <= 20
value = 650

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 50 && statetype = A && movehit
trigger1 = p2bodydist X <= 20
value = 630

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 630 && statetype = A && movehit
trigger1 = p2bodydist X <= 20
value = 640

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 0 && statetype = A && movehit
trigger1 = p2bodydist X <= 20
value = 440

[State -1]
type = ChangeState
triggerall = roundstate = 2 && var(59) != 0
triggerall = stateno = 440 && statetype = A && movehit
trigger1 = p2bodydist X <= 20
value = 430

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
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================

;---------------------------------------------------------------------------
; Hyper Multi Punch
[State -1, Hyper Multi Punch]
type = ChangeState
value = 2060
triggerall = command = "Hyper Multi Punch"
triggerall = power > 2999
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Multi Knife
[State -1, Combo Punch]
type = ChangeState
value = 2050
triggerall = command = "Combo Punch"
triggerall = power > 1999
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Multi Punch
[State -1, Multi Punch]
type = ChangeState
value = 2040
triggerall = command = "Multi Punch"
triggerall = power > 1000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Super Knifes
[State -1, Super Knifes]
type = ChangeState
value = 2080
triggerall = command = "Super Knifes"
triggerall = power > 2999
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; All Out Attack
[State -1, All Out Attack]
type = ChangeState
value = 2060
triggerall = command = "All Out Attack"
triggerall = power > 2999
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Knife Attack
[State -1, Knife Attack]
type = ChangeState
value = 2010
triggerall = command = "Knife Attack"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Knife Throw
[State -1, Knife Throw]
type = ChangeState
value = 2020
triggerall = command = "Knife Throw"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Knife
[State -1, Knife]
type = ChangeState
value = 2000
triggerall = command = "Knife"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Kicks
[State -1, Kicks]
type = ChangeState
value = 203001
triggerall = command = "Kicks"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;Running Attack 4
[State -1, RA4]
type = ChangeState
value = 431
triggerall = command = "a"
triggerall = ctrl
triggerall = stateno = 100
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------
;Running Attack 5
[State -1, RA5]
type = ChangeState
value = 441
triggerall = command = "b"
triggerall = ctrl
triggerall = stateno = 100
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------
;Running Attack 6
[State -1, RA6]
type = ChangeState
value = 451
triggerall = command = "c"
triggerall = ctrl
triggerall = stateno = 100
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640 && movehit

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movehit

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

