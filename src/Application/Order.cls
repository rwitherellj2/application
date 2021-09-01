/// Description
Class Application.Order Extends %Persistent
{

Property OrderDate2 As %Date;

Property OrderTime As %Time;

Property Items;

Property User As Application.User;

Storage Default
{
<Data name="OrderDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>OrderDate</Value>
</Value>
<Value name="3">
<Value>OrderTime</Value>
</Value>
<Value name="4">
<Value>Items</Value>
</Value>
<Value name="5">
<Value>User</Value>
</Value>
<Value name="6">
<Value>OrderDate2</Value>
</Value>
</Data>
<DataLocation>^Application.OrderD</DataLocation>
<DefaultData>OrderDefaultData</DefaultData>
<IdLocation>^Application.OrderD</IdLocation>
<IndexLocation>^Application.OrderI</IndexLocation>
<StreamLocation>^Application.OrderS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
