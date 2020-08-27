func @_Authentication.Model.BasicAuthenticationAttribute.OnAuthorization$System.Web.Http.Controllers.HttpActionContext$(none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :33 :8) {
^entry (%_actionContext : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :33 :45)
cbde.store %_actionContext, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :33 :45)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :35 :16) // Not a variable of known type: actionContext
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :35 :16) // actionContext.Request (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :35 :16) // actionContext.Request.Headers (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :35 :16) // actionContext.Request.Headers.Authorization (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :35 :63) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :35 :16) // comparison of unknown type: actionContext.Request.Headers.Authorization == null
cond_br %6, ^1, ^2 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :35 :16)

^1: // BinaryBranchBlock
%7 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :37 :16) // Not a variable of known type: actionContext
%8 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :37 :16) // actionContext.Response (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :37 :41) // Not a variable of known type: actionContext
%10 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :37 :41) // actionContext.Request (SimpleMemberAccessExpression)
// Entity from another assembly: HttpStatusCode
%11 = constant unit loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :37 :78) // HttpStatusCode.Unauthorized (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :37 :41) // actionContext.Request.CreateResponse(HttpStatusCode.Unauthorized) (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :38 :20) // Not a variable of known type: actionContext
%14 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :38 :20) // actionContext.Response (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :38 :20) // actionContext.Response.StatusCode (SimpleMemberAccessExpression)
// Entity from another assembly: HttpStatusCode
%16 = constant unit loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :38 :57) // HttpStatusCode.Unauthorized (SimpleMemberAccessExpression)
%17 = cbde.unknown : i1  loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :38 :20) // comparison of unknown type: actionContext.Response.StatusCode == HttpStatusCode.Unauthorized
cond_br %17, ^3, ^4 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :38 :20)

^3: // SimpleBlock
%18 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :40 :20) // Not a variable of known type: actionContext
%19 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :40 :20) // actionContext.Response (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :40 :20) // actionContext.Response.Headers (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :40 :55) // "WWW-Authenticate" (StringLiteralExpression)
%22 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :40 :75) // string (PredefinedType)
%23 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :40 :89) // "Basic realm=\"{0}\"" (StringLiteralExpression)
%24 = constant unit loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :40 :112) // Realm (IdentifierName)
%25 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :40 :75) // string.Format("Basic realm=\"{0}\"", Realm) (InvocationExpression)
%26 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :40 :20) // actionContext.Response.Headers.Add("WWW-Authenticate", string.Format("Basic realm=\"{0}\"", Realm)) (InvocationExpression)
br ^4

^2: // BinaryBranchBlock
%27 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :45 :45) // Not a variable of known type: actionContext
%28 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :45 :45) // actionContext.Request (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :45 :45) // actionContext.Request.Headers (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :45 :45) // actionContext.Request.Headers.Authorization (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :45 :45) // actionContext.Request.Headers.Authorization.Parameter (SimpleMemberAccessExpression)
// Entity from another assembly: Encoding
%33 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :46 :52) // Encoding.UTF8 (SimpleMemberAccessExpression)
// Entity from another assembly: Convert
%34 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :46 :101) // Not a variable of known type: authenticationToken
%35 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :46 :76) // Convert.FromBase64String(authenticationToken) (InvocationExpression)
%36 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :46 :52) // Encoding.UTF8.GetString(Convert.FromBase64String(authenticationToken)) (InvocationExpression)
%38 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :47 :49) // Not a variable of known type: decodedAuthenticationToken
%39 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :47 :82) // ':' (CharacterLiteralExpression)
%40 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :47 :49) // decodedAuthenticationToken.Split(':') (InvocationExpression)
%42 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :48 :34) // Not a variable of known type: usernamePasswordArray
%43 = constant 0 : i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :48 :56)
%44 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :48 :34) // usernamePasswordArray[0] (ElementAccessExpression)
%46 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :49 :34) // Not a variable of known type: usernamePasswordArray
%47 = constant 1 : i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :49 :56)
%48 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :49 :34) // usernamePasswordArray[1] (ElementAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UserValidate
%50 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :50 :39) // Not a variable of known type: username
%51 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :50 :49) // Not a variable of known type: password
%52 = cbde.unknown : i1 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :50 :20) // UserValidate.Login(username, password) (InvocationExpression)
cond_br %52, ^5, ^6 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :50 :20)

^5: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UserValidate
%53 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :52 :66) // Not a variable of known type: username
%54 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :52 :76) // Not a variable of known type: password
%55 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :52 :38) // UserValidate.GetUserDetails(username, password) (InvocationExpression)
%57 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :53 :55) // Not a variable of known type: username
%58 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :53 :35) // new GenericIdentity(username) (ObjectCreationExpression)
%60 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :55 :20) // Not a variable of known type: identity
// Entity from another assembly: ClaimTypes
%61 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :55 :48) // ClaimTypes.Name (SimpleMemberAccessExpression)
%62 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :55 :65) // Not a variable of known type: UserDetails
%63 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :55 :65) // UserDetails.UserName (SimpleMemberAccessExpression)
%64 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :55 :38) // new Claim(ClaimTypes.Name, UserDetails.UserName) (ObjectCreationExpression)
%65 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :55 :20) // identity.AddClaim(new Claim(ClaimTypes.Name, UserDetails.UserName)) (InvocationExpression)
%66 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :56 :20) // Not a variable of known type: identity
%67 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :56 :48) // "ID" (StringLiteralExpression)
// Entity from another assembly: Convert
%68 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :56 :71) // Not a variable of known type: UserDetails
%69 = cbde.unknown : i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :56 :71) // UserDetails.ID (SimpleMemberAccessExpression)
%70 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :56 :54) // Convert.ToString(UserDetails.ID) (InvocationExpression)
%71 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :56 :38) // new Claim("ID", Convert.ToString(UserDetails.ID)) (ObjectCreationExpression)
%72 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :56 :20) // identity.AddClaim(new Claim("ID", Convert.ToString(UserDetails.ID))) (InvocationExpression)
%73 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :57 :64) // Not a variable of known type: identity
%74 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :57 :84) //  (OmittedArraySizeExpression)
%75 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :57 :77) // string[] (ArrayType)
%76 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :57 :73) // new string[] { UserDetails.Role } (ArrayCreationExpression)
%77 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :57 :88) // Not a variable of known type: UserDetails
%78 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :57 :88) // UserDetails.Role (SimpleMemberAccessExpression)
%79 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :57 :43) // new GenericPrincipal(identity,new string[] { UserDetails.Role }) (ObjectCreationExpression)
// Entity from another assembly: Thread
%81 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :58 :20) // Thread.CurrentPrincipal (SimpleMemberAccessExpression)
%82 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :58 :46) // Not a variable of known type: principal
%83 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :59 :31) // new HttpContextAccessor() (ObjectCreationExpression)
%85 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :60 :25) // Not a variable of known type: http
%86 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :60 :25) // http.HttpContext (SimpleMemberAccessExpression)
%87 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :60 :25) // http.HttpContext.User (SimpleMemberAccessExpression)
%88 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :60 :49) // null (NullLiteralExpression)
%89 = cbde.unknown : i1  loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :60 :25) // comparison of unknown type: http.HttpContext.User!= null
cond_br %89, ^7, ^4 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :60 :25)

^7: // SimpleBlock
%90 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :62 :24) // Not a variable of known type: http
%91 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :62 :24) // http.HttpContext (SimpleMemberAccessExpression)
%92 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :62 :24) // http.HttpContext.User (SimpleMemberAccessExpression)
%93 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :62 :65) // Not a variable of known type: principal
%94 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :62 :47) // (ClaimsPrincipal) principal (CastExpression)
br ^4

^6: // SimpleBlock
%95 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :67 :20) // Not a variable of known type: actionContext
%96 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :67 :20) // actionContext.Response (SimpleMemberAccessExpression)
%97 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :67 :45) // Not a variable of known type: actionContext
%98 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :67 :45) // actionContext.Request (SimpleMemberAccessExpression)
// Entity from another assembly: HttpStatusCode
%99 = constant unit loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :68 :40) // HttpStatusCode.Unauthorized (SimpleMemberAccessExpression)
%100 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Model\\BasicAuthenticationAttribute.cs" :67 :45) // actionContext.Request                          .CreateResponse(HttpStatusCode.Unauthorized) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
