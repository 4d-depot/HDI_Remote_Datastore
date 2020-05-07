
If (btnTrace)
	TRACE:C157
End if 


Case of 
	: (Form event code:C388=On After Edit:K2:43)
		Form:C1466.lastname:=Get edited text:C655
		
		Form:C1466.persons:=Form:C1466.ds.Persons.query("lastname= :1";Form:C1466.lastname+"@")
End case 

