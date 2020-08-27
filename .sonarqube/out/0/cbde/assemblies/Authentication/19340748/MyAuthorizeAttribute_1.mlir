func @_Authentication.Model.MyAuthorizeAttribute.HandleUnauthorizedRequest$System.Web.Http.Controllers.HttpActionContext$(none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :28 :8) {
^entry (%_actionContext : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :28 :58)
cbde.store %_actionContext, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :28 :58)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :30 :31) // new HttpContextAccessor() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :31 :17) // Not a variable of known type: _httpcontext
%4 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :31 :17) // _httpcontext.HttpContext (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :31 :17) // _httpcontext.HttpContext.User (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :31 :17) // _httpcontext.HttpContext.User.Identity (SimpleMemberAccessExpression)
%7 = cbde.unknown : i1 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :31 :17) // _httpcontext.HttpContext.User.Identity.IsAuthenticated (SimpleMemberAccessExpression)
%8 = cbde.unknown : i1 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :31 :16) // !_httpcontext.HttpContext.User.Identity.IsAuthenticated (LogicalNotExpression)
cond_br %8, ^1, ^2 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :31 :16)

^1: // SimpleBlock
%9 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :33 :16) // base (BaseExpression)
%10 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :33 :47) // Not a variable of known type: actionContext
%11 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :33 :16) // base.HandleUnauthorizedRequest(actionContext) (InvocationExpression)
br ^3

^2: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :37 :16) // Not a variable of known type: actionContext
%13 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :37 :16) // actionContext.Response (SimpleMemberAccessExpression)
// Entity from another assembly: System
%14 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :37 :81) // System.Net.HttpStatusCode (SimpleMemberAccessExpression)
%15 = constant unit loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :37 :81) // System.Net.HttpStatusCode.Forbidden (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\MyAuthorizeAttribute.cs" :37 :41) // new System.Net.Http.HttpResponseMessage(System.Net.HttpStatusCode.Forbidden) (ObjectCreationExpression)
br ^3

^3: // ExitBlock
return

}
