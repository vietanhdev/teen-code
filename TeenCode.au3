#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Global $input,$output
Global $s, $i
Global $tc[50], $nghia[50], $tcmax=13
$tc[1]=")\/("
$nghia[1]="m"
$tc[2]="4"
$nghia[2]="a"
$tc[3]="9"
$nghia[3]="g"
$tc[4]="|_|"
$nghia[4]="u"
$tc[5]=")\("
$nghia[5]="n"
$tc[6]=")-("
$nghia[6]="h"
$tc[7]="-|-"
$nghia[7]="t"
$tc[8]="()"
$nghia[8]="o"
$tc[9]="-|)"
$nghia[9]="đ"
$tc[10]="|)"
$nghia[10]="d"
$tc[11]="3"
$nghia[11]="e"
$tc[12]="("
$nghia[12]="c"
$tc[13]="\/"
$nghia[13]="v"

;~ Global $a[15], $o[15], $ii[15], $u[15], $e[15], $y[15]
;~ $a[1]="ă"
;~ $a[2]="â"
;~ $a[3]="á"
;~ $a[4]="à"
;~ $a[5]="ả"
;~ $a[6]="ạ"
;~ $a[7]="ã"
;~ $a[8]="ắ"
;~ $a[9]="ặ"
;~ $a[10]="ầ"
;~ $a[11]="ấ"
;~ $a[12]="ẫ"
;~ $a[13]="ậ"
;~ $a[14]="ẩ"
;~ $o[1]="ô"
;~ $o[2]=""
;~ $o[3]=""
;~ $o[4]=""
;~ $o[5]=""
;~ $o[6]=""
;~ $o[7]=""
;~ $o[8]=""
;~ $o[9]=""
;~ $o[10]=""
;~ $o[]=""
;~ $o[]=""
;~ $o[]=""


Func xoadau()
;~ 	For $i=1 to 15
;~ 		$s=StringReplace($s,$a[$i],"a")
;~ 	Next
;~ 	For $i=1 to 15
;~ 		$s=StringReplace($s,$o[$i],"o")
;~ 	Next
;~ 	For $i=1 to 15
;~ 		$s=StringReplace($s,$ii[$i],"i")
;~ 	Next
;~ 	For $i=1 to 15
;~ 		$s=StringReplace($s,$u[$i],"u")
;~ 	Next
;~ 	For $i=1 to 15
;~ 		$s=StringReplace($s,$e[$i],"e")
;~ 	Next
;~ 	For $i=1 to 15
;~ 		$s=StringReplace($s,$y[$i],"y")
;~ 	Next
EndFunc


Func Dich()
	$s=GUICtrlRead($input)
	For $i=1 to $tcmax
		$s=StringReplace($s,$tc[$i],$nghia[$i])
	Next
	GUICtrlSetData($output,$s)
EndFunc

Func Tao()
	$s=GUICtrlRead($input)
	xoadau()
	For $i=1 to $tcmax
		$s=StringReplace($s,$nghia[$i],$tc[$i])
	Next
	GUICtrlSetData($output,$s)
EndFunc


Func Help()
	MsgBox(0,"Help","TeenCode Decryptor - vietanhstd@gmail.com" & @LF & "Nhập teencode ấn [Dịch] để dịch hoặc nhập văn bản ấn [Tạo teencode]" & @LF & "Have fun!")
EndFunc



GUICreate("TeenCode Decryptor :D  ", 623, 445, 322, 240)

$input = GUICtrlCreateEdit("", 6, 31, 609, 177)

$output = GUICtrlCreateEdit("", 110, 215, 505, 217)

$Label1 = GUICtrlCreateLabel("Copy nội dung vào đây: (-|-)", 6, 7, 601, 17)
$Dich = GUICtrlCreateButton("Dịch", 6, 215, 97, 33)

$Tao= GUICtrlCreateButton("Tạo teencode", 6, 255, 97, 33)

$Help = GUICtrlCreateButton("Help", 6, 295, 97, 33)
GUISetState(@SW_SHOW)



While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Dich
			Dich()
		Case $Tao
			Tao()
		Case $Help
			Help()
	EndSwitch
WEnd
