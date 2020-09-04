¥
JD:\VisualStudio\Git\LoanManagement\Authentication\Context\UserDBContext.cs
	namespace 	
Authentication
 
. 
Context  
{		 
public

 

class

 
UserDBContext

 
:

 
	DbContext

  )
{ 
public 
UserDBContext 
( 
DbContextOptions -
<- .
UserDBContext. ;
>; <
options= D
)D E
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ”
OD:\VisualStudio\Git\LoanManagement\Authentication\Controllers\authcontroller.cs
	namespace 	
Authentication
 
. 
Controllers $
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
authcontroller 
:  !
ControllerBase" 0
{ 
[ 	
HttpGet	 
] 
[ 	
BasicAuthentication	 
] 
[ 	
MyAuthorize	 
( 
Roles 
= 
$str $
)$ %
]% &
public 
IActionResult 
Get  
(  !
)! "
{ 	
return 
Ok 
( 
$str $
)$ %
;% &
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
string 
Get 
( 
int 
id  
)  !
{ 	
return 
$str 
; 
} 	
[ 	
HttpPost	 
] 
public 
void 
Post 
( 
[ 
FromBody "
]" #
string$ *
value+ 0
)0 1
{   	
}!! 	
[$$ 	
HttpPut$$	 
($$ 
$str$$ 
)$$ 
]$$ 
public%% 
void%% 
Put%% 
(%% 
int%% 
id%% 
,%% 
[%%  !
FromBody%%! )
]%%) *
string%%+ 1
value%%2 7
)%%7 8
{&& 	
}'' 	
[** 	

HttpDelete**	 
(** 
$str** 
)** 
]** 
public++ 
void++ 
Delete++ 
(++ 
int++ 
id++ !
)++! "
{,, 	
}-- 	
}.. 
}// »+
PD:\VisualStudio\Git\LoanManagement\Authentication\Controllers\LoginController.cs
	namespace 	$
JWTAuthenticationExample
 "
." #
Controllers# .
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
LoginController  
:! "
ControllerBase# 1
{ 
private 
readonly 
IConfiguration '
_config( /
;/ 0
private 
readonly 
UserDBContext &
_context' /
;/ 0
public 
LoginController 
( 
IConfiguration -
config. 4
,4 5
UserDBContext6 C
contextD K
)K L
{ 	
_config 
= 
config 
; 
_context 
= 
context 
; 
} 	
[ 	
HttpPost	 
] 
[ 	
AllowAnonymous	 
] 
public 
IActionResult 
Login "
(" #
[# $
FromBody$ ,
], -
User. 2
login3 8
)8 9
{ 	
IActionResult   
response   "
=  # $
Unauthorized  % 1
(  1 2
)  2 3
;  3 4
User!! 
user!! 
=!! 
AuthenticateUser!! (
(!!( )
login!!) .
)!!. /
;!!/ 0
if"" 
("" 
user"" 
!="" 
null"" 
)"" 
{## 
var$$ 
tokenString$$ 
=$$  !
GenerateJWTToken$$" 2
($$2 3
user$$3 7
)$$7 8
;$$8 9
response%% 
=%% 
Ok%% 
(%% 
new%% !
{&& 
token'' 
='' 
tokenString'' '
,''' (
userDetails(( 
=((  !
user((" &
,((& '
})) 
))) 
;)) 
}** 
return++ 
response++ 
;++ 
},, 	
User.. 
AuthenticateUser.. 
(.. 
User.. "
loginCredentials..# 3
)..3 4
{// 	
User00 
user00 
=00 
_context00  
.00  !
Users00! &
.00& '
SingleOrDefault00' 6
(006 7
x007 8
=>009 ;
x00< =
.00= >
UserName00> F
==00G I
loginCredentials00J Z
.00Z [
UserName00[ c
&&00d f
x00g h
.00h i
Password00i q
==00r t
loginCredentials	00u Ö
.
00Ö Ü
Password
00Ü é
)
00é è
;
00è ê
return11 
user11 
;11 
}22 	
string44 
GenerateJWTToken44 
(44  
User44  $
userInfo44% -
)44- .
{55 	
var66 
securityKey66 
=66 
new66 ! 
SymmetricSecurityKey66" 6
(666 7
Encoding667 ?
.66? @
UTF866@ D
.66D E
GetBytes66E M
(66M N
_config66N U
[66U V
$str66V e
]66e f
)66f g
)66g h
;66h i
var77 
credentials77 
=77 
new77 !
SigningCredentials77" 4
(774 5
securityKey775 @
,77@ A
SecurityAlgorithms77B T
.77T U

HmacSha25677U _
)77_ `
;77` a
var99 
claims99 
=99 
new99 
[99 
]99 
{:: 
new;; 
Claim;; 
(;; #
JwtRegisteredClaimNames;; 1
.;;1 2
Sub;;2 5
,;;5 6
userInfo;;7 ?
.;;? @
UserName;;@ H
);;H I
,;;I J
new<< 
Claim<< 
(<< 
$str<< !
,<<! "
userInfo<<" *
.<<* +
Role<<+ /
)<</ 0
,<<0 1
new== 
Claim== 
(== #
JwtRegisteredClaimNames== 1
.==1 2
Jti==2 5
,==5 6
Guid==7 ;
.==; <
NewGuid==< C
(==C D
)==D E
.==E F
ToString==F N
(==N O
)==O P
)==P Q
,==Q R
}>> 
;>> 
var@@ 
token@@ 
=@@ 
new@@ 
JwtSecurityToken@@ ,
(@@, -
issuerAA 
:AA 
_configAA 
[AA  
$strAA  ,
]AA, -
,AA- .
audienceBB 
:BB 
_configBB !
[BB! "
$strBB" 0
]BB0 1
,BB1 2
claimsCC 
:CC 
claimsCC 
,CC 
expiresDD 
:DD 
DateTimeDD !
.DD! "
NowDD" %
.DD% &

AddMinutesDD& 0
(DD0 1
$numDD1 3
)DD3 4
,DD4 5
signingCredentialsEE "
:EE" #
credentialsEE$ /
)FF 
;FF 
returnGG 
newGG #
JwtSecurityTokenHandlerGG .
(GG. /
)GG/ 0
.GG0 1

WriteTokenGG1 ;
(GG; <
tokenGG< A
)GGA B
;GGB C
}HH 	
}LL 
}MM µ
OD:\VisualStudio\Git\LoanManagement\Authentication\Controllers\UserController.cs
	namespace 	
Authentication
 
. 
Controllers $
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public		 

class		 
UserController		 
:		  !
ControllerBase		" 0
{

 
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	
	Authorize	 
( 
Roles 
= 
Roles  
.  !
Guest! &
)& '
]' (
public 
IActionResult 
GetUserData (
(( )
)) *
{ 	
return 
Ok 
( 
$str ;
); <
;< =
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	
	Authorize	 
( 
Roles 
= 
Roles  
.  !
Admin! &
)& '
]' (
public 
IActionResult 
GetAdminData )
() *
)* +
{ 	
return 
Ok 
( 
$str <
)< =
;= >
} 	
} 
} ˆ
ZD:\VisualStudio\Git\LoanManagement\Authentication\Controllers\WeatherForecastController.cs
	namespace 	
Authentication
 
. 
Controllers $
{ 
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var 
rng 
= 
new 
Random  
(  !
)! "
;" #
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date 
= 
DateTime 
.  
Now  #
.# $
AddDays$ +
(+ ,
index, 1
)1 2
,2 3
TemperatureC   
=   
rng   "
.  " #
Next  # '
(  ' (
-  ( )
$num  ) +
,  + ,
$num  - /
)  / 0
,  0 1
Summary!! 
=!! 
	Summaries!! #
[!!# $
rng!!$ '
.!!' (
Next!!( ,
(!!, -
	Summaries!!- 6
.!!6 7
Length!!7 =
)!!= >
]!!> ?
}"" 
)"" 
.## 
ToArray## 
(## 
)## 
;## 
}$$ 	
}%% 
}&& ¶
SD:\VisualStudio\Git\LoanManagement\Authentication\Migrations\20200825045003_test.cs
	namespace 	
Authentication
 
. 

Migrations #
{ 
public 

partial 
class 
test 
: 
	Migration  )
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
CreateTable		 (
(		( )
name

 
:

 
$str

 
,

 
columns 
: 
table 
=> !
new" %
{ 
ID 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
nullable+ 3
:3 4
false5 :
): ;
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
,C D
Password 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
,C D
Role 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
nullable0 8
:8 9
true: >
)> ?
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% /
,/ 0
x1 2
=>3 5
x6 7
.7 8
ID8 :
): ;
;; <
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str 
) 
; 
} 	
} 
} Ò
WD:\VisualStudio\Git\LoanManagement\Authentication\Migrations\20200827062559_initial2.cs
	namespace 	
Authentication
 
. 

Migrations #
{ 
public 

partial 
class 
initial2 !
:" #
	Migration$ -
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
}

 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ¥-
WD:\VisualStudio\Git\LoanManagement\Authentication\Model\BasicAuthenticationAttribute.cs
	namespace 	
Authentication
 
. 
Model 
{ 
public 

class (
BasicAuthenticationAttribute -
:. /(
AuthorizationFilterAttribute0 L
{ 
private 
const 
string 
Realm "
=# $
$str% /
;/ 0
private 
readonly  
IHttpContextAccessor -
_httpcontext. :
;: ;
public 
override 
void 
OnAuthorization ,
(, -
HttpActionContext- >
actionContext? L
)L M
{ 	
if   
(   
actionContext   
.   
Request   %
.  % &
Headers  & -
.  - .
Authorization  . ;
==  < >
null  ? C
)  C D
{!! 
actionContext"" 
."" 
Response"" &
=""' (
actionContext"") 6
.""6 7
Request""7 >
.""> ?
CreateResponse""? M
(""M N
HttpStatusCode""N \
.""\ ]
Unauthorized""] i
)""i j
;""j k
if## 
(## 
actionContext## !
.##! "
Response##" *
.##* +

StatusCode##+ 5
==##6 8
HttpStatusCode##9 G
.##G H
Unauthorized##H T
)##T U
{$$ 
actionContext%% !
.%%! "
Response%%" *
.%%* +
Headers%%+ 2
.%%2 3
Add%%3 6
(%%6 7
$str%%7 I
,%%I J
string%%K Q
.%%Q R
Format%%R X
(%%X Y
$str%%Y n
,%%n o
Realm%%p u
)%%u v
)%%v w
;%%w x
}&& 
}'' 
else(( 
{)) 
string** 
authenticationToken** *
=**+ ,
actionContext**- :
.**: ;
Request**; B
.**B C
Headers**C J
.**J K
Authorization**K X
.**X Y
	Parameter**Y b
;**b c
string++ &
decodedAuthenticationToken++ 1
=++2 3
Encoding++4 <
.++< =
UTF8++= A
.++A B
	GetString++B K
(++K L
Convert++L S
.++S T
FromBase64String++T d
(++d e
authenticationToken++e x
)++x y
)++y z
;++z {
string,, 
[,, 
],, !
usernamePasswordArray,, .
=,,/ 0&
decodedAuthenticationToken,,1 K
.,,K L
Split,,L Q
(,,Q R
$char,,R U
),,U V
;,,V W
string-- 
username-- 
=--  !!
usernamePasswordArray--" 7
[--7 8
$num--8 9
]--9 :
;--: ;
string.. 
password.. 
=..  !!
usernamePasswordArray.." 7
[..7 8
$num..8 9
]..9 :
;..: ;
if// 
(// 
UserValidate//  
.//  !
Login//! &
(//& '
username//' /
,/// 0
password//1 9
)//9 :
)//: ;
{00 
var11 
UserDetails11 #
=11$ %
UserValidate11& 2
.112 3
GetUserDetails113 A
(11A B
username11B J
,11J K
password11L T
)11T U
;11U V
var22 
identity22  
=22! "
new22# &
GenericIdentity22' 6
(226 7
username227 ?
)22? @
;22@ A
identity44 
.44 
AddClaim44 %
(44% &
new44& )
Claim44* /
(44/ 0

ClaimTypes440 :
.44: ;
Name44; ?
,44? @
UserDetails44A L
.44L M
UserName44M U
)44U V
)44V W
;44W X
identity55 
.55 
AddClaim55 %
(55% &
new55& )
Claim55* /
(55/ 0
$str550 4
,554 5
Convert556 =
.55= >
ToString55> F
(55F G
UserDetails55G R
.55R S
ID55S U
)55U V
)55V W
)55W X
;55X Y

IPrincipal66 
	principal66 (
=66) *
new66+ .
GenericPrincipal66/ ?
(66? @
identity66@ H
,66H I
new66I L
string66M S
[66S T
]66T U
{66V W
UserDetails66X c
.66c d
Role66d h
}66i j
)66j k
;66k l
Thread77 
.77 
CurrentPrincipal77 +
=77, -
	principal77. 7
;777 8
var88 
http88 
=88 
new88 "
HttpContextAccessor88# 6
(886 7
)887 8
;888 9
if99 
(99 
http99 
.99 
HttpContext99 )
.99) *
User99* .
!=99. 0
null991 5
)995 6
{:: 
http;; 
.;; 
HttpContext;; (
.;;( )
User;;) -
=;;. /
(;;/ 0
ClaimsPrincipal;;0 ?
);;? @
	principal;;A J
;;;J K
}<< 
}== 
else>> 
{?? 
actionContext@@ !
.@@! "
Response@@" *
=@@+ ,
actionContext@@- :
.@@: ;
Request@@; B
.AA 
CreateResponseAA '
(AA' (
HttpStatusCodeAA( 6
.AA6 7
UnauthorizedAA7 C
)AAC D
;AAD E
}BB 
}CC 
}DD 	
}EE 
}FF ü
OD:\VisualStudio\Git\LoanManagement\Authentication\Model\MyAuthorizeAttribute.cs
	namespace 	
Authentication
 
. 
Model 
{ 
public 

class  
MyAuthorizeAttribute %
:& '
System( .
.. /
Web/ 2
.2 3
Http3 7
.7 8
AuthorizeAttribute8 J
{ 
	protected 
override 
void %
HandleUnauthorizedRequest  9
(9 :
System: @
.@ A
WebA D
.D E
HttpE I
.I J
ControllersJ U
.U V
HttpActionContextV g
actionContexth u
)u v
{ 	
var 
_httpcontext 
= 
new "
HttpContextAccessor# 6
(6 7
)7 8
;8 9
if 
( 
! 
_httpcontext 
. 
HttpContext )
.) *
User* .
.. /
Identity/ 7
.7 8
IsAuthenticated8 G
)G H
{ 
base 
. %
HandleUnauthorizedRequest .
(. /
actionContext/ <
)< =
;= >
}   
else!! 
{"" 
actionContext## 
.## 
Response## &
=##' (
new##) ,
System##- 3
.##3 4
Net##4 7
.##7 8
Http##8 <
.##< =
HttpResponseMessage##= P
(##P Q
System##Q W
.##W X
Net##X [
.##[ \
HttpStatusCode##\ j
.##j k
	Forbidden##k t
)##t u
;##u v
}$$ 
}%% 	
}&& 
}'' Ü
@D:\VisualStudio\Git\LoanManagement\Authentication\Model\Roles.cs
	namespace 	
Authentication
 
. 
Model 
{ 
public 

class 
Roles 
{ 
public 
const 
string 
Admin !
=" #
$str$ +
;+ ,
public		 
const		 
string		 
Guest		 !
=		" #
$str		$ +
;		+ ,
public 
static 
AuthorizationPolicy )
	AdminRole* 3
(3 4
)4 5
{ 	
return 
new &
AuthorizationPolicyBuilder 1
(1 2
)2 3
.3 4$
RequireAuthenticatedUser4 L
(L M
)M N
.N O
RequireRoleO Z
(Z [
Admin[ `
)` a
.a b
Buildb g
(g h
)h i
;i j
} 	
public 
static 
AuthorizationPolicy )
UserRole* 2
(2 3
)3 4
{ 	
return 
new &
AuthorizationPolicyBuilder 1
(1 2
)2 3
.3 4$
RequireAuthenticatedUser4 L
(L M
)M N
.N O
RequireRoleO Z
(Z [
Guest[ `
)` a
.a b
Buildb g
(g h
)h i
;i j
} 	
} 
} Ë
?D:\VisualStudio\Git\LoanManagement\Authentication\Model\User.cs
	namespace 	
Authentication
 
. 
Model 
{ 
public 

class 
User 
{ 
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
Role		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
}

 
} ©
GD:\VisualStudio\Git\LoanManagement\Authentication\Model\UserValidate.cs
	namespace 	
Authentication
 
. 
Model 
{ 
public 

class 
UserValidate 
{ 
private		 
static		 
UserDBContext		 %
_context		& .
;		. /
public

 
UserValidate

 
(

 
UserDBContext

 )
context

* 1
)

1 2
{ 	
_context 
= 
context 
; 
} 	
public 
static 
bool 
Login  
(  !
string! '
username( 0
,0 1
string2 8
password9 A
)A B
{ 	
var 
	UserLists 
= 
_context $
.$ %
Users% *
;* +
return 
	UserLists 
. 
Any  
(  !
user! %
=>& (
user 
. 
UserName 
. 
Equals $
($ %
username% -
,- .
StringComparison/ ?
.? @
OrdinalIgnoreCase@ Q
)Q R
&& 
user 
. 
Password  
==! #
password$ ,
), -
;- .
} 	
public 
static 
User 
GetUserDetails )
() *
string* 0
username1 9
,9 :
string; A
passwordB J
)J K
{ 	
var 
	UserLists 
= 
_context $
.$ %
Users% *
;* +
return 
	UserLists 
. 
FirstOrDefault +
(+ ,
user, 0
=>1 3
user 
. 
UserName 
. 
Equals $
($ %
username% -
,- .
StringComparison/ ?
.? @
OrdinalIgnoreCase@ Q
)Q R
&& 
user 
. 
Password  
==! #
password$ ,
), -
;- .
} 	
} 
}   ò

<D:\VisualStudio\Git\LoanManagement\Authentication\Program.cs
	namespace

 	
Authentication


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ´2
<D:\VisualStudio\Git\LoanManagement\Authentication\Startup.cs
	namespace 	
Authentication
 
{ 
public 

class 
Startup 
{ 
readonly 
string "
MyAllowSpecificOrigins .
=/ 0
$str1 J
;J K
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public"" 
void"" 
ConfigureServices"" %
(""% &
IServiceCollection""& 8
services""9 A
)""A B
{## 	
services%% 
.%% 
AddCors%% 
(%% 
options%% $
=>%%% '
{&& 
options'' 
.'' 
	AddPolicy'' !
(''! "
name''" &
:''& '"
MyAllowSpecificOrigins''( >
,''> ?
builder((! (
=>(() +
builder((, 3
.((3 4
AllowAnyOrigin((4 B
(((B C
)((C D
.))4 5
AllowAnyMethod))5 C
())C D
)))D E
.**4 5
AllowAnyHeader**5 C
(**C D
)**D E
)**E F
;**F G
}++ 
)++ 
;++ 
services,, 
.,, 
AddControllers,, #
(,,# $
),,$ %
.,,% &
AddJsonOptions,,& 4
(,,4 5
options,,5 <
=>,,= ?
{-- 
options.. 
... !
JsonSerializerOptions.. -
...- . 
PropertyNamingPolicy... B
=..C D
null..E I
;..I J
options// 
.// !
JsonSerializerOptions// -
.//- .
DictionaryKeyPolicy//. A
=//B C
null//D H
;//H I
}00 
)00 
;00 
services33 
.33 
AddCors33 
(33 
)33 
;33 
services66 
.66 
AddAuthentication66 &
(66& '
JwtBearerDefaults66' 8
.668 9 
AuthenticationScheme669 M
)66M N
.77 
AddJwtBearer77 
(77 
options77 !
=>77" $
{88 
options99 
.99  
RequireHttpsMetadata99 ,
=99- .
false99/ 4
;994 5
options:: 
.:: 
	SaveToken:: !
=::" #
true::$ (
;::( )
options;; 
.;; %
TokenValidationParameters;; 1
=;;2 3
new;;4 7%
TokenValidationParameters;;8 Q
{<< 
ValidateIssuer== "
===# $
true==% )
,==) *
ValidateAudience>> $
=>>% &
true>>' +
,>>+ ,
ValidateLifetime?? $
=??% &
true??' +
,??+ ,$
ValidateIssuerSigningKey@@ ,
=@@- .
true@@/ 3
,@@3 4
ValidIssuerAA 
=AA  !
ConfigurationAA" /
[AA/ 0
$strAA0 <
]AA< =
,AA= >
ValidAudienceBB !
=BB" #
ConfigurationBB$ 1
[BB1 2
$strBB2 @
]BB@ A
,BBA B
IssuerSigningKeyCC $
=CC% &
newCC' * 
SymmetricSecurityKeyCC+ ?
(CC? @
EncodingCC@ H
.CCH I
UTF8CCI M
.CCM N
GetBytesCCN V
(CCV W
ConfigurationCCW d
[CCd e
$strCCe t
]CCt u
)CCu v
)CCv w
,CCw x
	ClockSkewDD 
=DD 
TimeSpanDD  (
.DD( )
ZeroDD) -
}EE 
;EE 
}GG 
)GG 
;GG 
servicesII 
.II 
AddAuthorizationII %
(II% &
configII& ,
=>II- /
{JJ 
configKK 
.KK 
	AddPolicyKK  
(KK  !
RolesKK! &
.KK& '
AdminKK' ,
,KK, -
RolesKK. 3
.KK3 4
	AdminRoleKK4 =
(KK= >
)KK> ?
)KK? @
;KK@ A
configLL 
.LL 
	AddPolicyLL  
(LL  !
RolesLL! &
.LL& '
GuestLL' ,
,LL, -
RolesLL. 3
.LL3 4
UserRoleLL4 <
(LL< =
)LL= >
)LL> ?
;LL? @
}MM 
)MM 
;MM 
servicesOO 
.OO 
AddDbContextOO !
<OO! "
UserDBContextOO" /
>OO/ 0
(OO0 1
opsOO1 4
=>OO5 7
opsOO8 ;
.OO; <
UseSqlServerOO< H
(OOH I
ConfigurationOOI V
.OOV W
GetConnectionStringOOW j
(OOj k
$strOOk z
)OOz {
)OO{ |
)OO| }
;QQ 
}QQ	 

publicTT 
voidTT 
	ConfigureTT 
(TT 
IApplicationBuilderTT 1
appTT2 5
,TT5 6
IWebHostEnvironmentTT7 J
envTTK N
)TTN O
{UU 	
ifVV 
(VV 
envVV 
.VV 
IsDevelopmentVV !
(VV! "
)VV" #
)VV# $
{WW 
appXX 
.XX %
UseDeveloperExceptionPageXX -
(XX- .
)XX. /
;XX/ 0
}YY 
app[[ 
.[[ 

UseRouting[[ 
([[ 
)[[ 
;[[ 
app\\ 
.\\ 
UseAuthentication\\ !
(\\! "
)\\" #
;\\# $
app]] 
.]] 
UseAuthorization]]  
(]]  !
)]]! "
;]]" #
app^^ 
.^^ 
UseCors^^ 
(^^ "
MyAllowSpecificOrigins^^ .
)^^. /
;^^/ 0
app__ 
.__ 
UseEndpoints__ 
(__ 
	endpoints__ &
=>__' )
{`` 
	endpointsaa 
.aa 
MapControllersaa (
(aa( )
)aa) *
;aa* +
}bb 
)bb 
;bb 
appee 
.ee 
UseCorsee 
(ee 
)ee 
;ee 
}ff 	
}gg 
}hh Ã
DD:\VisualStudio\Git\LoanManagement\Authentication\WeatherForecast.cs
	namespace 	
Authentication
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 