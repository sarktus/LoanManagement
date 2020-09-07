func @_Authentication.Controllers.authcontroller.Get$$() -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :13 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Ok
%0 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :18 :22) // "I can access" (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :18 :19) // Ok("I can access") (InvocationExpression)
return %1 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :18 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Authentication.Controllers.authcontroller.Get$int$(i32) -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :22 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :23 :26)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :23 :26)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :25 :19) // "value" (StringLiteralExpression)
return %1 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Authentication.Controllers.authcontroller.Post$string$(none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :29 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :30 :25)
cbde.store %_value, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :30 :25)
br ^0

^0: // ExitBlock
return

}
func @_Authentication.Controllers.authcontroller.Put$int.string$(i32, none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :35 :8) {
^entry (%_id : i32, %_value : none):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :36 :24)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :36 :24)
%1 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :36 :32)
cbde.store %_value, %1 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :36 :32)
br ^0

^0: // ExitBlock
return

}
func @_Authentication.Controllers.authcontroller.Delete$int$(i32) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :41 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :42 :27)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :42 :27)
br ^0

^0: // ExitBlock
return

}
