// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_LoanManage.Migrations.initial.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Migrations\\20200820093635_initial.cs" :24 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Migrations\\20200820093635_initial.cs" :24 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Migrations\\20200820093635_initial.cs" :24 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Migrations\\20200820093635_initial.cs" :26 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Migrations\\20200820093635_initial.cs" :27 :22) // "Customers" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\loanManage\\LoanManage\\LoanManage\\Migrations\\20200820093635_initial.cs" :26 :12) // migrationBuilder.DropTable(                  name: "Customers") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
