func @_JWTAuthenticationExample.Controllers.LoginController.Login$Authentication.Model.User$(none) -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :30 :8) {
^entry (%_login : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :32 :35)
cbde.store %_login, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :32 :35)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: Unauthorized
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :34 :37) // Unauthorized() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AuthenticateUser
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :35 :41) // Not a variable of known type: login
%4 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :35 :24) // AuthenticateUser(login) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :36 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :36 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :36 :16) // comparison of unknown type: user != null
cond_br %8, ^1, ^2 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :36 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GenerateJWTToken
%9 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :38 :51) // Not a variable of known type: user
%10 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :38 :34) // GenerateJWTToken(user) (InvocationExpression)
// Entity from another assembly: Ok
%12 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :41 :28) // Not a variable of known type: tokenString
%13 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :42 :34) // Not a variable of known type: user
%14 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :39 :30) // new                  {                      token = tokenString,                      userDetails = user,                  } (AnonymousObjectCreationExpression)
%15 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :39 :27) // Ok(new                  {                      token = tokenString,                      userDetails = user,                  }) (InvocationExpression)
br ^2

^2: // JumpBlock
%16 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :45 :19) // Not a variable of known type: response
return %16 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :45 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function AuthenticateUser(none), it contains poisonous unsupported syntaxes

func @_JWTAuthenticationExample.Controllers.LoginController.GenerateJWTToken$Authentication.Model.User$(none) -> none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :54 :8) {
^entry (%_userInfo : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :54 :32)
cbde.store %_userInfo, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :54 :32)
br ^0

^0: // JumpBlock
// Entity from another assembly: Encoding
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :56 :55) // Encoding.UTF8 (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :56 :78) // Not a variable of known type: _config
%3 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :56 :86) // "Jwt:SecretKey" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :56 :78) // _config["Jwt:SecretKey"] (ElementAccessExpression)
%5 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :56 :55) // Encoding.UTF8.GetBytes(_config["Jwt:SecretKey"]) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :56 :30) // new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:SecretKey"])) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :57 :53) // Not a variable of known type: securityKey
// Entity from another assembly: SecurityAlgorithms
%9 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :57 :66) // SecurityAlgorithms.HmacSha256 (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :57 :30) // new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :59 :25) // new[]              {                  new Claim(JwtRegisteredClaimNames.Sub, userInfo.UserName),                                 new Claim("roles",userInfo.Role),                  new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),              } (ImplicitArrayCreationExpression)
// Entity from another assembly: JwtRegisteredClaimNames
%13 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :61 :26) // JwtRegisteredClaimNames.Sub (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :61 :55) // Not a variable of known type: userInfo
%15 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :61 :55) // userInfo.UserName (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :61 :16) // new Claim(JwtRegisteredClaimNames.Sub, userInfo.UserName) (ObjectCreationExpression)
%17 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :62 :26) // "roles" (StringLiteralExpression)
%18 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :62 :34) // Not a variable of known type: userInfo
%19 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :62 :34) // userInfo.Role (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :62 :16) // new Claim("roles",userInfo.Role) (ObjectCreationExpression)
// Entity from another assembly: JwtRegisteredClaimNames
%21 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :63 :26) // JwtRegisteredClaimNames.Jti (SimpleMemberAccessExpression)
// Entity from another assembly: Guid
%22 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :63 :55) // Guid.NewGuid() (InvocationExpression)
%23 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :63 :55) // Guid.NewGuid().ToString() (InvocationExpression)
%24 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :63 :16) // new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()) (ObjectCreationExpression)
%26 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :67 :24) // Not a variable of known type: _config
%27 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :67 :32) // "Jwt:Issuer" (StringLiteralExpression)
%28 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :67 :24) // _config["Jwt:Issuer"] (ElementAccessExpression)
%29 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :68 :26) // Not a variable of known type: _config
%30 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :68 :34) // "Jwt:Audience" (StringLiteralExpression)
%31 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :68 :26) // _config["Jwt:Audience"] (ElementAccessExpression)
%32 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :69 :24) // Not a variable of known type: claims
// Entity from another assembly: DateTime
%33 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :70 :25) // DateTime.Now (SimpleMemberAccessExpression)
%34 = constant 30 : i32 loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :70 :49)
%35 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :70 :25) // DateTime.Now.AddMinutes(30) (InvocationExpression)
%36 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :71 :36) // Not a variable of known type: credentials
%37 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :66 :24) // new JwtSecurityToken(                  issuer: _config["Jwt:Issuer"],                  audience: _config["Jwt:Audience"],                  claims: claims,                  expires: DateTime.Now.AddMinutes(30),                  signingCredentials: credentials              ) (ObjectCreationExpression)
%39 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :73 :19) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
%40 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :73 :60) // Not a variable of known type: token
%41 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :73 :19) // new JwtSecurityTokenHandler().WriteToken(token) (InvocationExpression)
return %41 : none loc("D:\\VisualStudio\\Git\\LoanManagement\\Authentication\\Controllers\\LoginController.cs" :73 :12)

^1: // ExitBlock
cbde.unreachable

}
