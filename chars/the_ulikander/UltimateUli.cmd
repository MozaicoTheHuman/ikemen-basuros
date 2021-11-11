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
;   name = some_name
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
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
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
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

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
;-|CPU|-------------------------------------------------------------
;-| AI |--------------------------------------------------------------
[Command]
name = "AI1"
command = U,D,B,F,U,D,B,F,b,b,a,a,s
time = 0

[Command]
name = "AI2"
command = U,D,U,D,U,D,U,D,U,D,U,D,a+b+c+x+y+z
time = 0

[Command]
name = "AI3"
command = U,F,B,D,B,F,U,x,x,x,y,y,y,z,z,z
time = 0

[Command]
name = "AI4"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI5"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "AI6"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI7"
command = x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z
time = 0

[Command]
name = "AI8"
command = a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c
time = 0

[Command]
name = "AI9"
command = y,a,B,B,a,D,a,B,B,a
time = 0

[Command]
name = "AI10"
command = c,U,B,B,y,B,U,D,D,y
time = 0

[Command]
name = "AI11"
command = x,x
time = 0

[Command]
name = "AI12"
command = y,y
time = 0

[Command]
name = "AI13"
command = z,z
time = 0

[Command]
name = "AI14"
command = a,a
time = 0

[Command]
name = "AI15"
command = b,b
time = 0

[Command]
name = "AI16"
command = c,c
time = 0

[Command]
name = "AI17"
command = U,x
time = 0

[Command]
name = "AI18"
command = D,x
time = 0

[Command]
name = "AI19"
command = B,x
time = 0

[Command]
name = "AI20"
command = F,x
time = 0

[Command]
name = "KonamiCode"
command = U,U,D,D,B,F,B,F,b,a,s
time = 0

;---------------------------------------------------------------------------


;-| Super Motions |--------------------------------------------------------
[command]
name = "SuperGrab"
command = ~D,DF,F,x+y
time = 15

[command]
name = "MultiGunShot"
command = ~D,DF,F,a+b
time = 15

[command]
name = "MultiGranade"
command = ~D,DB,B,a+b
time = 15

;lel
[command]
name = "z+c"
command = z+c
time = 10



;-| Special Motions |------------------------------------------------------

[command]
name = "commandgrab"
command = D,DF,F,y
time = 15

[command]
name = "commandgrab2"
command = D,DF,F,x
time = 15

[command]
name = "ShotUp"
command = ~D,DF,F,b
time = 15

[command]
name = "ShotDown"
command = ~D,DF,F,a
time = 15

[command]
name = "ChargeFar"
command = ~D,DF,F,y
time = 15

[command]
name = "ChargeMid"
command = ~D,DF,F,x
time = 15

[command]
name = "GranadeFar"
command = ~D,DB,B,b
time = 15

[command]
name = "GranadeDown"
command = ~D,DB,B,a
time = 15

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
;---------------------------------------------------------------------------
;===========================================================================
[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2stateno != [800,899]
trigger1 = ctrl
trigger1 = command = "y" || command = "z"
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
trigger2 = command = "commandgrab" || command = "commandgrab2"
trigger2 = ctrl && !command = "SuperGrab"
;combos
trigger3 = command = "commandgrab" || command = "commandgrab2"
trigger3 = stateno = 200 && movehit
trigger4 = command = "commandgrab" || command = "commandgrab2"
trigger4 = stateno = 210 && movehit

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super Motions
;--------------------------------
[State -1, SuperGrab]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "SuperGrab"  || command = "z"
triggerall = command != "holddown"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
;combos
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 210
trigger5 = movecontact && stateno = 400

[State -1, SuperGrab Extender]
type = Changestate
value = 1040
triggerall = var(59) != 1
triggerall = (command = "hold_y" || command = "hold_c") && power >=1000 && p2life != 0
trigger1 = stateno = 1010 && time >180
trigger2 = stateno = 210 && prevstateno = 1010 && time < 16

;--------------------------------
[State -1, MultiGunShot]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "MultiGunShot" || command = "c"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;combos
trigger2 = stateno = 240 && movecontact; && prevstateno != 1050 && prevstateno != 1010 ;&& time >= 10
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 440 && movecontact
trigger5 = stateno = 410 && movecontact

;--------------------------------
[State -1, MultiGranade]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = command = "MultiGranade" || command = "c"
triggerall = power >= 3000
triggerall = pos y < -66
trigger1 = statetype = A
trigger1 = ctrl
;combos
trigger2 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Shot Up
[State -1, ShotUp]
type = ChangeState
value = 900
triggerall = var(59) != 1
triggerall = command = "ShotUp"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;combos
trigger2 = stateno = 410 && movecontact;

;===========================================================================
;Special Motions
;---------------------------------------------------------------------------
; Shot Down
[State -1, ShotDown]
type = ChangeState
value = 901
triggerall = var(59) != 1
triggerall = command = "ShotDown"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;combos
;trigger2 = stateno = 900 && projhit = 1;

;---------------------------------------------------------------------------
; Aerial Shot Forward
[State -1, AerialShotF]
type = ChangeState
value = 902
triggerall = var(59) != 1
triggerall = command = "ShotUp"
trigger1 = statetype = A
trigger1 = ctrl
;combos

;---------------------------------------------------------------------------
; Aerial Shot Down
[State -1, AerialShotD]
type = ChangeState
value = 903
triggerall = var(59) != 1
triggerall = command = "ShotDown"
trigger1 = statetype = A
trigger1 = ctrl
;combos

;---------------------------------------------------------------------------
; Charge Mid Range
[State -1, ChargeMid]
type = null;ChangeState
value = 910
triggerall = var(59) != 1
triggerall = command = "ChargeMid"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl
;combos

;---------------------------------------------------------------------------
; Charge Long Range
[State -1, ChargeFar]
type = null;ChangeState
value = 911
triggerall = var(59) != 1
triggerall = command = "ChargeFar"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl
;combos

;---------------------------------------------------------------------------
; GranadeForward
[State -1, GranadeFar]
type = ChangeState
value = 920
triggerall = var(59) != 1
triggerall = command = "GranadeFar"
triggerall = command != "holddown"
triggerall = numhelper(10925) < 1
triggerall = numhelper(10926) < 1
trigger1 = statetype = S
trigger1 = ctrl
;combos
trigger2 = stateno = 240 && movecontact

;---------------------------------------------------------------------------
; Granade Downwards
[State -1, GranadeDown]
type = ChangeState
value = 921
triggerall = var(59) != 1
triggerall = command = "GranadeDown"
triggerall = command != "holddown"
triggerall = numhelper(10925) <1
triggerall = numhelper(10926) < 1
trigger1 = statetype = S
trigger1 = ctrl
;combos
trigger2 = stateno = 240 && movecontact


;---------------------------------------------------------------------------
;Normal Attacks
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;combos
trigger2 = stateno = 230 && movecontact;




;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;combos
trigger2 = stateno = 200 && movecontact;
trigger3 = stateno = 230 && movecontact;

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = Null;ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;combos
trigger2 = stateno = 200 && movecontact;

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;combos
trigger2 = stateno = 200 && movecontact;
trigger3 = stateno = 230 && movecontact;
trigger4 = stateno = 210 && movecontact;

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = Null;ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact; && time > 15
trigger3 = stateno = 210 && movecontact


;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;combos
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = Null;ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && moveguarded && time > 20
trigger3 = stateno = 210 && movecontact
;trigger4 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact


;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = Null;ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;combos
;trigger2 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;combos
trigger2 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = Null;ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;combos
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;combos
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = Null;ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Guarding AI
[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
trigger3 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
trigger4 = (anim = 21)
trigger5 = (prevstateno > 5000) && (random < 200)
value = 130

[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131

[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132

[State -1, AI Guarding, Hard AI]
type = ChangeState
triggerall = (var(59) != 0)&& (stateno != [120,155]) && Numenemy
triggerall = AILevel > 5
triggerall = Random <= (AILevel * 10)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
trigger1 = ctrl
value = 120
;------------------------------------------------------------------------
;Normal Attack AI
[State -1, JMK]
type = ChangeState
triggerall = statetype = A
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28)                              ;close to opponent
trigger1 = ctrl                                  ;falling from attack
trigger1 = random <= 200                                     ;This will happen 75%
value = 640

[State -1, JLK]
type = ChangeState
triggerall = statetype = A
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28)                              ;close to opponent
trigger1 = ctrl                                  ;falling from attack
trigger1 = random <= 300                                     ;This will happen 75%
value = 640

[State -1, Airgunshotfar]
type = ChangeState
triggerall = statetype = A
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = p2bodydist X >= 190                              ;close to opponent
trigger1 = ctrl                                  ;falling from attack
trigger1 = random <= 200                                     ;This will happen 75%
value = 902

[State -1, Airgunshotdown]
type = ChangeState
triggerall = statetype = A
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = p2bodydist X >= 90                              ;close to opponent
trigger1 = ctrl                                  ;falling from attack
trigger1 = random <= 100                                     ;This will happen 75%
value = 903

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Ctrl && (statetype = S)                      ;character is standing
trigger1 = p2bodydist X <= 12                                ;P2 is less than or equal to 20 away on the x-axis,
trigger1 = random <= 200                                     ;perform this move 20% of the time
value = 200                                         ;change to [Statedef 200] which is light punch**

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Ctrl && (statetype = S)                      ;character is standing
trigger1 = p2bodydist X <= 20 && p2bodydist X > 12 && p2bodydist Y < -20               ;P2 is less than or equal to 20 away on the x-axis,
trigger1 = random <= 300                                     ;perform this move 20% of the time
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Ctrl && (statetype = S)                      ;character is standing
trigger1 = p2bodydist X >= 120 && p2bodydist Y < -40               ;P2 is less than or equal to 20 away on the x-axis,
trigger1 = random <= 300                                     ;perform this move 20% of the time
value = 900

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Ctrl && (statetype = S)                      ;character is standing
trigger1 = p2bodydist X >= 190 && p2bodydist Y > -40               ;P2 is less than or equal to 20 away on the x-axis,
trigger1 = random <= 300                                     ;perform this move 20% of the time
value = 901

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Ctrl && (statetype = C)                      ;character is standing
trigger1 = p2bodydist X <= 12                                ;P2 is less than or equal to 20 away on the x-axis,
trigger1 = random <= 300                                     ;perform this move 20% of the time
value = 400



;--------------------------------------------------------------------------
;Into Super and Hyper AI
[State -1, into SuperGrab]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = power >= 2000
triggerall = movecontact
trigger1 = (p2bodydist X <= 28)
;From SMP
trigger1 = stateno = 210 && animelem = 8
trigger1 = random <= ifelse(AILevel <=2,150,ifelse(AILevel <=6,150,350))
;From SLP
trigger2 = stateno = 200 && animelem = 5
trigger2 = random <= ifelse(AILevel <=2,100,ifelse(AILevel <=6,50,150))
value = 1000

[State -1, into SuperGrab Extender]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = power >= 1000                      ;opponent has been hit
triggerall = AILevel >= 6 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = stateno = 240 && prevstateno = 1010                                 ;falling from attack
trigger1 = random <= 150                                     ;This will happen 75%
value = 1040

[State -1, into MultiGunShot]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = movecontact && power >= 1000                     ;opponent has been hit
triggerall = AILevel >= 4 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (stateno = 440 && animelem = 7) || (stateno = 240 && animelem = 8)                                  ;falling from attack
trigger1 = random <= ifelse(AILevel >= 6,350,100)                                     ;This will happen 75%
value = 1100
;---------------------------------------------------------------------------
;Combo AI

[State -1, into SLK]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = movecontact                      ;opponent has been hit
triggerall = AILevel >= 4 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28) && p2bodydist Y > -30                              ;close to opponent
trigger1 = stateno = 200                                  ;falling from attack
trigger1 = random <= 750                                     ;This will happen 75%
value = 230

[State -1, into SMP or SMK]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = movecontact                      ;opponent has been hit
triggerall = AILevel >= 4 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28)                              ;close to opponent
trigger1 = stateno = 230                                  ;falling from attack
trigger1 = random <= ifelse(AILevel <=6,350,750)
trigger2 = stateno = 200
trigger2 =  p2bodydist Y > -30 && random <= ifelse(AILevel <=6,350,750)                                     ;This will happen 75%
value = ifelse( (movehit&& random <= 650) || (movecontact && random <= 200) ,210,240)

[State -1, into CLK]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = movecontact                      ;opponent has been hit
triggerall = AILevel >= 4 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28 && p2bodydist y > -30)                              ;close to opponent
trigger1 = stateno = 210                                  ;falling from attack
trigger1 = random <= ifelse(AILevel >=7,750,150)                                     ;This will happen 75%
value = 430

[State -1, into CLP]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = movecontact                      ;opponent has been hit
triggerall = AILevel >= 4 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28)                    ;close to opponent
;From CLK
trigger1 = stateno = 430                                  ;falling from attack
trigger1 = random <= ifelse(AILevel >=7,750,200)                                     ;This will happen 75%
value = 400

[State -1, into CMK]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = movecontact                      ;opponent has been hit
triggerall = AILevel >= 6 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28)                              ;close to opponent
trigger1 = stateno = 400                                  ;falling from attack
trigger1 = random <= 750                                     ;This will happen 75%
value = 440

[State -1, into JLK]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = movecontact                      ;opponent has been hit
triggerall = AILevel >= 6 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28)                              ;close to opponent
trigger1 = stateno = 600                                  ;falling from attack
trigger1 = random <= 750                                     ;This will happen 75%
value = 630

[State -1, into JMK]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = movecontact                      ;opponent has been hit
triggerall = AILevel >= 6 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28)                              ;close to opponent
trigger1 = stateno = 600                                  ;falling from attack
trigger1 = random <= 650                                     ;This will happen 75%
value = 640

[State -1, into JMP]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = movecontact                      ;opponent has been hit
triggerall = AILevel >= 6 ;&& AILevel <= 6                     ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 28)                              ;close to opponent
trigger1 = stateno = 630                                  ;falling from attack
trigger1 = random <= 650                                     ;This will happen 75%
value = 610

[State -1]
type = ChangeState
triggerall = statetype = S
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 6 && p2movetype = H           ;difficulty level is 3 or higher                                     ;character is doing a crouch hard punch which is a launcher
trigger1 = ctrl && p2bodydist y >= -120                                      ;move has connected (P2 was hit)
trigger1 = random <= 400                                      ;perform this move 90% of the time
value = 40

[State -1, Followup jump attack with crouch hard kick]
type = Null;ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
trigger1 = (p2bodydist X <= 25)                              ;close to opponent
trigger1 = Prevstateno = 50                                  ;falling from attack
trigger1 = random <= 750                                     ;This will happen 75%
value = 450

[State -1, ]
type = Null;ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3                                     ;difficulty level is 3 or higher
trigger1 = stateno = 420                                      ;character is doing a crouch hard punch which is a launcher
trigger1 = movehit = 1                                        ;move has connected (P2 was hit)
trigger1 = random <= 900                                      ;perform this move 90% of the time
value = 7000                                                  ;change to [Statedef 7000] which is a super jump













