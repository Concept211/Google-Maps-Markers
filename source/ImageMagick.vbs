'============================================
'Settings
'
'convert base.png -font Roboto-Bold -pointsize 13 -fill "rgb(72,13,14)" -gravity center -draw "text 1,-8 'A'" 1.png
'============================================
strPath  = Replace(WScript.ScriptFullName,Wscript.ScriptName,"")
strFile  = "marker_"
strSave  = "markers\"
strPos   = "text 1,-8"
strBase  = """C:\Program Files (x86)\ImageMagick-6.8.5-Q16\convert.exe"" {base} -font Roboto-Bold -pointsize 13 -fill ""{color}"" -gravity center -draw """ & strPos & " '{text}'"" """ & strPath & "{file}"""
intNumer = 100
strAlpha = "!, @, #, $, %, &, +, -, =, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z"


'============================================
'List Base Files (_red.png, _green.png, etc)
'============================================
Set objFSO    = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.GetFolder(strPath)
Set objFiles  = objFolder.Files

For Each objFile In objFiles
	strFileFull  = objFile.Name
	strFileExt   = LCase(Mid(strFileFull,InStrRev(strFileFull,".")+1))
	strFileColor = LCase(Mid(strFileFull,2,InStrRev(strFileFull,".")-2))
	
	If Left(strFileFull,1) = "_" And strFileExt = "png" Then

		' Numeric Markers
		For i = 1 To intNumer
			Select Case i
				Case 1, 2, 3, 5, 6, 7, 9
					strExe = Replace(strBase, strPos, "text 0,-8")
				Case Else
					strExe = strBase
			End Select

			Run InsertParams(strExe, strFileFull, TextColor(strFileColor), i, strSave & strFile & strFileColor & i & ".png")
		Next


		' Alphabetic Markers
		arrAlpha = Split(strAlpha, ", ")

		For i = 0 To UBound(arrAlpha)
			strChar = arrAlpha(i)

			Select Case strChar
				Case "@"
					strExe = Replace(strBase, strPos, "text 2,-9")
				Case Else
					strExe = strBase
			End Select

			Run InsertParams(strExe, strFileFull, TextColor(strFileColor), strChar, strSave & strFile & strFileColor & strChar & ".png")
		Next

	End If
Next

Set objFiles  = Nothing
Set objFolder = Nothing
Set objFSO    = Nothing


'============================================
'Functions
'============================================

' Insert Params
Function InsertParams(strExe, strBase, strColor, strText, strFile)
	strExe = Replace(strExe, "{base}",  strBase)
	strExe = Replace(strExe, "{color}", strColor)
	strExe = Replace(strExe, "{text}",  strText)
	strExe = Replace(strExe, "{file}",  strFile)
	InsertParams = strExe
End Function


' Marker Text Color
Function TextColor(strColor)
	Select Case LCase(strColor)
		Case "black"
			TextColor = "#FFFFFF"
		Case "blue"
			TextColor = "#00365A"
		Case "green"
			TextColor = "#234119"
		Case "grey"
			TextColor = "#3B3B3B"
		Case "orange"
			TextColor = "#5A3E00"
		Case "purple"
			TextColor = "#322A99"
		Case "white"
			TextColor = "#656565"
		Case "yellow"
			TextColor = "#664428"
		Case Else 'Red
			TextColor = "#5C1410"
	End Select
End Function


' Run File
Sub Run(ByVal strFile)
	Dim objShell
    Set objShell = CreateObject("WScript.Shell")
    objShell.Run strFile, 0, True
    Set objShell = Nothing
End Sub