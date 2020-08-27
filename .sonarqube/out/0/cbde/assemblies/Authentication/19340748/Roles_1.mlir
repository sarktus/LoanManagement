func @_Authentication.Model.Roles.AdminRole$$() -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :13 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :15 :19) // new AuthorizationPolicyBuilder() (ObjectCreationExpression)
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :15 :19) // new AuthorizationPolicyBuilder().RequireAuthenticatedUser() (InvocationExpression)
%2 = constant unit loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :15 :91) // Admin (IdentifierName)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :15 :19) // new AuthorizationPolicyBuilder().RequireAuthenticatedUser().RequireRole(Admin) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :15 :19) // new AuthorizationPolicyBuilder().RequireAuthenticatedUser().RequireRole(Admin).Build() (InvocationExpression)
return %4 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :15 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Authentication.Model.Roles.UserRole$$() -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :18 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :20 :19) // new AuthorizationPolicyBuilder() (ObjectCreationExpression)
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :20 :19) // new AuthorizationPolicyBuilder().RequireAuthenticatedUser() (InvocationExpression)
%2 = constant unit loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :20 :91) // Guest (IdentifierName)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :20 :19) // new AuthorizationPolicyBuilder().RequireAuthenticatedUser().RequireRole(Guest) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :20 :19) // new AuthorizationPolicyBuilder().RequireAuthenticatedUser().RequireRole(Guest).Build() (InvocationExpression)
return %4 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\Roles.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
