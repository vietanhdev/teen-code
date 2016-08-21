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

Func Dich()
	$s=GUICtrlRead($input)
	For $i=1 to $tcmax
		$s=StringReplace($s,$tc[$i],$nghia[$i])
	Next
	GUICtrlSetData($output,$s)
EndFunc

Func Tao()
	$s=GUICtrlRead($input)
	For $i=1 to $tcmax
		$s=StringReplace($s,$nghia[$i],$tc[$i])
	Next
	GUICtrlSetData($output,$s)
EndFunc

Func Help()
	MsgBox(0,"Help","TeenCode Decryptor - vietanh@vietanhdev.com" & @LF & "Nhập teencode ấn [Dịch] để dịch hoặc nhập văn bản ấn [Tạo teencode]" & @LF & "Have fun!")
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
