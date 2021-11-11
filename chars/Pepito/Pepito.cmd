; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = "some_name"
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /F, a    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.


;-| Super Motions |--------------------------------------------------------

[Command]
name = "fallout"
command = ~D, DB, B, D, DB, B, y        
time = 20

[Command]
name = "burn baby burn"
command = ~D, DF, F, D, DF, F, x        
time = 20

[Command]
name = "L.A blow-out"
command = ~D, DF, F, D, DF, F, y      
time = 20

[Command]
name = "Oaxaca Overdrive"
command = ~D, DF, F, D, DF, F, z        
time = 20

[Command]
name = "vaya con Dios!"
command = ~D, DF, F, D, DF, F, c       
time = 20

[Command]
name = "mariachi of death"
command = ~D, DF, F, D, DF, F, a                                            
time = 20

[Command]
name = "human pinata"
command = ~D, DB, B, D, DB, B, z                                            
time = 20

[Command]
name = "guns a blazin'"
command = ~D, DF, F, D, DF, F, b                                            
time = 20

;-| Special Motions |------------------------------------------------------
;-----------------

[Command]
name = "paletero"
command = ~D, D, a

[Command]
name = "Guadalupe"
command = ~B, D, b

[Command]
name = "drunken hummingbird"
command = ~D, DF, F, b


[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "headbutt"
command = ~D, DF, F, y

[Command]
name = "combo set 2"
command = ~a, a 
time = 5

[Command]
name = "combo set 1"
command = ~x, x 
time = 5

[Command]
name = "uppercut"
command = ~D, DF, F, z

[Command]
name = "vampirekiller"
command = y+z
time = 1

[Command]
name = "juan1"
command = ~D, B, F, y

[Command]
name = "juan2"
command = ~F, D, c

[Command]
name = "pinata tornado"
command = ~D, DF, F, y+z

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x


;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "Psycho Mower"
command = ~40$B, y
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = ""
command = y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
anim = 1
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 0

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holda"
command = /$a
time = 10
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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



; -| CPU Commands |-------------------------------------------------------------

[Command]
name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "CPU2"
command = D, U, U, D, D, U
time = 1

[Command]
name = "CPU3"
command = D, D, D, U, U, U
time = 1

[Command]
name = "CPU4"
command = D, b, a, U, D, a
time = 1

[Command]
name = "CPU5"
command = D, U, z, c, U, D
time = 1

[Command]
name = "CPU6"
command = D, U, U, D, U, D
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


[State -1, Activate AI]
type = VarSet
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
v = 20
value = 1 


; ============================
; pinatacopter
; ============================
[State -1,pinata AI]
type = ChangeState
value =  230
triggerall = (var(20) = 1) && (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)
trigger1 = (P2movetype = H) && (ctrl = 1) && (random <= 500) && (P2statetype = A) && p2bodydist X < 7
persistent = 0

; ============================
; cocktail
; ============================
[State -1,cocktail]
type = ChangeState
value =  233
triggerall = (var(20) = 1) && (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)
trigger1 = (ctrl = 1) && (random <= 500) && (P2movetype = A) && (P2statetype = A) && p2bodydist x > 90 && p2bodydist x < 100
persistent = 0

; ============================
; hummingbird
; ============================
[State -1,hummingbird]
type = ChangeState
value =  231
triggerall = (var(20) = 1) && (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)
trigger1 = (ctrl = 1) && (random <= 500) && (P2statetype = A) && p2bodydist y < -130 && (p2movetype = H) 
persistent = 0

; ============================
; uppercut
; ============================
[State -1,uppercut]
type = ChangeState
value =  245
triggerall = (var(20) = 1) && (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)
trigger1 = (ctrl = 1) && (random <= 500) && (p2movetype = H) && anim = 201 = 0 && p2bodydist x < 70 && (p2statetype != A)
persistent = 0

; ============================
; psycho mower
; ============================
[State -1]
type = ChangeState
value =  3223
triggerall = (var(20) = 1) && (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)
trigger1 = (ctrl = 1) && (random <= 500) && BackEdgeDist < 10 && (P2movetype = A)&& (P2bodydist x < 100)
persistent = 0

; ============================
; summon helpers
; ============================

[State -1,helpers]
type = ChangeState
value =  7086
triggerall = (var(20) = 1) && (statetype = S) && (movetype != H) && (statetype != L) && (P2life != 0) && (stateno != 3233) && (stateno != 3240) 
trigger1 = (ctrl = 1) && (random <= 500) && BackEdgeDist > 30 && (P2movetype = A)&& (NumHelper = 0)&& backEdgeDist < 40
persistent = 0

[State -1,helpers]
type = ChangeState
value =  3234
triggerall = (var(20) = 1) && (statetype = S) && (movetype != H) && (statetype != L) && (P2life != 0) && (stateno != 7085) && (stateno != 3240) 
trigger1 = (ctrl = 1) && (random <= 500) && BackEdgeDist > 30 && (P2movetype = A)&& (NumHelper = 0)&& backEdgeDist < 40
persistent = 0

[State -1,helpers]
type = ChangeState
value =  3244
triggerall = (var(20) = 1) && (statetype = S) && (movetype != H) && (statetype != L) && (P2life != 0)&& (stateno != 7085) && (stateno != 3233) 
trigger1 = (ctrl = 1) && (random <= 500) && BackEdgeDist > 30 && (P2movetype = A)&& (NumHelper = 0)&& backEdgeDist < 40
persistent = 0


; ============================
; springboard suplex
; ============================

[State -1,VarRandom ]
type = VarRandom
trigger1 = (var(20) = 1) 
v = 9
range = 1, 5

[State -1,grab]
type = ChangeState
value =  812
triggerall = (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)&& (P2movetype != A)&& (p2statetype != L)
trigger1 = var(9) = 1 && (ctrl = 1)  && p2bodydist x < 15 && BackEdgeDist > 170 && p2bodydist y > -1  

; ============================
; "rear" admiral
; ============================
[State -1,grab]
type = ChangeState
value =  818
triggerall =  (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)&& (P2movetype != A)&& (p2statetype != L)
trigger1 = var(9) = 2 && (ctrl = 1)  && p2bodydist x < 15 && p2bodydist y > -1 


; ============================
; belt choker
; ============================
[State -1,grab]
type = ChangeState
value =  817
triggerall = (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)&& (P2movetype != A)&& (p2statetype != L)
trigger1 = var(9) = 3 && (ctrl = 1) && p2bodydist x < 15 && p2bodydist y > -1 


; ============================
; mexican cyclone throw
; ============================
[State -1,grab]
type = ChangeState
value =  814
triggerall = (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)&& (P2movetype != A)&& (p2statetype != L)
trigger1 = var(9) = 4 && (ctrl = 1)  && p2bodydist x < 15 && p2bodydist y > -1 


; ============================
; floor beater
; ============================
[State -1,grab]
type = ChangeState
value =  800
triggerall = (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)&& (P2movetype != A)&& (p2statetype != L)
trigger1 = var(9) = 5 && (ctrl = 1) && p2bodydist x < 15 && p2bodydist y > -1 


; ============================
; airdash
; ============================
[State -1,airdash]
type = ChangeState
value = 3226
triggerall = (var(20) = 1) && (movetype != H) && (statetype != L) && (P2life != 0)
trigger1 = (ctrl = 1)  && p2bodydist x > 500 && (statetype = A)&& pos y < -40 
persistent = 0

; ============================
; para-drill
; ============================
[State -1,]
type = ChangeState
value = 247
triggerall = (var(20) = 1) && (movetype != H) && (P2life != 0) && (statetype = A) && (statetype != S)
trigger1 = (ctrl = 1) && pos y <= -130 
persistent = 0


; ============================
; headbutt
; ============================
[State -1,]
type = ChangeState
value = 202
triggerall = (var(20) = 1) && power >= 2000 && (movetype != H) && (P2life != 0) && (statetype != A) && (statetype = S)
trigger1 = (ctrl = 1) && p2bodydist x > 50 && p2bodydist x < 80 && p2bodydist y > -1 && BackEdgeDist < 170
persistent = 0

; ============================
; paper airplane
; ============================
[State -1,]
type = ChangeState
value = 221
triggerall = (var(20) = 1) && power >= 1000 && (movetype != H) && (P2life != 0) && (statetype != A) && (statetype = S)
trigger1 = (ctrl = 1) && p2bodydist x > 125 && p2bodydist x < 128 && (random <= 500)
persistent = 0


; ============================
; oaxaca overdrive
; ============================
[State -1,]
type = ChangeState
value = 7100
triggerall = (var(20) = 1) && power >= 3000 && (movetype != H) && (P2life != 0) && (statetype != A) 
trigger1 = (ctrl = 1) && p2bodydist x > 150 && p2bodydist x < 180 && p2bodydist y > -10 ;&& (p2movetype = A)
persistent = 0

; ============================
; level 1 supers
; ============================

[State -1,VarRandom ]
type = VarRandom
trigger1 = (var(20) = 1) && power >= 1000
v = 8
range = 1, 3

[State -1,mariachi]
type = changestate
triggerall =  power >= 1000 && (movetype != H) && (P2life != 0) && (statetype != A)
trigger1 =  var(8) = 1 && (ctrl = 1) && p2bodydist x > 150 && p2bodydist x < 190 && (p2movetype = A)
value = 3054

[State -1,guns a blazin]
type = changestate
triggerall =  power >= 1000 && (movetype != H) && (P2life != 0) && (statetype != A)
trigger1 =  var(8) = 2 && (ctrl = 1) && p2bodydist x > 150 && p2bodydist x < 190 && (p2movetype = A)
value = 3056

[State -1,burn baby burn]
type = changestate
triggerall =  power >= 1000 && (movetype != H) && (P2life != 0) && (statetype != A)
trigger1 =  var(8) = 3 && (ctrl = 1) && p2bodydist x > 150 && p2bodydist x < 190 && (p2movetype = A)
value = 3001


; ============================
; blowout
; ============================
[State -1,blowout]
type = ChangeState
value = 3002
triggerall = (var(20) = 1) && power >= 2000 && (movetype != H) && (P2life != 0) && (statetype != A) 
trigger1 = (ctrl = 1) && p2bodydist x > 130 && p2bodydist x < 160 && p2bodydist y > -10  
persistent = 0


; ============================
; human pinata
; ============================
[State -1, human pinata]
type = ChangeState
value =  3227
triggerall = (var(20) = 1) && power >= 4000 && (statetype != A) && (p2statetype != A)&& (movetype != H) && (statetype != L) && (P2life != 0)
trigger1 = (ctrl = 1) && p2bodydist x < 10   && (p2statetype = S) && BackEdgeDist < 40
persistent = 0

;===========================================================================

;---------------------------------------------------------------------------

; guns a blazin'
[State -1, guns a blazin]
type = ChangeState
value = 3056
triggerall = power >= 1000
trigger1 = command = "guns a blazin'"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


; mariachi of death
[State -1, mariachi of death]
type = ChangeState
value = 3054
triggerall = power >= 1000
trigger1 = command = "mariachi of death"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;psycho mower
[State -1]
type = ChangeState
value = 3223
trigger1 = command = "Psycho Mower"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------


;dropkick
[State -1]
type = ChangeState
value = 251
triggerall = stateno = 100
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------


;vampire killer
[State -1]
type = ChangeState
value = 3232
triggerall = stateno = 100
trigger1 = command = "vampirekiller"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;elbow
[State -1]
type = ChangeState
value = 252
triggerall = stateno = 100
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------


;airdash
[State -1]
type = ChangeState
value = 3226
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

; para-drill
[State -1, para-drill]
type = ChangeState
value = 247
trigger1 = command = "QCF_c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; drunken hummingbird
[State -1, drunken hummingbird]
type = ChangeState
value = 231
trigger1 = command = "drunken hummingbird"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; vaya con Dois
[State -1, vaya con Dios!]
type = ChangeState
value = 3052
triggerall = power = 5000
trigger1 = command = "vaya con Dios!"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


; Oaxaca Overdrive
[State -1, Oaxaca Overdrive]
type = ChangeState
value = 7100
triggerall = power >= 3000
trigger1 = command = "Oaxaca Overdrive"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; burn baby burn
[State -1, burn baby burn]
type = ChangeState
value = 3001
triggerall = power >= 1000
trigger1 = command = "burn baby burn"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; human pinata
[State -1, hells pinata]
type = ChangeState
value = 3227
triggerall = power >= 4000
trigger1 = command = "human pinata"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; L.A blow-out
[State -1, L.A blow-out]
type = ChangeState
value = 3002
triggerall = power >= 2000
trigger1 = command = "L.A blow-out"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; fallout
[State -1, fallout]
type = ChangeState
value = 3000
triggerall = power >= 3000
trigger1 = command = "fallout"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; pinata tornado
[State -1, pinata tornado]
type = ChangeState
value = 230
trigger1 = command = "pinata tornado"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


; headbutt
[State -1, headbutt]
type = ChangeState
value = 202   
trigger1 = command = "headbutt" 
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

; molotov cocktail
[State -1, molotov cocktail]
type = ChangeState
value = 233   
trigger1 = command = "QCB_x" 
trigger1 = statetype = S && NumHelper(237) = 0
trigger1 = ctrl


;---------------------------------------------------------------------------

; uppercut
[State -1, uppercut]
type = ChangeState
value = 245   
trigger1 = command = "uppercut" 
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

; paper airplane
[State -1, paper airplane]
type = ChangeState
value = 221   
trigger1 = command = "QCF_x" 
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

;floor beater

[State -1, floorbeater]
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



;---------------------------------------------------------------------------

;suplex

[State -1, suplex]
type = ChangeState
value = 812
triggerall = command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



;---------------------------------------------------------------------------

;mexican cyclone throw

[State -1, mexican cyclone throw]
type = ChangeState
value = 814
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



;---------------------------------------------------------------------------

;belt choke

[State -1, belt choke]
type = ChangeState
value = 817
triggerall = command = "a"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



;---------------------------------------------------------------------------

;"rear" admiral Sanchez

[State -1, ass grenade]
type = ChangeState
value = 818
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



;---------------------------------------------------------------------------

;Air_Throw1 (close dir+y)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type =  null
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_y"
trigger2 = command = "back_y"

;---------------------------------------------------------------------------

; paletero
[State -1, paletero]
type = ChangeState
value = 3234
triggerall = command = "paletero" && NumHelper(22) = 0 && NumHelper(210) = 0 && NumHelper(33) = 0 && NumHelper(11) = 0
trigger1 = statetype = S && NumHelper(22) = 0 && NumHelper(210) = 0 && NumHelper(33) = 0 && NumHelper(11) = 0
trigger1 = ctrl 

;---------------------------------------------------------------------------

; Guadalupe
[State -1, Guadalupe]
type = ChangeState
value = 3244
triggerall = command = "Guadalupe" && NumHelper(22) = 0 && NumHelper(210) = 0 && NumHelper(33) = 0 && NumHelper(11) = 0
trigger1 = statetype = S && NumHelper(22) = 0 && NumHelper(210) = 0 && NumHelper(33) = 0 && NumHelper(11) = 0
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
; Crouching medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 401
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

; Crouching hard Kick
[State -1, Crouching hard Kick]
type = ChangeState
value = 404
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------


; Crouching Light punch
[State -1, Crouching Light Kick]
type = ChangeState
value = 403
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

; Crouching medium punch
[State -1, Crouching Medium Kick]
type = ChangeState
value = 402
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------


; Crouching hard punch
[State -1, Crouching hard punch]
type = ChangeState
value = 405
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

; Jump Light kick
[State -1, Jump Light kick]
type = ChangeState
value = 601
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; Jump medium kick
[State -1, Jump Medium kick]
type = ChangeState
value = 602
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------


; Jump hard kick
[State -1, Jump hard kick]
type = ChangeState
value = 603
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; Jump light Punch
[State -1, Jump light Punch]
type = ChangeState
value = 621
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
; Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; juan1
[State -1, juan1]
type = ChangeState
value = 7082
triggerall = command = "juan1" && NumHelper(22) = 0 && NumHelper(210) = 0 && NumHelper(33) = 0 && NumHelper(11) = 0
trigger1 = power >= 100
trigger1 = statetype = S && NumHelper(22) = 0 && NumHelper(210) = 0 && NumHelper(33) = 0 && NumHelper(11) = 0
trigger1 = ctrl 

;---------------------------------------------------------------------------

; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Stand Strong Punch
[State -1, Stand strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
; juan2
[State -1, juan1]
type = ChangeState
value = 7086
triggerall = command = "juan2" && NumHelper(22) = 0 && NumHelper(210) = 0 && NumHelper(33) = 0 && NumHelper(11) = 0
trigger1 = power >= 100
trigger1 = statetype = S && NumHelper(22) = 0 && NumHelper(210) = 0 && NumHelper(33) = 0 && NumHelper(11) = 0
trigger1 = ctrl 

;---------------------------------------------------------------------------


; stand light kick
[State -1,  kick]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Stand Medium kick
[State -1, Stand Medium kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand strong kick
[State -1, Stand strong kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


; Jump medium kick
[State -1, Jump Medium kick]
type = ChangeState
value = 602
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------

