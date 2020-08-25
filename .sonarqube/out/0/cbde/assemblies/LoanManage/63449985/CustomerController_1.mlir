func @_LoanManage.Controllers.CustomerController.Get$$() -> none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :24 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :27 :18) // Not a variable of known type: db
%1 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :27 :18) // db.Customers (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :27 :18) // db.Customers.ToList() (InvocationExpression)
return %2 : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :27 :11)

^1: // ExitBlock
cbde.unreachable

}
func @_LoanManage.Controllers.CustomerController.Get$int$(i32) -> none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :31 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :32 :28)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :32 :28)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :34 :19) // Not a variable of known type: db
%2 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :34 :19) // db.Customers (SimpleMemberAccessExpression)
%3 = cbde.load %0 : memref<i32> loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :34 :37)
%4 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :34 :19) // db.Customers.Find(id) (InvocationExpression)
return %4 : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Controllers\\CustomerController.cs" :34 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Post(none), it contains poisonous unsupported syntaxes

// Skipping function Put(none), it contains poisonous unsupported syntaxes

// Skipping function Delete(i32), it contains poisonous unsupported syntaxes

