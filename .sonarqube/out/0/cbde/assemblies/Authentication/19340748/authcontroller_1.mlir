func @_Authentication.Controllers.authcontroller.Get$$() -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :16 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Ok
%0 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :21 :22) // "I can access" (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :21 :19) // Ok("I can access") (InvocationExpression)
return %1 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :21 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Authentication.Controllers.authcontroller.Get$int$(i32) -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :25 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :26 :26)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :26 :26)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :28 :19) // "value" (StringLiteralExpression)
return %1 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Authentication.Controllers.authcontroller.Post$string$(none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :32 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :33 :25)
cbde.store %_value, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :33 :25)
br ^0

^0: // ExitBlock
return

}
func @_Authentication.Controllers.authcontroller.Put$int.string$(i32, none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :38 :8) {
^entry (%_id : i32, %_value : none):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :39 :24)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :39 :24)
%1 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :39 :32)
cbde.store %_value, %1 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :39 :32)
br ^0

^0: // ExitBlock
return

}
func @_Authentication.Controllers.authcontroller.Delete$int$(i32) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :44 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :45 :27)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\authcontroller.cs" :45 :27)
br ^0

^0: // ExitBlock
return

}
