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


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

[Command]
name = "TripleKFPalm"
command = ~F, B, F, B, x
time = 40

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~F, B, F, B, a
time = 40


[command]
name = "SmashKFUpper"
command = ~D,D,x+y
time = 30

[command]
name = "SmashKFUpper"
command = ~D,D,x+z
time = 30

[command]
name = "lolkicks"
command = ~D, DF, F, z
time = 42

[command]
name = "FingerFuck"
command = ~D, DB, B, D, DB, B, b
time = 37

[command]
name = "FingerFuck2"
command = ~D, DB, B, D, DB, B, x
time = 37

[command]
name = "H_cancel"
command = ~F, F, x, F, F
time = 37

[command]
name = "WAVES"
command = ~D, DF, F, D, DF, F, b
time = 37

[command]
name = "WAVES_lo"
command = ~D, DF, F, D, DF, F, x
time = 37

[command]
name = "RRDA"
command = ~F, B, F, B, z
time = 37

[command]
name = "CounterHI"
command = ~D, DF, F, a
time = 38

[command]
name = "CounterLO"
command = ~D, DB, B, a
time = 38

;-| Special Motions |------------------------------------------------------
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
name = "Flash"
command = ~D, DB, B, a
time = 35

[Command]
name = "Flash1"
command = ~D, DB, B, b
time = 35

[Command]
name = "Flash2"
command = ~D, DB, B, c
time = 35

[Command]
name = "sonicwave"
command = ~D, DF, F, x
time = 35

[Command]
name = "sonicwave1"
command = ~D, DF, F, y
time = 35

[Command]
name = "sonicwave2"
command = ~D, DF, F, z
time = 35

[Command]
name = "knuckles"
command = /$B, x
time = 1

[Command]
name = "knuckles"
command = /$B, y
time = 1

[Command]
name = "knuckles"
command = /$B, z
time = 1

[Command]
name = "Whirlspin"
command = ~D, DF, F, a
time = 35

[Command]
name = "Whirlspin1"
command = ~D, DF, F, b
time = 35

[Command]
name = "Whirlspin2"
command = ~D, DF, F, c
time = 35

[command]
name = "Upper_Daniel"
command = ~D, B, DB, x
time = 35

[command]
name = "PALM_Daniel"
command = ~D, B, DB, y
time = 35

[command]
name = "Bash"
command = ~D, B, DB, z
time = 35

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
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;===========================================================================
;-----------------------------------------------------------------------------
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
var(1) = 1

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(3) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
var(3) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
;速いカンフー蹴り（ゲージレベル１／３）
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1070
triggerall = command = "FF_ab"
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Knee
;カンフー蹴り（弱）
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1080
triggerall = command = "FF_a"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;カンフー蹴り（弱）
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1060
triggerall = command = "FF_b"
trigger1 = var(1) ;Use combo condition (above)

;----------------------------------------------------------------
;other!!!!
[State -1, "sonicwave1"]
type = ChangeState
value = 1011
triggerall = command = "sonicwave1"
triggerall = NumHelper(666555) = 0 
triggerall = NumProjID(666555) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;---------------------------------------------------------------------------
;other!!!!
[State -1, "sonicwave2"]
type = ChangeState
value = 1012
triggerall = command = "sonicwave2"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;---------------------------------------------------------------------------
;other!!!!
[State -1, "sonicwave"]
type = ChangeState
value = 1010
triggerall = command = "sonicwave"
triggerall = NumHelper(666555) = 0 
triggerall = NumProjID(666555) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;----------------------------------------------------------------
;---------------------------------------------------------------------------
;other!!!!
[State -1, "Flash"]
type = ChangeState
value = 1020
triggerall = command = "Flash"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;---------------------------------------------------------------------------
;other!!!!
[State -1, "Flash"]
type = ChangeState
value = 1021
triggerall = command = "Flash1"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;---------------------------------------------------------------------------
;other!!!!
[State -1, "Flash"]
type = ChangeState
value = 1022
triggerall = command = "Flash2"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 1000
triggerall = command = "knuckles"
triggerall = statetype != A
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;----------------------------------------------------------------
[State -1]
type = ChangeState
value = 1050
triggerall= Command = "Whirlspin"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;----------------------------------------------------------------
[State -1]
type = ChangeState
value = 1053
triggerall= Command = "Whirlspin1"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;----------------------------------------------------------------
[State -1]
type = ChangeState
value = 1055
triggerall= Command = "Whirlspin2"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
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
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Medium Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)
;---------------------------------------------------------------------------
;Crouching new Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


;---------------------------------------------------------------------------
;Crouching new Strong Kick
;しゃがみ強キック
[State -1, Crouching new Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump new Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump new Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

[State -1, Projectile]
type = ChangeState
value = 65000
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;other!!!!
[State -1, HyperKicker]
type = ChangeState
value = 4322
triggerall = command = "lolkicks"
triggerall = power >= 3000
trigger1 = statetype = S
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4321)
trigger2 = movecontact

;other!!!!
[State -1, FingerSlap]
type = ChangeState
value = 3058
triggerall = command = "FingerFuck"
triggerall = power >= 4000
trigger1 = statetype = S
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4321)
trigger2 = movecontact

;other!!!!
[State -1, FingerFuck]
type = ChangeState
value = 3090
triggerall = command = "FingerFuck2"
triggerall = power >= 4000
trigger1 = statetype = S
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4321)
trigger2 = movecontact

;other!!!!
[State -1, FingerFuck]
type = ChangeState
value = 3075
triggerall = command = "H_cancel"
triggerall = power >= 3000
trigger1 = statetype = S
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4321)
trigger2 = movecontact

;other!!!!
[State -1, FingerFuck]
type = ChangeState
value = 4205
triggerall = command = "WAVES"
triggerall = power >= 3000
trigger1 = statetype = S
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4321)
trigger2 = movecontact

;other!!!!
[State -1, FingerFuck]
type = ChangeState
value = 4206
triggerall = command = "WAVES_lo"
triggerall = power >= 2000
trigger1 = statetype = S
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4321)
trigger2 = movecontact

;other!!!!
[State -1, RoadRollerDa]
type = ChangeState
value = 10250
triggerall = command = "RRDA"
triggerall = power >= 4000
triggerall = Life <= lifemax*0.35
triggerall = Life >= P2Life
trigger1 = hitdefattr = SC, NA, SA, HA
trigger1 = stateno != [3000,4321)
trigger1 = stateno != [6000,20000)

;other!!!!
[State -1, CounterAttack]
type = ChangeState
value = 3076
triggerall = command = "CounterHI"
triggerall = power >= 4000
triggerall = Life <= lifemax*0.4
trigger1 = hitdefattr = SC, NA, SA, HA
trigger1 = stateno != [3000,4321)
trigger1 = stateno != [6000,20000)

;other!!!!
[State -1, CounterAttack]
type = ChangeState
value = 3077
triggerall = command = "CounterLO"
triggerall = power >= 2000
trigger1 = hitdefattr = SC, NA, SA, HA
trigger1 = stateno != [3000,4321)
trigger1 = stateno != [6000,20000)
trigger1 = movecontact

;other!!!!
[State -1, UpperSmash]
type = ChangeState
value = 1111
triggerall = command = "Upper_Daniel"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = movecontact
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact


;other!!!!
[State -1, KFPalm]
type = ChangeState
value = 1222
triggerall = command = "PALM_Daniel"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = movecontact
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact


;other!!!!
[State -1, SlamBash]
type = ChangeState
value = 6280
triggerall = command = "Bash"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = movecontact
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
