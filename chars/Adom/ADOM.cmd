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

;-| Super Motions |--------------------------------------------------------

[Command]
name = "ballerinaadom"
command = ~D,DB,B, D,DB,B, a+b
time = 25

[Command]
name = "ballerinaadom"
command = ~D,DB,B, D,DB,B, b+c
time = 25

[Command]
name = "ballerinaadom"
command = ~D,DB,B, D,DB,B, a+c
time = 25

[Command]
name = "ultrafucker"
command = ~D,D,D x+y+z
time = 25

[Command]
name = "dragonclopper"
command = ~D,DF,F, D,DF,F, x+y
time = 25

[Command]
name = "dragonclopper"
command = ~D,DF,F, D,DF,F, y+z
time = 25

[Command]
name = "dragonclopper"
command = ~D,DF,F, D,DF,F, x+z
time = 25

[Command]
name = "fopclopper"
command = ~D,DF,F, D,DF,F, a
time = 25

[Command]
name = "fopclopper"
command = ~D,DF,F, D,DF,F, b
time = 25

[Command]
name = "fopclopper"
command = ~D,DF,F,D,DF,F, c
time = 25

[Command]
name = "stomachsmash"
command = ~D,DF,F,D,DF,F, x
time = 25

[Command]
name = "stomachsmash"
command = ~D,DF,F,D,DF,F, y
time = 25

[Command]
name = "stomachsmash"
command = ~D,DF,F,D,DF,F, z
time = 25

[Command]
name = "blackadom"
command = ~D,DB,B,D,DB,B, x+y
time = 25

[Command]
name = "blackadom"
command = ~D,DB,B,D,DB,B, y+z
time = 25

[Command]
name = "blackadom"
command = ~D,DB,B,D,DB,B, x+z
time = 25

;-| Special Motions |------------------------------------------------------

[Command]
name = "bornicrush"
command = ~D,DB,B, x
time = 15

[Command]
name = "bornicrush"
command = ~D,DB,B, y
time = 15

[Command]
name = "bornicrush"
command = ~D,DB,B, z
time = 15

[Command]
name = "fartslide"
command = ~D,DB,B, a
time = 15

[Command]
name = "fartslide2"
command = ~D,DB,B, b
time = 15

[Command]
name = "fartslide3"
command = ~D,DB,B, c
time = 15

[Command]
name = "Cloppercut1"
command = ~F,D,DF, x

[Command]
name = "Cloppercut2"
command = ~F,D,DF, y

[Command]
name = "Cloppercut3"
command = ~F,D,DF, z

[Command]
name = "BMTkick"
command = ~D,D, a
time = 15

[Command]
name = "BMTkick"
command = ~D,D, b
time = 15

[Command]
name = "BMTkick"
command = ~D,D, c
time = 15

[Command]
name = "SCOOTASLAP"
command = ~D,DF,F, x
time = 15

[Command]
name = "SCOOTASLAP2"
command = ~D,DF,F, y
time = 15

[Command]
name = "SCOOTASLAP3"
command = ~D,DF,F, z
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

;---------------------------------------------------------------------------
; Ballerina Adom
[State -1, Ballerina Adom]
type = ChangeState
value = 3600
triggerall = !ailevel
triggerall = command = "ballerinaadom"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1
trigger3 = (stateno=[1200,1202])||(stateno=1300||stateno=1310||stateno=1320||stateno=1400) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Ultra Fucker
[State -1, Ultra Fucker]
type = ChangeState
value = 3200
triggerall = !ailevel
triggerall = command = "ultrafucker"
triggerall = power >=3000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dragon Clopper
[State -1, Dragon Clopper]
type = ChangeState
value = 3500
triggerall = !ailevel
triggerall = command = "dragonclopper"
triggerall = power >=3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1
trigger3 = (stateno=[1200,1202])||(stateno=1300||stateno=1310||stateno=1320||stateno=1400) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Black Adom
[State -1, Black Adom]
type = ChangeState
value = 3300
triggerall = !ailevel
triggerall = command = "blackadom"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1
trigger3 = (stateno=[1200,1202])||(stateno=1300||stateno=1310||stateno=1320||stateno=1400) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Fop Clopper
[State -1, Fop Clopper]
type = ChangeState
value = 3100
triggerall = !ailevel
triggerall = command = "fopclopper"
triggerall = power >=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1
trigger3 = (stateno=[1200,1202])||(stateno=1300||stateno=1310||stateno=1320||stateno=1400) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Stomach Smash
[State -1, Stomach Smash]
type = ChangeState
value = 3000
triggerall = !ailevel
triggerall = command = "stomachsmash"
triggerall = power >=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Var(4) = [1,10]
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1
trigger3 = (stateno=[1200,1202])||(stateno=1300||stateno=1310||stateno=1320||stateno=1400) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Fly the Borni Skies
[State -1, Fly the Borni Skies]
type = ChangeState
value = 1500
triggerall = !ailevel
triggerall = command = "bornicrush"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1
;---------------------------------------------------------------------------
; The Borni Crush
[State -1, The Borni Crush]
type = ChangeState
value = 1400
triggerall = !ailevel
triggerall = command = "bornicrush"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Cloppercut Strong
[State -1, Cloppercut Strong]
type = ChangeState
value = 1320
triggerall = !ailevel
triggerall = command = "Cloppercut3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Cloppercut Medium
[State -1, Cloppercut Medium]
type = ChangeState
value = 1310
triggerall = !ailevel
triggerall = command = "Cloppercut2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Cloppercut Light
[State -1, Cloppercut Light]
type = ChangeState
value = 1300
triggerall = !ailevel
triggerall = command = "Cloppercut1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Fart Slide Strong Air
[State -1, Fart Slide Strong Air]
type = ChangeState
value = 1212
triggerall = !ailevel
triggerall = command = "fartslide3"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Fart Slide Medium Air
[State -1, Fart Slide Medium Air]
type = ChangeState
value = 1211
triggerall = !ailevel
triggerall = command = "fartslide2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Fart Slide Light Air
[State -1, Fart Slide Light Air]
type = ChangeState
value = 1210
triggerall = !ailevel
triggerall = command = "fartslide"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Fart Slide Strong
[State -1, Fart Slide Strong]
type = ChangeState
value = 1202
triggerall = !ailevel
triggerall = !var(3)
triggerall = command = "fartslide3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
;  Fart Slide Medium
[State -1, Fart Slide Medium]
type = ChangeState
value = 1201
triggerall = !ailevel
triggerall = !var(2)
triggerall = command = "fartslide2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Fart Slide Light
[State -1, Fart Slide Light]
type = ChangeState
value = 1200
triggerall = !ailevel
triggerall = !var(1)
triggerall = command = "fartslide"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; BMT KICK
[State -1, BMT Kick]
type = ChangeState
value = 1100
triggerall = !ailevel
triggerall = command = "BMTkick"
triggerall = !var(0)
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; ScootaSlap air
[State -1, Light ScootaSlap Air]
type = ChangeState
value = 1010
triggerall = !ailevel
triggerall = command = "SCOOTASLAP3"
triggerall = !NumProj
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; ScootaSlap air
[State -1, Light ScootaSlap Air]
type = ChangeState
value = 1010
triggerall = !ailevel
triggerall = command = "SCOOTASLAP2"
triggerall = !NumProj
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; ScootaSlap air
[State -1, Light ScootaSlap Air]
type = ChangeState
value = 1010
triggerall = !ailevel
triggerall = command = "SCOOTASLAP"
triggerall = !NumProj
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; ScootaSlap
[State -1, Strong ScootaSlap]
type = ChangeState
value = 1002
triggerall = !ailevel
triggerall = command = "SCOOTASLAP3"
triggerall = !NumProj
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; ScootaSlap
[State -1, Medium ScootaSlap]
type = ChangeState
value = 1001
triggerall = !ailevel
triggerall = command = "SCOOTASLAP2"
triggerall = !NumProj
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; ScootaSlap
[State -1, Light ScootaSlap]
type = ChangeState
value = 1000
triggerall = !ailevel
triggerall = command = "SCOOTASLAP"
triggerall = !NumProj
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ailevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !ailevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ailevel
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !ailevel
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=200 && movecontact
trigger3 = stateno=400 && movecontact

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !ailevel
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=200 && movecontact
trigger3 = stateno=230 && movecontact
trigger4 = stateno=400 && movecontact
trigger5 = stateno=430 && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !ailevel
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=200 && movecontact
trigger3 = stateno=210 && movecontact
trigger4 = stateno=240 && movecontact
trigger5 = stateno=400 && movecontact
trigger6 = stateno=410 && movecontact
trigger7 = stateno=440 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !ailevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=230 && movecontact
trigger3 = stateno=430 && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !ailevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno=230 && movecontact
trigger4 = stateno=400 && movecontact
trigger5 = stateno=430 && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !ailevel
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=230 && movecontact
trigger3 = stateno=240 && movecontact
trigger4 = stateno=430 && movecontact
trigger5 = stateno=440 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !ailevel
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=400 && movecontact
trigger3 = stateno=200 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !ailevel
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=400 && movecontact
trigger3 = stateno=430 && movecontact
trigger4 = stateno=200 && movecontact
trigger5 = stateno=230 && movecontact


;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !ailevel
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno=200||stateno=210||stateno=220||stateno=240) && movecontact
trigger3 = (stateno=400||stateno=410||stateno=440) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !ailevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=430 && movecontact
trigger3 = stateno=230 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !ailevel
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=400 && movecontact
trigger3 = stateno=430 && movecontact
trigger4 = stateno=200 && movecontact
trigger5 = stateno=230 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !ailevel
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=420 && movecontact
trigger3 = stateno=430 && movecontact
trigger4 = stateno=440 && movecontact
trigger5 = stateno=220 && movecontact
trigger6 = stateno=230 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !ailevel
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !ailevel
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno=600 && movecontact
trigger3 = stateno=630 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !ailevel
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno=600 && movecontact
trigger3 = stateno=610 && movecontact
trigger4 = stateno=640 && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !ailevel
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !ailevel
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno=600 && movecontact
trigger3 = stateno=630 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !ailevel
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno=610 && movecontact
trigger2 = stateno=630 && movecontact
trigger3 = stateno=640 && movecontact

;---------------------------------------------------------------------------
