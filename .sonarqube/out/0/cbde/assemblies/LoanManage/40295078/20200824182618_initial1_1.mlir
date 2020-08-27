// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_LoanManage.Migrations.initial1.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200824182618_initial1.cs" :25 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200824182618_initial1.cs" :25 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200824182618_initial1.cs" :25 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200824182618_initial1.cs" :27 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200824182618_initial1.cs" :28 :22) // "Loans" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200824182618_initial1.cs" :27 :12) // migrationBuilder.DropTable(                  name: "Loans") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
