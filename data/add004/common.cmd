
[Command]

name = "d"

command = d

time = 1



[Command]

name = "w"

command = w

time = 1



;---
; tagin/tagout
; ���{�^��:��l�� / �O�̃p�[�g�i�[
; tag:1st partner / shift_fwd
[command]
	name="shift_fwd"
	command=/F,d
	time=1
[command]
	name="shift_fwd"
	command=/B,d
	time=1

; ���{�^��:��l�� / ��̃p�[�g�i�[
; tag:2nd partner / shift_back
[command]
	name="shift_back"
	command=/F,w
	time=1
[command]
	name="shift_back"
	command=/B,w
	time=1

;--- call assist
; �x���{�^��:��l�� / �O�̃p�[�g�i�[
; assist:1st partner / shift_fwd
[command]
	name="assist_fwd"
	command=d
	time=1

; �x���{�^��:��l�� / ��̃p�[�g�i�[
; assist:2nd partner / shift_back
[command]
	name="assist_back"
	command=w
	time=1
;---
;---
; �X�^�[�g�{�^��
[command]
	name="start"
	command=s
	time=1



