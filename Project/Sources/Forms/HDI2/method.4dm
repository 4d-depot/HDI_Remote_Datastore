
C_POINTER:C301($ptr)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_Descriptions;0)
		ARRAY TEXT:C222(_TabLineCode;0)
		ARRAY TEXT:C222(_TabTitles;0)
		
		READ ONLY:C145([INFOS:1])
		
		QUERY:C277([INFOS:1];[INFOS:1]PageNumber:4;"<=";9)
		ORDER BY:C49([INFOS:1];[INFOS:1]PageNumber:4;>)
		SELECTION TO ARRAY:C260([INFOS:1]Description:2;_Descriptions)
		
		QUERY:C277([INFOS:1];[INFOS:1]PageNumber:4;"<=";9)
		ORDER BY:C49([INFOS:1];[INFOS:1]PageNumber:4;>)
		SELECTION TO ARRAY:C260([INFOS:1]TabTitle:3;_TabTitles)
		
		QUERY:C277([INFOS:1];[INFOS:1]PageNumber:4;">=";10)
		ORDER BY:C49([INFOS:1];[INFOS:1]PageNumber:4;>)
		SELECTION TO ARRAY:C260([INFOS:1]Description:2;_TabLineCode)
		
		
		OBJECT SET VISIBLE:C603(*;"CheckBoxTrace";viewTrace )
		
		Form:C1466.hostname:="127.0.0.1:8044"
		Form:C1466.remoteId:="myFavoriteDatastore"
		Form:C1466.ds:=Null:C1517
		
		manageTexts 
		
		RW 
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		OBJECT SET VISIBLE:C603(*;"CheckBoxTrace";viewTrace )
		
		Form:C1466.hostname:="127.0.0.1:8044"
		
		Form:C1466.persons:=Null:C1517
		Form:C1466.foundPersons:=Null:C1517
		
		Form:C1466.lastname:=""
		OBJECT SET ENABLED:C1123(*;"LastName";Form:C1466.persons#Null:C1517)
		
		
		OBJECT SET ENABLED:C1123(*;"Run2";Form:C1466.ds#Null:C1517)
		
		
		OBJECT SET ENABLED:C1123(*;"Run3";Form:C1466.ds#Null:C1517)
		$ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"DataStoreInfoText")
		$ptr->:=Null:C1517
		
		If (Is macOS:C1572)
			OBJECT SET FONT SIZE:C165(*;"DataClassInfo";16)
		End if 
		If (Is Windows:C1573)
			OBJECT SET FONT SIZE:C165(*;"DataClassInfo";14)
		End if 
		
		manageTexts 
		
End case 


btnTrace:=False:C215