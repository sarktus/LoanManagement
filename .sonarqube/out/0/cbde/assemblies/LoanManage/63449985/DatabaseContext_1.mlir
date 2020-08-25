func @_LoanManage.Database.DatabaseContext.OnConfiguring$Microsoft.EntityFrameworkCore.DbContextOptionsBuilder$(none) -> () loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Database\\DatabaseContext.cs" :13 :8) {
^entry (%_optionsBuilder : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Database\\DatabaseContext.cs" :13 :46)
cbde.store %_optionsBuilder, %0 : memref<none> loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Database\\DatabaseContext.cs" :13 :46)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Database\\DatabaseContext.cs" :15 :12) // Not a variable of known type: optionsBuilder
%2 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Database\\DatabaseContext.cs" :15 :40) // @"Server=CTSDOTNET23;database=Customer;Trusted_Connection=True;MultipleActiveResultSets=true;" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Database\\DatabaseContext.cs" :15 :12) // optionsBuilder.UseSqlServer(@"Server=CTSDOTNET23;database=Customer;Trusted_Connection=True;MultipleActiveResultSets=true;") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
