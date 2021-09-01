Class Application.Utility [ Language = objectscript ]
{

/// Populate a number of users in the system, removing any existing users first
ClassMethod PopulateUsers2(pCount As %Integer) As %Status
{
    #Dim tStatus As %Status
    Write "test"_pCount
    Set tStatus = ##Class(Application.User).%DeleteExtent() $$$QuitOnError(tStatus) 
    Set tStatus = ##Class(Application.User).Populate(pCount) $$$QuitOnError(tStatus)
    Return $$$OK
}

/// Description
ClassMethod MethodName() As %Status
{
    Set sc = $$$OK
    Set test = ##Class(Application.User).GetByEmail()
    Write test.GetByEmail()
    Do test.%Save()
    Return sc
}

}
