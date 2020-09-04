// Skipping function LoanList(), it contains poisonous unsupported syntaxes

// Skipping function LoanListById(i32), it contains poisonous unsupported syntaxes

func @_LoanManage.Service.Loan.AddListPost$LoanManage.Database.Entity.LoanDetails$(none) -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :24 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :24 :39)
cbde.store %_model, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :24 :39)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :26 :12) // Not a variable of known type: DbContext
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :26 :12) // DbContext.LoanDetail (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :26 :37) // Not a variable of known type: model
%4 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :26 :12) // DbContext.LoanDetail.Add(model) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :27 :12) // Not a variable of known type: DbContext
%6 = cbde.unknown : i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :27 :12) // DbContext.SaveChanges() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :28 :19) // Not a variable of known type: model
return %7 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Service\\Loan.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddListPut(none), it contains poisonous unsupported syntaxes

// Skipping function DeleteLoan(i32), it contains poisonous unsupported syntaxes

