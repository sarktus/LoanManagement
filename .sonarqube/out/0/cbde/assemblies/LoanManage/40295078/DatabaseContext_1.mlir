func @_LoanManage.Database.DatabaseContext.OnConfiguring$Microsoft.EntityFrameworkCore.DbContextOptionsBuilder$(none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Database\\DatabaseContext.cs" :22 :8) {
^entry (%_optionsBuilder : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Database\\DatabaseContext.cs" :22 :46)
cbde.store %_optionsBuilder, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Database\\DatabaseContext.cs" :22 :46)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Database\\DatabaseContext.cs" :24 :12) // Not a variable of known type: optionsBuilder
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Database\\DatabaseContext.cs" :24 :40) // @"Server=CTSDOTNET23;database=Loan;Trusted_Connection=True;MultipleActiveResultSets=true;" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Database\\DatabaseContext.cs" :24 :12) // optionsBuilder.UseSqlServer(@"Server=CTSDOTNET23;database=Loan;Trusted_Connection=True;MultipleActiveResultSets=true;") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
