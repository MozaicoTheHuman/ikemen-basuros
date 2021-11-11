;|***************************************ADAM'S CMD FILE*******************************************|
;|                                 2005/200X mulambo production                                    |
;|																   |
:|                      PLEASE  DON'T MODIFY THIS FILE AND/OR OTHERs KARL'S                        |
;|                               FILES WITHOUT ANY PERMISSION.                                     |
;|																   |
;|e-mail address::                  mulambo_mc@hotmail.com                                         |
;|visit the site::                  http:\\www.orimuga.com                                         |
;|*************************************************************************************************| 
;-| Hyper Motions |---------------------------------------------------

[Command]
name = "scary"
command = D,DB,B,D,DF,F,x+y
time = 28

[Command]
name = "pingoku"
command = D,DF,F,D,DF,F,a+b
time = 28

[Command]
name = "hstatsu"
command = D,DB,B,D,DB,B,b
time = 28

[Command]
name = "hwtatsu"
command = D,DB,B,D,DB,B,a
time = 28

[Command]
name = "hwpingu"
command = ~20$B, F, B, F, b
time = 35


[Command]
name = "hspingu"
command = ~20$B, F, B, F, a
time = 35


[Command]
name = "hsmitra"
command = D,DB,B,D,DB,B,y
time = 28

[Command]
name = "hwmitra"
command = D,DB,B,D,DB,B,x
time = 28

[Command]
name = "hwmeck"
command = D,DF,F,D,DF,F,x
time = 28

[Command]
name = "hsmeck"
command = D,DF,F,D,DF,F,y
time = 28


;-| Super Motions |---------------------------------------------------

[Command]
name = "statsu"
command = D, DB, B, b
time = 15


[Command]
name = "wtatsu"
command = D, DB, B, a
time = 15

[Command]
name = "sapingu"
command = D, DF, F, b
time = 15


[Command]
name = "wapingu"
command = D, DF, F, a
time = 15


[Command]
name = "sball"
command = D, DB, B, y
time = 15


[Command]
name = "wball"
command = D, DB, B, x
time = 15

[Command]
name = "wpiken"
command = F, D, DF, x
time = 25

[Command]
name = "spiken"
command = F, D, DF, y
time = 25

[Command]
name = "wmeck"
command = D, DF, F, x
time = 15


[Command]
name = "smeck"
command = D, DF, F, y
time = 15


[Command]
name = "wpingu"
command = ~20$B, F, a
time = 10


[Command]
name = "spingu"
command = ~25$B, F, b
time = 10


;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "CD"
command = c

[Command]
name = "roll1"
command = a+x

[Command]
name = "roll2"
command = z

[Command]
name = "charge-p"
command = x+y

[Command]
name = "charge-k"
command = a+b

[Command]
name = "all"
command = a+b+x+y
time = 1

;-| Dir + Button |----------------------------------------------------
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
name = "fwd+y"
command = F,y
time = 2

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
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "downfwd_x"
command = /DF,x
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
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



;***************************************************************************
;					 STATE ENTRY
;***************************************************************************
;---------------------------------------------------------------------------


[Statedef -1]


;***************************************************************************
;*												   *
;================================HYPER MOVES===============================*
;*											         *
;***************************************************************************

;Super Scary Attack
[State -1,ask]
type = ChangeState
value = 3000
triggerall = command = "scary"
triggerall = power >= 3000
triggerall = life <= 600
;triggerall = numhelper(9100) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Pin-Goku Satsu
[State -1,ask]
type = ChangeState
value = 1300
triggerall = command = "pingoku"
triggerall = power >= 3000
;triggerall = numhelper(9100) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


;Hyper Strong Tatsumaki-robby-kyaku!
[State -1,ask]
type = ChangeState
value = 1280
triggerall = command = "hstatsu"
triggerall = power >= 2000
;triggerall = numhelper(9100) = 0
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;Hyper Weak Tatsumaki-pingu-kyaku!
[State -1,ask]
type = ChangeState
value = 1270
triggerall = command = "hwtatsu"
triggerall = power >= 1000
;triggerall = numhelper(9100) = 0
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact


;Hyper Strong PinguBall!
[State -1,ask]
type = ChangeState
value = 1059
triggerall = command = "hwpingu"
triggerall = power >= 2000
triggerall = numhelper(9100) = 0
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;Hyper Weak PinguBall!
[State -1,ask]
type = ChangeState
value = 1050
triggerall = command = "hspingu"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact


;Hyper Strong Meck-Meck!
[State -1,ask]
type = ChangeState
value = 1013
triggerall = command = "hsmitra"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact


;Hyper Weak Meck-Meck!
[State -1,ask]
type = ChangeState
value = 1012
triggerall = command = "hwmitra"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;Hyper Weak Meck-Meck!
[State -1,ask]
type = ChangeState
value = 1002
triggerall = command = "hwmeck"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;Hyper Strong Meck-Meck!
[State -1,ask]
type = ChangeState
value = 1003
triggerall = command = "hsmeck"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact







;***************************************************************************
;*												   *
;==============================SPECIAL MOVES===============================*
;*											         *
;***************************************************************************


;---------------------------------------------------------------------------
;Weak Tatsumaki-pingu-kyaku!
[State -1,ask]
type = ChangeState
value = 1260
triggerall = command = "statsu"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;---------------------------------------------------------------------------
;Weak Tatsumaki-pingu-kyaku!
[State -1,ask]
type = ChangeState
value = 1250
triggerall = command = "wtatsu"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact


;---------------------------------------------------------------------------
;Strong Pingyuken!
[State -1,ask]
type = ChangeState
value = 1090
triggerall = command = "spiken"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;---------------------------------------------------------------------------
;Weak Pingyuken!
[State -1,ask]
type = ChangeState
value = 1080
triggerall = command = "wpiken"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;---------------------------------------------------------------------------
;Strong Air PinguBall!
[State -1,ask]
type = ChangeState
value = 1030
triggerall = command = "sapingu"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = [600,699]) && movecontact



;---------------------------------------------------------------------------
;Weak Air PinguBall!
[State -1,ask]
type = ChangeState
value = 1027
triggerall = command = "wapingu"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;---------------------------------------------------------------------------
;Strong PinguBall!
[State -1,ask]
type = ChangeState
value = 1026
triggerall = command = "spingu"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;---------------------------------------------------------------------------
;Weak PinguBall!
[State -1,ask]
type = ChangeState
value = 1020
triggerall = command = "wpingu"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;---------------------------------------------------------------------------
;Strong Snowball!
[State -1,ask]
type = ChangeState
value = 1011
triggerall = command = "sball"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;---------------------------------------------------------------------------
;Weak Snowball!
[State -1,ask]
type = ChangeState
value = 1010
triggerall = command = "wball"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;---------------------------------------------------------------------------
;Strong Meck-Meck!
[State -1,ask]
type = ChangeState
value = 1001
triggerall = command = "smeck"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact

;---------------------------------------------------------------------------
;Weak Meck-Meck!
[State -1,ask]
type = ChangeState
value = 1000
triggerall = command = "wmeck"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact


;---------------------------------------------------------------------------
;Charge
[State -1] 
type = ChangeState
value = 700
triggerall = command = "charge-p"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = life > 0 && statetype != A
triggerall = power < 3000
trigger1 = ctrl

;--------------------------------------
;Pingu Throw

[State -1, Throw]
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
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;-----------------------------------------------------
; Escape

[State -1, Throw]
type = ChangeState
value = 850
trigger1 = command = "roll1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = command = "roll2"
trigger2 = statetype = S
trigger2 = ctrl = 1






;***************************************************************************
;*												   *
;===============================NORMAL MOVES===============================*
;*											         *
;***************************************************************************

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Step Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------
;Stand Weak Kick
[State -1,swk]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
;trigger2 = (stateno = 200) 
;trigger2 = time >= 5 && time <= 16
trigger2 = (stateno = [600,699]) && movecontact
trigger2 = statetype != A


;---------------------------------------------------------------------
;Stand Strong Punch
[State -1,ssp]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Stand Strong Kick
[State -1,ssk]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 230) && movecontact && time >= 9
trigger3 = (stateno = 205) && movecontact
trigger4 = (stateno = 245) && movecontact
trigger5 = (stateno = [600,699]) && movecontact
trigger5 = statetype != A
trigger6 = (stateno = 840) && AnimTime = 0
trigger7= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Crouching Weak Punch
[State -1,cwp]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 430) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Crouching Weak Kick
[State -1,cwk]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Crouching Strong Punch
[State -1,csp]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Crouching Strong Kick
[State -1,csk]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = ctrl = 1
trigger1 = statetype = C
trigger1 = ctrl 
trigger3 = (stateno = [600,699]) && movecontact 
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Air Weak Punch
[State -1,awp]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
;Air Weak Kick
[State -1,awk]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
;Air Strong Punch
[State -1,asp]
type = ChangeState
value = 610
triggerall = command = "y" 
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
;Air Strong Kick
[State -1,ask]
type = ChangeState
value = 630
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105


;---------------------------------------------------------------------
;Stand Weak Punch
[State -1,ask]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
triggerall = ctrl =1
;trigger2 = (stateno = [200,499]) && movecontact
trigger2 = statetype != A
;trigger3 = (stateno = [600,688]) && movecontact && statetype = S





