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
name = "BazokaSH"
command = D,DF,F,b+a
time = 15

[command]
name = "Bazoka"
command = D,DF,F,D,DF,F,a
time = 20

[command]
name = "Bazoka2"
command = B,DB,D,DF,F,b
time = 15

[command]
name = "Hyper"
command = D,DF,F,D,DF,F,y
time = 20

 [command]
name = "Multi"
command = D,DF,F,D,DF,F,x
time = 20

;-| Special Motions |------------------------------------------------------
[command]
name = "Gra_High"
command = DB,B,y
time = 15

[command]
name = "Gra_Low"
command = DB,B,x
time = 15

[command]
name = "Gun1"
command = DB,B,a
time = 15

[command]
name = "Gun2"
command = DB,B,b
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
;INTELIGENCIA ARTIFICIAL
;Activate AI
[State -1, Activate AI]
type = VarSet
triggerall = var(59) = 0
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = command = "KonamiCode"
trigger3 = command = "AI1"
trigger4 = command = "AI2"
trigger5 = command = "AI3"
trigger6 = command = "AI4"
trigger7 = command = "AI5"
trigger8 = command = "AI6"
trigger9 = command = "AI7"
trigger10 = command = "AI8"
trigger11 = command = "AI9"
trigger12 = command = "AI10"
trigger13 = command = "AI11"
trigger14 = command = "AI12"
trigger15 = command = "AI13"
trigger16 = command = "AI14"
trigger17 = command = "AI15"
trigger18 = command = "AI16"
trigger19 = command = "AI17"
trigger20 = command = "AI18"
trigger21 = command = "AI19"
trigger22 = command = "AI20"
v = 59
value = 1

;---------------------------------------------------------------------------
;Activate AI
[State -1, Activate AI]
type = VarSet
trigger1 = var(59) = 2
trigger1 = RoundState != 3
v = 59
value = 1

;---------------------------------------------------------------------------
;Deactivate AI
[State -1, Deactivate AI]
type = VarSet
triggerall = var(59) != 0
trigger1 = RoundState != 2
v = 59
value = 2

;---------------------------------------------------------------------------
;Liedown AI
[State -1, Liedown AI]
type = VarSet
triggerall = var(59) = 1
trigger1 = p2statetype = L
trigger2 = p2stateno = [5050,5079]
v = 59
value = 4

;---------------------------------------------------------------------------
;Liedown AI Off
[State -1, Liedown AI Off]
type = VarSet
triggerall = var(59) = 4
trigger1 = p2statetype != L
trigger1 = p2stateno != [5050,5079]
v = 59
value = 1

;---------------------------------------------------------------------------
;Check Miss AI Begin Attack
[State -1, Check Miss AI Begin Attack]
type = VarSet
triggerall = var(59) != 0
triggerall = var(58) <= 0
trigger1 = movetype = A
v = 58
value = stateno

;---------------------------------------------------------------------------
;Check Miss AI Hit
[State -1, Check Miss AI Hit]
type = VarSet
triggerall = var(59) != 0
triggerall = var(58) != 0
trigger1 = movecontact
trigger2 = movetype = I
trigger2 = random < 10
trigger3 = stateno = [150,159]
v = 58
value = 0

;---------------------------------------------------------------------------
;Check Miss AI End Attack
[State -1, Check Miss AI End Attack]
type = VarSet
triggerall = var(59) != 0
triggerall = var(58) > 0
trigger1 = ctrl = 1
v = 58
value = var(58)*(-1)

;------------------------------------------------
;Guarding  IA
[State -1, Stand guard]
type = ChangeState
triggerall = var(59)= 1
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl = 1
value = 130

[State -1, S-to-C guard]
type = ChangeState
triggerall = var(59)= 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 150
value = 152

[State -1, Crouch guard]
type = ChangeState
triggerall = var(59)= 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl = 1
value = 131

[State -1, C-to-S guard]
type = ChangeState
triggerall = var(59)= 1
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 152
value = 150

[State -1, Air guard]
type = ChangeState
triggerall = var(59)= 1
triggerall = StateType = A
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl = 1
value = 132

;----------------------------------------------------------------------------
;AI Activate especial Statedefs
[State -1, AI]
type = ChangeState
value = 6000
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 500
triggerall = p2dist x <= 40 ; el enemigo esta mas cerca que 40 pixeles de distancia
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 6001
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 500
triggerall = p2dist x <= 40 ; el enemigo esta mas cerca que 40 pixeles de distancia
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 6003
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 500
triggerall = p2dist x <= 40 ; el enemigo esta mas cerca que 40 pixeles de distancia
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 6002
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 500
triggerall = moveguarded
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 8000
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype = A ; nuestro personaje esta en el suelo
triggerall = random <= 500
triggerall = p2dist x <= 40
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

[state -1, Ai]
Type = ChangeState
Triggerall = var(59)= 1
triggerall = stateno != 800 && stateno != 810 && stateno != 820 && statetype != L && alive
Triggerall = Statetype != A && Movetype != A && stateno != 2000 && stateno != 2010 && stateno != 2020 && stateno != 2030 && stateno != 2100
triggerall = p2statetype = A && random <= 70
trigger1 = p2dist x >= 200
trigger2 = ctrl
value= 4000

[state -1, Ai]
Type = ChangeState
Triggerall = var(59)= 1
triggerall = stateno != 800 && stateno != 810 && stateno != 820 && statetype != L  && alive
Triggerall = Statetype != A && Movetype != A  && stateno != 2000 && stateno != 2010 && stateno != 2020 && stateno != 2030 && stateno != 2100
triggerall = random <= 50
trigger1 = p2dist x >= 300
trigger2 = ctrl
value = 4000

[state -1, Ai]
Type = ChangeState
Triggerall = var(59)= 1
triggerall = stateno != 800 && stateno != 810 && stateno != 820 && statetype != L && alive
Triggerall = Statetype != A && Movetype != A && stateno != 2000 && stateno != 2010 && stateno != 2020 && stateno != 2030 && stateno != 2100
triggerall = random <= 5
trigger1 = p2dist x >= 50
trigger2 = ctrl
value = 4000

[state -1, Ai]
Type = ChangeState
Triggerall = var(59)= 1
triggerall = stateno != 800 && stateno != 810 && stateno != 820 && statetype != L  && alive
Triggerall = Statetype != A && Movetype != A && stateno != 2000 && stateno != 2010 && stateno != 2020 && stateno != 2030 && stateno != 2100
triggerall = random <= 5
trigger1 = p2dist x >= 50 && p2statetype = L
trigger2 = ctrl
value = 4000

[state -1, Ai]
Type = ChangeState
Triggerall = var(59)= 1
triggerall = stateno != 800 && stateno != 810 && stateno != 820 && statetype != L  && alive
Triggerall = Statetype != A && Movetype != A && stateno != 2000 && stateno != 2010 && stateno != 2020 && stateno != 2030 && stateno != 2100
triggerall = random <= 5
trigger1 = p2dist x >= 50 && p2statetype = C
trigger2 = ctrl
value = 4000

;-------------------------------------------------------------------------------
;Tipos lejos
[State -1, AI]
type = ChangeState
value = 1000
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = p2dist x >= 50 && random <= 30 ; el enemigo esta mas lejosque 120 pixeles de distancia
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 1010
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = p2dist x >= 150 && random <= 10 ; el enemigo esta mas lejosque 120 pixeles de distancia
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 1020
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = p2dist x >= 230 && random <= 50 ; el enemigo esta mas lejosque 120 pixeles de distancia
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl && alive ; nuestro personaje tiene el control

;------------------------------------
;Especiales
[State -1, AI]
type = ChangeState
value = 2010
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype = S ; nuestro personaje esta en el suelo
triggerall = power >= 1000 && p2dist x <= 40 && random <= 100 ; el enemigo esta mas cerca que 40 pixeles de distancia
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 2030
triggerall = var(59) = 1
triggerall = stateno != 800 && stateno != 810 && stateno != 820
triggerall = statetype = S
triggerall = power >= 1000 && roundstate = 2 &&random <= 10
triggerall = p2statetype != A
trigger1 = ctrl && alive

[state -1, AI]
type = changestate
value = 2020 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = power = 3000 && roundstate = 2
triggerall = life <= 350
triggerall = stateno != 800 && stateno != 810 && stateno != 820
trigger1 = statetype != A && statetype != L && stateno != 2020 && alive ; tu personaje esta en el suelo y tiene el control

[State -1, AI]
type = ChangeState
value = 2000
triggerall = var(59) = 1
triggerall = statetype != A && statetype = S
triggerall = stateno != 800 && stateno != 810 && stateno != 820
triggerall = power >= 2000 && roundstate = 2 && p2dist x <= 150 && random <= 100
triggerall = p2statetype != A
trigger1 = ctrl  && alive

;Hop
[State -1, AI]
type = ChangeState
value = 105
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 400
triggerall = moveguarded
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

;Jump
[state -1, Ai]
Type = ChangeState
Triggerall = var(59)= 1
triggerall = stateno != 800 && stateno != 810 && stateno != 820 && alive
Triggerall = Statetype != A && stateno != 2000&& statetype != L && stateno != 2010 && stateno != 2100 && stateno != 2020 && stateno != 2030
trigger1 = p2statetype = A && random <= 70
value= 40

[state -1, Ai]
Type = ChangeState
Triggerall = var(59)= 1
triggerall = stateno != 800 && stateno != 810 && stateno != 820 && alive
Triggerall = Statetype != A && statetype != L && stateno != 2000 && stateno != 2010 && stateno != 2100 && stateno != 2020 && stateno != 2030
trigger1 = movehit && stateno = 440 && random <= 70
value= 40

[State -1, AI]
type = ChangeState
value = 6001
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 400
triggerall = movecontact && stateno = 200
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 105
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 400
triggerall = movecontact && stateno = 400
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 6002
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 400
triggerall = movecontact && stateno = 230
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 6002
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 400
triggerall = movecontact && stateno = 430
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

;Tipos Cerca
[State -1, AI]
type = ChangeState
value = 200
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 100
triggerall = p2dist x <= 40 ; el enemigo esta mas cerca que 40 pixeles de distancia
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 430
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 200
triggerall = p2dist x <= 10 ; el enemigo esta mas cerca que 40 pixeles de distancia
triggerall = p2statetype != A ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 200
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 500
triggerall = p2dist x <= 10 ; el enemigo esta mas cerca que 40 pixeles de distancia
triggerall = p2statetype = C ; el enemigo tambien esta en el suelo
trigger1 = ctrl  && alive; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 210
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype != A ; nuestro personaje esta en el suelo
triggerall = random <= 500
triggerall = p2dist x <= 20 ; el enemigo esta mas cerca que 40 pixeles de distancia
triggerall = p2statetype = C ; el enemigo tambien esta en el suelo
trigger1 = ctrl && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 640
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype = A ; nuestro personaje esta en el aire
triggerall = p2dist x <= 60 && hitcount >= 25 && random >= 200 ; el enemigo esta mas cerca que 60 pixeles de distancia
trigger1 = ctrl && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 630
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype = A ; nuestro personaje esta en el aire
triggerall = p2dist x <= 60 && random >= 150 ; el enemigo esta mas cerca que 60 pixeles de distancia
trigger1 = ctrl && alive ; nuestro personaje tiene el control

[State -1, AI]
type = ChangeState
value = 610
triggerall = var(59) = 1 ; variable de AI
triggerall = statetype = A ; nuestro personaje esta en el aire
triggerall = movehit && stateno = 640 && time = 26 && random >= 300
triggerall = p2dist x <= 60 ; el enemigo esta mas cerca que 60 pixeles de distancia
trigger1 = ctrl && alive ; nuestro personaje tiene el control

[state -1, AI]
type = changestate
value = 400 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && stateno = 200 && animtime = 0 && random <= 500
trigger1 = statetype != A  && alive  ; tu personaje esta en el suelo y tiene el control

[state -1, AI]
type = Changestate
value = 430
triggerall = var(59) = 1
triggerall = p2statetype != A
triggerall = statetype != A && stateno != 2000 && stateno != 2010 && stateno != 2020 && stateno != 2030
trigger1= Moveguarded && alive && animtime = 0
trigger1 = Random <= 100

[state -1, AI]
type = changestate
value = 430 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && stateno= 400 && animtime = 0 && random <= 500
trigger1 = statetype != A && alive; tu personaje esta en el suelo y tiene el control

[state -1, AI]
type = changestate
value = 2010 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = power >= 1000
triggerall = movehit && stateno= 430 && animtime = 0
trigger1 = statetype != A && alive; tu personaje esta en el suelo y tiene el control


[state -1, AI]
type = changestate
value = 440 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && stateno = 430 && animtime = 0
trigger1 = statetype != A && alive; tu personaje esta en el suelo y tiene el control

[state -1, AI]
type = changestate
value = 240 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && stateno= 400 && animtime = 0 && random <= 500
trigger1 = statetype != A && alive; tu personaje esta en el suelo y tiene el control

[state -1, AI]
type = changestate
value = 2000 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = power >= 2000
triggerall = movehit && stateno= 240 && animtime = 0
trigger1 = statetype != A && alive; tu personaje esta en el suelo y tiene el control

[state -1, AI]
type = changestate
value = 610 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = time = 24 && stateno= 640 && animtime = 0
trigger1 = statetype = A && alive; tu personaje esta en el suelo y tiene el control

[state -1, AI]
type = changestate
value = 630 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = time = 24 && stateno= 610 && animtime = 0
trigger1 = statetype = A && alive; tu personaje esta en el suelo y tiene el control

[state -1, AI]
type = changestate
value = 430 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && stateno= 230 && animtime = 0
trigger1 = statetype != A && alive; tu personaje esta en el suelo y tiene el contro

[state -1, AI]
type = changestate
value = 410 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && stateno= 430 && animtime = 0
trigger1 = statetype != A && alive; tu personaje esta en el suelo y tiene el contro


[state -1, AI]
type = changestate
value = 210 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && stateno= 200 && animtime = 0 && random <= 500
trigger1 = statetype != A && alive; tu personaje esta en el suelo y tiene el contro

[state -1, AI]
type = changestate
value = 240 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && stateno= 210  && animtime = 0 && random <= 500
trigger1 = statetype != A && alive

[state -1, AI]
type = changestate
value = 240 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && time = 43 && stateno= 2010 && animtime = 0
trigger1 = statetype != A && alive

[state -1, AI]
type = changestate
value = 240 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movehit && stateno= 610 && animtime = 0
trigger1 = statetype != A && alive

[state -1, AI]
type = changestate
value = 640 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movecontact && hitcount >= 20 && stateno = 630 && animtime = 0
trigger1 = statetype = A && alive

[state -1, AI]
type = changestate
value = 630 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movecontact && stateno = 600 && animtime = 0
trigger1 = statetype = A && alive

[state -1, AI]
type = changestate
value = 210 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movecontact && stateno= 200 && animtime = 0
trigger1 = statetype != A && alive

[state -1, AI]
type = changestate
value = 430 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = movecontact && stateno= 210 && animtime = 0
trigger1 = statetype != A && alive

[state -1, AI]
type = changestate
value = 2000 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = power <= 2000
triggerall = movecontact && stateno= 1000 && animtime = 0 && random <= 100
trigger1 = statetype != A && alive

[state -1, AI]
type = changestate
value = 2000 ;statedef del ataque
triggerall = var(59) = 1 ; condicion especial para que lo haga solamente cuando es el CPU
triggerall = power <= 2000
triggerall = movecontact && stateno= 1010 && animtime = 0 && random <= 100
trigger1 = statetype != A && alive
























;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
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
triggerall = command = "y" || command = "z"
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
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl


;--------------------------------------------------------------------------
; Granada (Low)
[State -1, Granada Low]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "Gra_Low"
triggerall = ctrl = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Granada (High)
[State -1, Granada High]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = command = "Gra_High"
triggerall = ctrl = 1
trigger1 = Statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;GunShot
[State -1, GunShot]
type = ChangeState
value = 1020
triggerall = var(59) != 1
triggerall = command = "Gun1" || command = "Gun2"
trigger1 = Statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Hyper Combo
[State -1, UltraCombo]
type = ChangeState
value = 2010
triggerall = var(59) != 1
triggerall = command = "Hyper"
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA

;---------------------------------------------------------------------------

;Bazoka 1
[State -1, Bazoka]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = command = "Bazoka" || command = "BazokaSH"
triggerall = power >= 2000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger3 = movehit && stateno = 240


;-------------------
;Bazoka 2
[State -1, Bazoka2]
type = ChangeState
value = 2020
triggerall = var(59) != 1
triggerall = command = "Bazoka2"
triggerall = power >= 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA

;-------------------------
; Multi Gunshot
[State -1, Multigun]
type = ChangeState
value = 2030
triggerall = var(59) != 1
triggerall = command = "Multi"
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA

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

;---------------------------------------------------------------------------
; Stand Strong Punch
;[State -1, Stand Strong Punch]
;type = ChangeState
;value = 220
;triggerall = command = "z"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl

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

;---------------------------------------------------------------------------
; Standing Strong Kick
;[State -1, Standing Strong Kick]
;type = ChangeState
;value = 250
;triggerall = command = "c"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl

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

;---------------------------------------------------------------------------
; Crouching Strong Punch
;[State -1, Crouching Strong Punch]
;type = ChangeState
;value = 420
;triggerall = command = "z"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl

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

;---------------------------------------------------------------------------
; Crouching Strong Kick
;[State -1, Crouching Strong Kick]
;type = ChangeState
;value = 450
;triggerall = command = "c"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
;[State -1, Jump Strong Punch]
;type = ChangeState
;value = 620
;triggerall = command = "z"
;trigger1 = statetype = A
;trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
;[State -1, Jump Strong Kick]
;type = ChangeState
;value = 650
;triggerall = command = "c"
;trigger1 = statetype = A
;trigger1 = ctrl

;---------------------------------------------------------------------------
