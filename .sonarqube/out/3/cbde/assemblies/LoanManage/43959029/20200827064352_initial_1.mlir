// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_LoanManage.Migrations.initial.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200827064352_initial.cs" :27 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200827064352_initial.cs" :27 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200827064352_initial.cs" :27 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200827064352_initial.cs" :29 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200827064352_initial.cs" :30 :22) // "LoanDetail" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Migrations\\20200827064352_initial.cs" :29 :12) // migrationBuilder.DropTable(                  name: "LoanDetail") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
