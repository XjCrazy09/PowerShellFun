[CmdletBinding()]
Param()

$Source = @"
dXNpbmcgU3lzdGVtOyAKCm5hbWVzcGFjZSBUZXN0IAp7IAogICAgcHVibGljIHN0YXRpYyBjbGFzcyBUZXN0aW5nICAKICAgIHsgCiAgICAgICAgcHVibGljIHN0YXRpYyB2b2lkIEdldCgpIAogICAgICAgIHsgCiAgICAgICAgICAgIENvbnNvbGUuV3JpdGVMaW5lKCJIZWxsbywgV29ybGQiKTsKICAgICAgICB9CgogICAgICAgIHB1YmxpYyBzdGF0aWMgdm9pZCBFbmNvZGUoKXsKICAgICAgICAgICAgQ29uc29sZS5Xcml0ZUxpbmUoInd0ZiIpOwogICAgICAgIH0KICAgIH0gCn0= 
"@ 

Add-Type -ReferencedAssemblies $Assem -TypeDefinition $([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($Source))) -Language CSharp  

[Test.Testing]::Encode()