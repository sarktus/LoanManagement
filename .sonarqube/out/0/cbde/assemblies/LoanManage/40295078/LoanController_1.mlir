func @_LoanManage.Controllers.v1.LoanController.Get$$() -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :25 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :28 :19) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :28 :19) // _context.Loans (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :28 :19) // _context.Loans.ToList() (InvocationExpression)
return %2 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_LoanManage.Controllers.v1.LoanController.Get$int$(i32) -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :32 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :33 :24)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :33 :24)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :35 :19) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :35 :19) // _context.Loans (SimpleMemberAccessExpression)
%3 = cbde.load %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :35 :39)
%4 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :35 :19) // _context.Loans.Find(id) (InvocationExpression)
return %4 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v1\\LoanController.cs" :35 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Post(none), it contains poisonous unsupported syntaxes

// Skipping function Put(none), it contains poisonous unsupported syntaxes

// Skipping function Delete(i32), it contains poisonous unsupported syntaxes

