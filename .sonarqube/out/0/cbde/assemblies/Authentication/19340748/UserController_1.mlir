func @_Authentication.Controllers.UserController.GetUserData$$() -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\UserController.cs" :15 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Ok
%0 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\UserController.cs" :20 :22) // "This is a response from user method" (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\UserController.cs" :20 :19) // Ok("This is a response from user method") (InvocationExpression)
return %1 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\UserController.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Authentication.Controllers.UserController.GetAdminData$$() -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\UserController.cs" :24 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Ok
%0 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\UserController.cs" :29 :22) // "This is a response from Admin method" (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\UserController.cs" :29 :19) // Ok("This is a response from Admin method") (InvocationExpression)
return %1 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\UserController.cs" :29 :12)

^1: // ExitBlock
cbde.unreachable

}
