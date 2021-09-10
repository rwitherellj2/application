/// Description
Class UnitTest.Application Extends %UnitTest.TestCase
{

/// Description
Method OnBeforeAllTests() As %Status
{
   TSTART
   Return $$$OK
}

/// Description
Method TestUsers() As %Status
{
    #Dim tUser As Application.User
    Set tUser = ##Class(Application.User).%New()
    Set tStatus = tUser.%Save()
    Do $$$AssertStatusNotOK(tStatus,"Failure to save without all required fields")

    Set tUser.Name = "Bob"
    Set tUser.Email = "bob@application.com"
    Set tStatus = tUser.%Save()
    Do $$$AssertStatusOK(tStatus,"Saved with all required fields")

    Return $$$OK
}

/// Description
Method OnAfterAllTests() As %Status
{
   TROLLBACK
   Return $$$OK
}

}
