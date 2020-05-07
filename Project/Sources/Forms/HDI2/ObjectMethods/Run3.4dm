
C_POINTER:C301($ptr)

If (btnTrace)
	TRACE:C157
End if 


If (Form:C1466.ds#Null:C1517)
	$ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"DataStoreInfoText")
	$ptr->:=Form:C1466.ds.getInfo()
End if 