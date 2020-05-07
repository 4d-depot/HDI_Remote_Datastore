

If (btnTrace)
	TRACE:C157
End if 

Form:C1466.connectionInfo:=New object:C1471("hostname";Form:C1466.hostname)
Form:C1466.ds:=Open datastore:C1452(Form:C1466.connectionInfo;Form:C1466.remoteId)

Form:C1466.persons:=Form:C1466.ds.Persons.all()

OBJECT SET ENABLED:C1123(*;"LastName";Form:C1466.persons#Null:C1517)
GOTO OBJECT:C206(*;"LastName")