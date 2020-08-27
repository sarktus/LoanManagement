func @_LoanManage.Controllers.v2.TestController.Get$$() -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :16 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :19 :30) //  (OmittedArraySizeExpression)
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :19 :23) // string[] (ArrayType)
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :19 :19) // new string[] { "value1", "value2" } (ArrayCreationExpression)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :19 :34) // "value1" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :19 :44) // "value2" (StringLiteralExpression)
return %2 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :19 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_LoanManage.Controllers.v2.TestController.Get$int$(i32) -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :23 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :24 :26)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :24 :26)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :26 :19) // "value" (StringLiteralExpression)
return %1 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_LoanManage.Controllers.v2.TestController.Post$string$(none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :30 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :31 :25)
cbde.store %_value, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :31 :25)
br ^0

^0: // ExitBlock
return

}
func @_LoanManage.Controllers.v2.TestController.Put$int.string$(i32, none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :36 :8) {
^entry (%_id : i32, %_value : none):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :37 :24)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :37 :24)
%1 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :37 :32)
cbde.store %_value, %1 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :37 :32)
br ^0

^0: // ExitBlock
return

}
func @_LoanManage.Controllers.v2.TestController.Delete$int$(i32) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :42 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :43 :27)
cbde.store %_id, %0 : memref<i32> loc("D:\\VisualStudio\\Git\\LoanManagement\\LoanManage\\Controllers\\v2\\TestController.cs" :43 :27)
br ^0

^0: // ExitBlock
return

}
