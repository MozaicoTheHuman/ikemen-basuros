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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;------------------AI

[Command]
name = "AI1"
command = F, x, z, x, z, x, z, x, z
time = 1

[Command]
name = "AI2"
command = b, x, b, a, U, c
time = 1

[Command]
name = "AI3"
command = DF, F, B, U, c, x
time = 1

[Command]
name = "AI4"
command = y, DF, F, B, U, c, x
time = 1

[Command]
name = "AI5"
command = x, x, F, c, a, z, z, b, DF, F
time = 1

[Command]
name = "AI6"
command = D, D, z, c
time = 1

[Command]
name = "AI7"
command = U, D, U, D, F, B, U, z
time = 1

[Command]
name = "AI8"
command = b, b, a, a, x, y, z, UB
time = 1

[Command]
name = "AI9"
command = x, y, z, UF, D, z
time = 1

[Command]
name = "AI10"
command = x, y, z, UF, D, z , y, a, a, F
time = 1

[Command]
name = "AI11"
command = D, D, D, D, D, D, U, UB, s, x
time = 1

[Command]
name = "AI12"
command = a, b, c, U, D, F
time = 1

[Command]
name = "AI13"
command = F, F, F, F, B, B, a, b
time = 1

[Command]
name = "AI14"
command = a, a, x, z, b, c, s
time = 1

[Command]
name = "AI15"
command = D, F, D, D, D, D, x
time = 1

[Command]
name = "AI16"
command = D, D, D, D, x
time = 1

[Command]
name = "AI17"
command = U, U, U, U, x, y
time = 1

[Command]
name = "AI18"
command = F,U,c, y,U
time = 1

[Command]
name = "AI19"
command = D, a, x, x, z, b
time = 1

[Command]
name = "AI20"
command = F, U, z, x, z, x, z, x, z, x, z, x
time = 1

[Command]
name = "AI21"
command = z, z, z, z, y, y
time = 1

[Command]
name = "AI22"
command = x, x, x, x, U, D, z
time = 1

[Command]
name = "AI23"
command = b, U, x, y, y, x, x, s
time = 1

[Command]
name = "AI24"
command = y, y, y, y, x, x, x, z, z, z
time = 1

[Command]
name = "AI25"
command = b, b, y, U, x, F, F, B, D, F
time = 1

[Command]
name = "AI26"
command = y, a, y, a, y, U, y, UF
time = 1

[Command]
name = "AI27"
command = x, U, x, a, c, U, x
time = 1

[Command]
name = "AI28"
command = c, c, c, c, c, s, a, x, c
time = 1

[Command]
name = "AI29"
command = c, a, c, a, U, D, F, B
time = 1

[Command]
name = "AI30"
command = c, a, c, a ;Entienden? CACA! xdddddd
time = 1

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "Joaquin"
command = D,DF,F,a+b+c

[Command]
name = "Shoting All-star"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "Shoting All-stars"
command = ~D, DF, F, D, DF, F, b
time = 20


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
name = "QCF_z"
command = ~D, DF, F, z

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
name = "QCB_z"
command = ~D, DB, B, z

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
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b



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

[Command]
name = "charge-p"
command = x+y

[Command]
name = "charge-k"
command = a+b

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
[Statedef -1]
;---------------------------------------------------------------------------
[State -1, AI Super zukulenta 7w7]
type = VarSet
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
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
v = 45
value = 1
;===========================================================================
;---------------------------------------------------------------------------
;Que coma tierra
[State -1, Que coma tierra]
type = ChangeState
value = 11900
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking

;---------------------------------------------------------------------------
;Super Combo
[State -1, Super Combo]
type = ChangeState
value = 19000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
[State -1, Electizante]
type = ChangeState
value = 666
triggerall = command = "FF_ab"
triggerall = power >= 3500
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Time Girl!
[State -1, Time Girl!]
type = ChangeState
value = 777
triggerall = command = "QCF_xy"
triggerall = power >= 3000
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Cabezaso
[State -1, Cabezaso Aereo]
type = ChangeState
value = 900
triggerall = power >= 30
triggerall = command = "QCF_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Combo Multiple
[State -1, Combo Multiple]
type = ChangeState
value = 19900
triggerall = command = "QCF_y"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, Martin Hurricane]
type = ChangeState
value = 1990
triggerall = command = "QCF_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, J O A Q U I N]
type = ChangeState
value = 123456
triggerall = command = "QCB_xy"
triggerall = power >= 3000
trigger1 = var(1) ;Use combo condition (above)


;---------------------------------------------------------------------------
;Ve, Benjamin!
[State -1, Ve, Benjamin!]
type = ChangeState
value = 9901
triggerall = power >= 50
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Ve, Esteban!
[State -1, Ve, Esteban!]
type = ChangeState
value = 9905
triggerall = power >= 100
triggerall = command = "QCB_y"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Ve, Esteban!
[State -1, Ve, Ehidian!]
type = ChangeState
value = 9990
triggerall = power >= 400
triggerall = command = "QCB_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, SS]
type = ChangeState
value = 666777
triggerall = power >= 2000
triggerall = command = "Shoting All-stars"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;la moto de Papá!
[State -1, La moto de Papá!]
type = ChangeState
value = 1199900
triggerall = command = "QCF_ab"
triggerall = power >= 2000
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Zankou
[State -1, Lapiz]
type = ChangeState
value = 3131
triggerall = power >= 200
triggerall = command = "QCF_a"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, Shun Martin Satsu]
type = ChangeState
value = 119911990
triggerall = command = "QCB_ab"
triggerall = power >= 2999
trigger1 = var(1) ;Use combo condition (above)
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
[State -1, Ai Run Fwd]
type = ChangeState
value = 100
triggerall = Alive
trigger1 = stateno != [100, 0]
trigger1 = (roundstate = 2) && (var(45) != 0)
trigger1 = (Ctrl) && (p2movetype != A) && (statetype = S)
trigger1 = (p2bodydist X >= 75) && (random <= 888)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Ai Run Bwd]
type = ChangeState
value = 105
triggerall = Alive
triggerall = stateno != [105, 0]
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = (Ctrl) && (statetype = S)
trigger1 = (p2bodydist X = [-20,20]) && p2movetype=H && p2statetype = L

[State -1, Ai Escudo]
type = ChangeState
triggerall = Alive
triggerall = statetype!=A
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = (Ctrl) && (p2movetype = A)
triggerall = enemynear,hitdefattr=SA,NA,SA,HA || p2statetype=S  || enemynear,numproj
trigger1 = (inguarddist) && (random <= 992)
value = 130

[State -1, Ai Escudo Agachado]
type = ChangeState
triggerall = Alive
triggerall = statetype!=A
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = (Ctrl) && (p2movetype = A)
triggerall = enemynear,hitdefattr=C,NA,SA,HA || p2statetype=C  || enemynear,numproj
trigger1 = (inguarddist) && (random <= 992)
value = 131

[State -1, Ai Escudo en el aire]
type = ChangeState
triggerall = Alive
triggerall = statetype=A
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = (Ctrl) && (p2movetype = A)
triggerall = enemynear,hitdefattr=SA,NA,SA,HA  || p2statetype=A || enemynear,numproj
trigger1 = (inguarddist) && (random <= 992)
value = 132

[State -1, Ai Martin Hurricane]
type = ChangeState
value = 1990
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno=220)||(stateno=260)
trigger1 = movecontact
trigger1 = random<560
trigger2 = (p2bodydist X >95) && (p2bodydist Y = 0) && (random <= 350) && ctrl

[State -1, Ai Martin Hurricane]
type = ChangeState
value = 900
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno=220)||(stateno=260)
trigger1 = movecontact
trigger1 = random<560
trigger2 = (p2bodydist X >95) && (p2bodydist Y = 0) && (random <= 350) && ctrl

[State -1, Ai Benjamin]
type = ChangeState
value = 9901
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno=220)||(stateno=260)
trigger1 = movecontact
trigger1 = random<560
trigger2 = (p2bodydist X >95) && (p2bodydist Y = 0) && (random <= 350) && ctrl

[State -1, Ai Esteban]
type = ChangeState
value = 9905
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno=220)||(stateno=260)
trigger1 = movecontact
trigger1 = random<560
trigger2 = (p2bodydist X >95) && (p2bodydist Y = 0) && (random <= 350) && ctrl

[State -1, Ai Ehidian]
type = ChangeState
value = 9990
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno=220)||(stateno=260)
trigger1 = movecontact
trigger1 = random<560
trigger2 = (p2bodydist X >95) && (p2bodydist Y = 0) && (random <= 350) && ctrl

[State -1, Ai Salto]
type = ChangeState
value = 40
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno=1990 && movehit && time>=10

[State -1, Ai Taunt]
type = ChangeState
triggerall = Alive
trigger1 = (roundstate = 3) && (var(45) != 0)
trigger1 = (Ctrl) && (statetype != A)
value = 195

[State -1, Ai Stand Light Kick]
type = ChangeState
value = 230
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno = 200
trigger1 = movecontact
trigger2 = (p2bodydist X <= 10) && (p2bodydist Y < 20) && (random <= 346) && ctrl

[State -1, Ai Stand Medium Punch]
type = ChangeState
value = 210
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno = 230
trigger1 = movecontact
trigger2 = (p2bodydist X <= 20) && (p2bodydist Y < 20) && (random <= 346) && ctrl

[State -1, Ai Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno = 210
trigger1 = movecontact
trigger2 = (p2bodydist X <= 20) && (p2bodydist Y < 20) && (random <= 346) && ctrl

[State -1, Ai Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno = 243

[State -1, Ai Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno = 220
trigger1 = movecontact
trigger2 = (p2bodydist X <= 30) && (p2bodydist Y < 20) && (random <= 346) && ctrl

[State -1, Ai Air Medium Kick]
type = ChangeState
value = 640
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype = A
trigger1 = stateno=610 && movecontact && time>=20

[State -1, Ai Air Strong Punch]
type = ChangeState
value = 650
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype = A
trigger1 = stateno=640 && movehit && time>=7

[State -1, Ai Stand Light Punch]
type = ChangeState
value = 200
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = (p2bodydist X <= 10) && (p2bodydist Y < 20) && (random <= 346) && (statetype = S)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, Ai Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = (power < 500) || (p2statetype=S)
triggerall = (p2bodydist X <= 10) && (p2bodydist Y < 20) && (random > 806)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7
trigger3 = stateno = 400
trigger3 = time > 7

[State -1, Ai Super Combo]
type = ChangeState
value = 19000
triggerall = Alive
triggerall=power>=1000
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno= 19900||stateno=1990
trigger1 = movecontact && random < 400
trigger2 = (p2bodydist X <= 29) && (random <= 50)
trigger2 = ctrl

[State -1, Ai Que Coma Tierra]
type = ChangeState
value = 11900
triggerall = Alive
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = (p2bodydist X <= 12) && (p2bodydist Y < 20) && (random <= 85) && (p2stateno != [130,132])
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno=220)||(stateno=260)||(stateno=1990)||(stateno=220)||(hitdefattr=SC,NA,SA)
trigger2 = movecontact && random < 663 && stateno!=450

[State -1, Ai La moto de Papá]
type = ChangeState
value = 1199900
triggerall = Alive
triggerall=power>=2000
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno= 19900||stateno=1990
trigger1 = movecontact && random < 400
trigger2 = (p2bodydist X <= 39) && (random <= 50)
trigger2 = ctrl

[State -1, Ai Shun Martin Satsu]
type = ChangeState
value = 119911990
triggerall = Alive
triggerall=power>=3000
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno= 19900||stateno=1990
trigger1 = movecontact && random < 400
trigger2 = (p2bodydist X <= 39) && (random <= 50)
trigger2 = ctrl

[State -1, Ai Joaquin]
type = ChangeState
value = 123456
triggerall = Alive
triggerall=power>=3000
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno= 19900||stateno=1990
trigger1 = movecontact && random < 400
trigger2 = (p2bodydist X <= 39) && (random <= 50)
trigger2 = ctrl

[State -1, Ai Time Girl Ojala muera la creadora de esa tipa]
type = ChangeState
value = 777
triggerall = Alive
triggerall=power>=3000
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno= 19900||stateno=1990
trigger1 = movecontact && random < 400
trigger2 = (p2bodydist X <= 39) && (random <= 50)
trigger2 = ctrl

[State -1, Ai Shotting Stars]
type = ChangeState
value = 666777
triggerall = Alive
triggerall=power>=3000
triggerall = (roundstate = 2) && (var(45) != 0)
triggerall = statetype != A
trigger1 = stateno= 19900||stateno=1990
trigger1 = movecontact && random < 400
trigger2 = (p2bodydist X <= 39) && (random <= 50)
trigger2 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Arabe Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 12
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



;===========================================================================
[State -1, Carga de poder]
type = ChangeState
value = 1235
triggerall = !var(45)
trigger1 = (command = "hold_y" && command = "hold_b")
trigger1 = statetype != A
trigger1 = power < 3000
trigger1 = ctrl
trigger1 = roundstate = 2
;Quitale el ";" Para activar la carga de poder. Fue desactivada para mejorar la AI.
;Delete the ";" for activate de power charge. Is disabled because the AI is shit.
;Comando/Command: Y+B
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
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

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

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
;[State -1, Crouching Light Kick]
;type = ChangeState
;value = 430
;triggerall = command = "a"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
;[State -1, Crouching Medium Kick]
;type = ChangeState
;value = 440
;triggerall = command = "b"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl

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

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
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
