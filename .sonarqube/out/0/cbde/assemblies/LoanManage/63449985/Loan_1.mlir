func @_LoanManage.Service.Loan.GetAllCustomer$$() -> none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Service\\Loan.cs" :19 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Service\\Loan.cs" :21 :19) // Not a variable of known type: Context
%1 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Service\\Loan.cs" :21 :19) // Context.Customers (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Service\\Loan.cs" :21 :19) // Context.Customers.ToList() (InvocationExpression)
return %2 : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Service\\Loan.cs" :21 :12)

^1: // ExitBlock
cbde.unreachable

}
