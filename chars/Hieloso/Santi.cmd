; The CMD file.
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
;Nivel 1
[Command]
name = "MANO DE HIELO"
command = D,DF,F,a+b

[Command]
name = "MultiPuños"
command = D,DF,F,x+y

[Command]
name = "MANO DE HIELO"
command = D,DF,F,a+c

[Command]
name = "MultiPuños"
command = D,DF,F,x+z

[Command]
name = "MANO DE HIELO"
command = D,DF,F,c+b

[Command]
name = "MultiPuños"
command = D,DF,F,z+y

;Nivel 2
[Command]
name = "Clones de hielo"
command = D,DB,B,a+b

[Command]
name = "Onda de Hielo"
command = D,DB,B,x+y

[Command]
name = "Clones de hielo"
command = D,DB,B,c+b

[Command]
name = "Onda de Hielo"
command = D,DB,B,z+y

[Command]
name = "Clones de hielo"
command = D,DB,B,a+c

[Command]
name = "Onda de Hielo"
command = D,DB,B,x+z

;Nivel 3
[Command]
name = "SE CAI UN PEDAZO DE HIELO"
command = D,DB,B,c+z
time = 900

[Command]
name = "SE CAI UN PEDAZO DE HIELO"
command = D,DB,B,b+y
time = 900

[Command]
name = "SE CAI UN PEDAZO DE HIELO"
command = D,DB,B,a+x
time = 900

[Command]
name = "Chasetiago"
command = D,DF,F,c+z
time = 900

[Command]
name = "Chasetiago"
command = D,DF,F,b+y
time = 900

[Command]
name = "Chasetiago"
command = D,DF,F,a+x
time = 900

;-| Special Motions |------------------------------------------------------

[Command]
name = "SuperUppercut1"
command = D,DF,F,x

[Command]
name = "SuperUppercut1"
command = D,DF,F,y

[Command]
name = "SuperUppercut2"
command = D,DF,F,z

[Command]
name = "SuperSalto"
command = D, U

[Command]
name = "BolaHielo1"
command = D,DF,F,a

[Command]
name = "BolaHielo2"
command = D,DF,F,b

[Command]
name = "BolaHielo3"
command = D,DF,F,c

[Command]
name = "MazoHielo1"
command = B,F,x

[Command]
name = "MazoHielo2"
command = B,F,y

[Command]
name = "MazoHielo3"
command = B,F,z

[Command]
name = "PuñoCongelado1"
command = D,DB,B,x

[Command]
name = "PuñoCongelado2"
command = D,DB,B,y

[Command]
name = "PuñoCongelado3"
command = D,DB,B,z

[Command]
name = "PuñoCongelador1"
command = D,DB,B,a

[Command]
name = "PuñoCongelador2"
command = D,DB,B,b

[Command]
name = "PuñoCongelador3"
command = D,DB,B,c

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
time = 2

[Command]
name = "y"
command = y
time = 2

[Command]
name = "z"
command = z
time = 2

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

;-| AI |------------------------------------------------------
[Command]
name = "CPU1" 
command = U, D, F, U, D, F 
time = 0
 
[Command]
name = "CPU2"
command = U, B, F, U, D, F
time = 0
 
[Command]
name = "CPU3"
command = U, D, D, U, D, F
time = 0
 
[Command]
name = "CPU4"
command = U, F, U, B, U, D, F
time = 0
 
[Command]
name = "CPU5"
command = B, B, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU6"
command = U, D, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU7"
command = F, F, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU8"
command = U, D, U, U, B, U, D, F
time = 0
 
[Command]
name = "CPU9"
command = F, B, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU10"
command = F, F, B, B, U, B, U, D, F
time = 0
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
;Codigo hecho por Chase
[State -1, Activate AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
v = 59
value = 1

;---------------------------------------------------------------------------
[State -1, AI Attack];run
type = Changestate
triggerall = AILevel
triggerall = roundstate = 2
trigger1 = ctrl && statetype != A && p2movetype != A
triggerall = stateno != 100 && stateno != 100
triggerall = p2bodydist x > 50
triggerall = p2movetype != A  ;&& random < 750
value = 103

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x<5
triggerall = random < 550
trigger2 = stateno = 200 && movecontact
trigger3 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 200

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x<5
triggerall = random < 550
trigger2 = stateno = 200 && movecontact
trigger3 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 210

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x<5
triggerall = random < 550
trigger2 = stateno = 210 && movecontact
trigger3 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 220

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x<5
triggerall = random < 550
trigger2 = stateno = 200 && movecontact
trigger3 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 230

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x<5
triggerall = random < 550
trigger2 = stateno = 230 && movecontact
trigger3 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 240

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x<5
triggerall = random < 550
trigger2 = stateno = 230 && movecontact
trigger3 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 250

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = numhelper(1001) = 0
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x<5
triggerall = random < 270
trigger2 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 1010

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = numhelper(1001) = 0
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype = A&&p2bodydist x<5
triggerall = random < 370
trigger2 = ctrl && statetype = A&& p2movetype = A && p2bodydist x <= 5
value = 1023

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = palno != 6
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x<5
triggerall = random < 350
trigger2 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 1100

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = palno = 6
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x<5
triggerall = random < 350
trigger2 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 1120

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = numhelper(1200) = 0
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x>30
triggerall = random < 750
trigger2 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 1200

[State -1, AI Attack];Light Punch Stand
type = Changestate
triggerall = numhelper(1200) = 0
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A&&p2bodydist x>60
triggerall = random < 850
trigger2 = ctrl && statetype != A&& p2movetype = A && p2bodydist x <= 5
value = 1220



[State -1, AI Attack];MultiCombo Hyper
type = Changestate
triggerall = palno != 6
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A
triggerall = power >= 1000 && random < 200
trigger2 = ctrl && statetype != A&& p2movetype = A
value = 3000

[State -1, AI Attack];MultiCombo Hyper
type = Changestate
triggerall = palno = 6
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A
triggerall = power >= 1000 && random < 200
trigger2 = ctrl && statetype != A&& p2movetype = A
value = 3006

[State -1, AI Attack];Clone Hyper
type = Changestate
triggerall = numhelper(3100) = 0
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A
triggerall = power >= 2000 && random < 900
trigger2 = ctrl && statetype != A&& p2movetype = A
value = 3100

[State -1, AI Attack];ICE HAND Hyper
type = Changestate
triggerall = palno != 6 || palno != 10
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A
triggerall = power >= 1000 && random < 500
trigger2 = ctrl && statetype != A&& p2movetype = A
value = 3200

[State -1, AI Attack];ICE KNIFES Hyper
type = Changestate
triggerall = palno = 6 || palno = 10
triggerall = numhelper(3200) = 0
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A
triggerall = power >= 1000 && random < 500
trigger2 = ctrl && statetype != A&& p2movetype = A
value = 3600

[State -1, AI Attack];IceLazer Hyper
type = Changestate
triggerall = numhelper(3300) = 0
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A
triggerall = power >= 2000 && random < 600
trigger2 = ctrl && statetype != A&& p2movetype = A
value = 3300

[State -1, AI Attack];IceBlcok Hyper
type = Changestate
triggerall = numhelper(3400) = 0
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A
triggerall = power >= 3000 && random < 100 && life < 20
trigger2 = ctrl && statetype != A&& p2movetype = A
value = 3400

[State -1, AI Attack];Amalgam Hyper
type = Changestate
triggerall = p2name != "Chase Fowler"
triggerall = p3name != "Chase Fowler"
triggerall = p4name != "Chase Fowler"
triggerall = numhelper(4000) = 0
triggerall = AILevel && enemy,statetype != L
trigger1 = ctrl && statetype != A
triggerall = power >= 3000 && life < 20
trigger2 = ctrl && statetype != A&& p2movetype = A
value = 4000

[state combo1]
type=changestate
triggerall=p2statetype!=L
triggerall = AILevel != 0
triggerall = var(53):=1
trigger1=ctrl && statetype!=A && p2bodydist x < 5 && random < 500
trigger2 = ctrl && p2movetype=A && statetype!=A && p2bodydist x < 5
value=200
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=200&&movehit
value=230
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=230&&movehit
value=210
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=210&&movehit
value=240
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=210&&movehit
value=11011
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=210&&movehit
value=221
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=400&&movehit
value=410
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=410&&movehit
value=421
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=410&&movehit
value=430
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=430&&movehit
value=441
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=441&&movehit
value=451
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=421&&movehit
value=482
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=482 && time > 9
value=640
[state combo1]
type=Changestate
trigger1 = var(59) && var(53) = 1
trigger1=stateno=640 && time > 100
value=650


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Amalgam
[State -1, Chasetiago]
type = ChangeState
value = 4000
triggerall = p2name != "Chase Fowler"
triggerall = p3name != "Chase Fowler"
triggerall = p4name != "Chase Fowler"
triggerall = command = "Chasetiago"
triggerall = numhelper(4000) = 0
triggerall = power >= 3000
triggerall = p2bodydist x<101
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hyper5
[State -1, FINAL HYPER]
type = ChangeState
value = 3400
triggerall = command = "SE CAI UN PEDAZO DE HIELO"
triggerall = numhelper(3400) = 0
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hyper4
[State -1, Ice BEAM]
type = ChangeState
value = 3300
triggerall = command = "Onda de Hielo"
triggerall = numhelper(3300) = 0
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hyper3
[State -1, IceClones]
type = ChangeState
value = 3100
triggerall = command = "Clones de hielo"
triggerall = numhelper(3100) = 0
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hyper2
[State -1, MANO DE HIELO]
type = ChangeState
value = 3600
Triggerall = palno = 6 || palno = 10
triggerall = command = "MANO DE HIELO"
triggerall = numhelper(3200) = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hyper2
[State -1, MANO DE HIELO]
type = ChangeState
value = 3200
triggerall = command = "MANO DE HIELO"
triggerall = numhelper(3200) = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hyper1
[State -1, MultiPunchs]
type = ChangeState
value = 3006
triggerall = palno = 6
triggerall = command = "MultiPuños"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hyper1
[State -1, MultiPunchs]
type = ChangeState
value = 3000
triggerall = command = "MultiPuños"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 1400
triggerall = power < 3000
triggerall = command = "a"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
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
; Air Dash Fwd
[State -1, Air Dash Fwd]
type = ChangeState
value = 480
triggerall = stateno != 480
triggerall = stateno != 481
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Dash Back
[State -1, Air Dash Back]
type = ChangeState
value = 481
triggerall = stateno != 480
triggerall = stateno != 481
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; SuperJump
[State -1, Super Jump]
type = ChangeState
value = 482
trigger1 = command = "SuperSalto"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;SuperUppercut
[State -1, SuperUppercut]
type = ChangeState
value = 1501
triggerall = command = "SuperUppercut1"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SuperUppercut
[State -1, SuperUppercut]
type = ChangeState
value = 1502
triggerall = command = "SuperUppercut2"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceKNIFE
[State -1, IceKNIFE]
type = ChangeState
value = 1120
triggerall = palno = 6 || palno = 10
triggerall = (command = "MazoHielo1") || (command = "MazoHielo2") || (command = "MazoHielo3")
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceKNIFE
[State -1, SuperSpriteSlam]
type = ChangeState
value = 1500
triggerall = palno = 7
triggerall = (command = "MazoHielo1") || (command = "MazoHielo2") || (command = "MazoHielo3")
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;FrezzingPunch
[State -1, FrezzingPunch]
type = ChangeState
value = 1300
triggerall = command = "PuñoCongelador1"
trigger1 = ctrl
;---------------------------------------------------------------------------
;FrezzingPunch
[State -1, FrezzingPunch]
type = ChangeState
value = 1310
triggerall = command = "PuñoCongelador2"
trigger1 = ctrl
;---------------------------------------------------------------------------
;FrezzingPunch
[State -1, FrezzingPunch]
type = ChangeState
value = 1320
triggerall = command = "PuñoCongelador3"
trigger1 = ctrl
;---------------------------------------------------------------------------
;IcePunch
[State -1, IcePunch]
type = ChangeState
value = 1200
triggerall = command = "PuñoCongelado1"
trigger1 = numhelper(1200) = 0
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IcePunch
[State -1, IcePunch]
type = ChangeState
value = 1210
triggerall = command = "PuñoCongelado2"
trigger1 = numhelper(1200) = 0
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IcePunch
[State -1, IcePunch]
type = ChangeState
value = 1220
triggerall = command = "PuñoCongelado3"
trigger1 = numhelper(1200) = 0
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceBall
[State -1, IceBall]
type = ChangeState
value = 1000
triggerall = command = "BolaHielo1"
triggerall = p2stateno != 1002
trigger1 = numhelper(1001) < 3
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceBall
[State -1, IceBall]
type = ChangeState
value = 1010
triggerall = command = "BolaHielo2"
triggerall = p2stateno != 1002
trigger1 = numhelper(1001) < 3
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceBall
[State -1, IceBall]
type = ChangeState
value = 1020
triggerall = command = "BolaHielo3"
triggerall = p2stateno != 1002
trigger1 = numhelper(1001) < 3
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceBall
[State -1, IceBall (Air) light]
type = ChangeState
value = 1003
triggerall = command = "BolaHielo1"
triggerall = p2stateno != 1002
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceBall
[State -1, IceBall (Air) medium]
type = ChangeState
value = 1021
triggerall = command = "BolaHielo2"
triggerall = p2stateno != 1002
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceBall
[State -1, IceBall (Air) hard]
type = ChangeState
value = 1023
triggerall = command = "BolaHielo3"
triggerall = p2stateno != 1002
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceHammer
[State -1, IceHammer light]
type = ChangeState
value = 1100
triggerall = command = "MazoHielo1"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceHammer
[State -1, IceHammer medium]
type = ChangeState
value = 1101
triggerall = command = "MazoHielo2"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;IceHammer
[State -1, IceHammer hard]
type = ChangeState
value = 1102
triggerall = command = "MazoHielo3"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = palno != 6
triggerall = palno != 9
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 802
triggerall = palno = 6
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2stateno != 1002
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2stateno != 1002

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 801
triggerall = palno = 9
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2stateno != 1002
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2stateno != 1002

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
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
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

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
trigger3 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno = 221 && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 221
triggerall = command = "z"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 11011 && movecontact
trigger5 = stateno = 11016 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
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
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 421
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movehit
trigger3 = stateno = 430 && movehit

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && movehit
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 441
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movehit
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
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 451
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 440 && movehit
trigger3 = stateno = 441 && movehit
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
trigger2 = stateno = 600 && movehit
trigger3 = stateno = 630 && movehit

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch Combo]
type = ChangeState
value = 621
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movehit
trigger3 = stateno = 641 && movehit
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Slap]
type = ChangeState
value = 622
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 620 && time > 5
trigger3 = stateno = 621 && movehit
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 621 && movehit
trigger3 = stateno = 600 && movehit

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 641
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movehit
trigger3 = stateno = 610 && movehit

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 621 && movehit
trigger3 = stateno = 641 && movehit
trigger4 = stateno = 610 && movehit

;---------------------------------------------------------------------------
