Class Application.User Extends (%Persistent, %Populate) [ Language = objectscript ]
{

Property Name As %String(MAXLEN = 255, POPORDER = 1) [ Required ];

Property Email As %String(MAXLEN = 255, POPORDER = 2, POPSPEC = ".PopulateEmail()") [ Required ];

Method PopulateEmail() As %String
{
	#Dim tFirstName = $Piece($Piece(..Name,",",2)," ",1)
	#Dim tCompany = $Piece($Piece(##Class(%PopulateUtils).Company()," ",1),".",1)
	Quit $ZConvert(tFirstName_"@"_tCompany_".com","L")
}

Storage Default
{
<Data name="UserDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Email</Value>
</Value>
<Value name="4">
<Value>AnotherTestProps</Value>
</Value>
</Data>
<DataLocation>^Application.UserD</DataLocation>
<DefaultData>UserDefaultData</DefaultData>
<ExtentSize>10</ExtentSize>
<IdLocation>^Application.UserD</IdLocation>
<IndexLocation>^Application.UserI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Email">
<AverageFieldSize>20.1</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>16.9</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Application.UserS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
