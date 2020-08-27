�(
ND:\VisualStudio\Git\LoanManagement\LoanManage\Controllers\v1\LoanController.cs
	namespace 	

LoanManage
 
. 
Controllers  
.  !
v1! #
{
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiExplorerSettings 
( 
	GroupName "
=# $
$str% )
)) *
]* +
[ 

] 
public 

class 
LoanController 
:  !
ControllerBase" 0
{ 
private 
readonly 
DatabaseContext (
_context) 1
;1 2
public 
LoanController 
( 
DatabaseContext -
context. 5
)5 6
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
Loan 
>  
Get! $
($ %
)% &
{ 	
return 
_context 
. 
Loans !
.! "
ToList" (
(( )
)) *
;* +
} 	
[!! 	
HttpGet!!	 
(!! 
$str!! 
)!! 
]!! 
public"" 
Loan"" 
Get"" 
("" 
int"" 
id"" 
)"" 
{## 	
return$$ 
_context$$ 
.$$ 
Loans$$ !
.$$! "
Find$$" &
($$& '
id$$' )
)$$) *
;$$* +
}%% 	
[(( 	
HttpPost((	 
](( 
public)) 
ActionResult)) 
Post))  
())  !
[))! "
FromBody))" *
]))* +
Loan)), 0
model))1 6
)))6 7
{** 	
try++ 
{,, 
_context.. 
... 
Loans.. 
... 
Add.. "
(.." #
model..# (
)..( )
;..) *
_context// 
.// 
SaveChanges// $
(//$ %
)//% &
;//& '
return00 

StatusCode00 !
(00! "
StatusCodes00" -
.00- .
Status201Created00. >
,00> ?
model00@ E
)00E F
;00F G
}11 
catch22 
(22 
	Exception22 
ex22 
)22  
{33 
return44 

StatusCode44 !
(44! "
StatusCodes44" -
.44- .(
Status500InternalServerError44. J
,44J K
ex44L N
)44N O
;44O P
}55 
}66 	
[99 	
HttpPut99	 
(99 
$str99 
)99 
]99 
public:: 
ActionResult:: 
Put:: 
(::  
[::  !
FromBody::! )
]::) *
Loan::+ /
model::0 5
)::5 6
{;; 	
var<< 
LoaninDb<< 
=<< 
_context<< #
.<<# $
Loans<<$ )
.<<) *
FirstOrDefault<<* 8
(<<8 9
a<<9 :
=><<; =
a<<> ?
.<<? @
Id<<@ B
==<<C E
model<<F K
.<<K L
Id<<L N
)<<N O
;<<O P
LoaninDb== 
.== 
Amount== 
=== 
model== #
.==# $
Amount==$ *
;==* +
LoaninDb>> 
.>> 
Type>> 
=>> 
model>> !
.>>! "
Type>>" &
;>>& '
LoaninDb?? 
.?? 
	Startdate?? 
=??  
model??! &
.??& '
	Startdate??' 0
;??0 1
LoaninDb@@ 
.@@ 
Enddate@@ 
=@@ 
model@@ $
.@@$ %
Enddate@@% ,
;@@, -
_contextBB 
.BB 
SaveChangesBB  
(BB  !
)BB! "
;BB" #
returnCC 
OkCC 
(CC 
modelCC 
)CC 
;CC 
}DD 	
[GG 	

HttpDeleteGG	 
(GG 
$strGG 
)GG 
]GG 
publicHH 
ActionResultHH 
DeleteHH "
(HH" #
intHH# &
idHH' )
)HH) *
{II 	
varJJ 
customerinDbJJ 
=JJ 
_contextJJ '
.JJ' (
LoansJJ( -
.JJ- .
FirstOrDefaultJJ. <
(JJ< =
aJJ= >
=>JJ? A
aJJB C
.JJC D
IdJJD F
==JJG I
idJJJ L
)JJL M
;JJM N
_contextKK 
.KK 
RemoveKK 
(KK 
customerinDbKK (
)KK( )
;KK) *
_contextLL 
.LL 
SaveChangesLL  
(LL  !
)LL! "
;LL" #
returnMM 
OkMM 
(MM 
customerinDbMM "
)MM" #
;MM# $
}NN 	
}OO 
}PP �
ND:\VisualStudio\Git\LoanManagement\LoanManage\Controllers\v2\TestController.cs
	namespace		 	

LoanManage		
 
.		 
Controllers		  
.		  !
v2		! #
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiExplorerSettings 
( 
	GroupName "
=# $
$str% )
)) *
]* +
[

]
public 

class 
TestController 
:  !
ControllerBase" 0
{ 
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
string !
>! "
Get# &
(& '
)' (
{ 	
return 
new 
string 
[ 
] 
{  !
$str" *
,* +
$str, 4
}5 6
;6 7
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
string 
Get 
( 
int 
id  
)  !
{ 	
return 
$str 
; 
} 	
[ 	
HttpPost	 
] 
public   
void   
Post   
(   
[   
FromBody   "
]  " #
string  $ *
value  + 0
)  0 1
{!! 	
}"" 	
[%% 	
HttpPut%%	 
(%% 
$str%% 
)%% 
]%% 
public&& 
void&& 
Put&& 
(&& 
int&& 
id&& 
,&& 
[&&  !
FromBody&&! )
]&&) *
string&&+ 1
value&&2 7
)&&7 8
{'' 	
}(( 	
[++ 	

HttpDelete++	 
(++ 
$str++ 
)++ 
]++ 
public,, 
void,, 
Delete,, 
(,, 
int,, 
id,, !
),,! "
{-- 	
}.. 	
}// 
}00 �	
ID:\VisualStudio\Git\LoanManagement\LoanManage\Database\DatabaseContext.cs
	namespace 	

LoanManage
 
. 
Database 
{		 
public

 

class

 
DatabaseContext

  
:

! "
	DbContext

# ,
{ 
public 
DatabaseContext 
( 
)  
{
} 	
public 
DatabaseContext 
( 
DbContextOptions /
opts0 4
)4 5
:6 7
base8 <
(< =
opts= A
)A B
{ 	
} 	
public 
DbSet 
< 
Loan 
> 
Loans  
{! "
get# &
;& '
set( +
;+ ,
}- .
	protected 
override 
void 

(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
UseSqlServer '
(' (
$str	( �
)
� �
;
� �
} 	
} 
} �	
ED:\VisualStudio\Git\LoanManagement\LoanManage\Database\Entity\Loan.cs
	namespace 	

LoanManage
 
. 
Database 
. 
Entity $
{ 
public		 

class		 
Loan		 
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[
Required
]
public 
int 
Amount 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Required	 
] 
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
	Startdate 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
string 
Enddate 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �
RD:\VisualStudio\Git\LoanManagement\LoanManage\Migrations\20200820093635_initial.cs
	namespace 	

LoanManage
 
. 

Migrations 
{ 
public 

partial 
class 
initial  
:! "
	Migration# ,
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
 !
,

! "
columns 
: 
table 
=> !
new" %
{ 

CustomerId
=
table
.
Column
<
int
>
(
nullable
:
false
)
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
nullable0 8
:8 9
false: ?
)? @
,@ A
age 
= 
table 
.  
Column  &
<& '
int' *
>* +
(+ ,
nullable, 4
:4 5
false6 ;
); <
,< =
Address 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
nullable3 ;
:; <
false= B
)B C
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
$str% 3
,3 4
x5 6
=>7 9
x: ;
.; <

CustomerId< F
)F G
;G H
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
$str !
)! "
;" #
} 	
} 
} �
SD:\VisualStudio\Git\LoanManagement\LoanManage\Migrations\20200824182618_initial1.cs
	namespace 	

LoanManage
 
. 

Migrations 
{ 
public 

partial 
class 
initial1 !
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
Id
=
table
.
Column
<
int
>
(
nullable
:
false
)
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Amount 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
nullable/ 7
:7 8
false9 >
)> ?
,? @
Type 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
nullable0 8
:8 9
false: ?
)? @
,@ A
	Startdate 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
nullable5 =
:= >
false? D
)D E
,E F
Enddate 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
nullable3 ;
:; <
false= B
)B C
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% /
,/ 0
x1 2
=>3 5
x6 7
.7 8
Id8 :
): ;
;; <
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str 
) 
; 
} 	
} 
}   �

8D:\VisualStudio\Git\LoanManagement\LoanManage\Program.cs
	namespace

 	

LoanManage


 
{ 
public 

class 
Program 
{
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
} �
AD:\VisualStudio\Git\LoanManagement\LoanManage\Repositary\ILoan.cs
	namespace 	

LoanManage
 
. 

Repositary 
{		 
public

 	
	interface


 
ILoan

 
{ 
string
LoanList
(
)
;
} 
} �
BD:\VisualStudio\Git\LoanManagement\LoanManage\Resources\Contact.cs
	namespace 	

LoanManage
 
. 
	Resources 
{ 
internal 
class
Contact 
{		 
public

 
Contact

 
(

 
)

 
{ 	
} 	
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
} �
?D:\VisualStudio\Git\LoanManagement\LoanManage\Resources\Info.cs
	namespace 	

LoanManage
 
. 
	Resources 
{ 
internal		 
class		
Info		 
:		 
OpenApiInfo		 %
{

 
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public
string
Description
{
get
;
set
;
}
public 
string 
TermsOfService $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
object 
Contact 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �
=D:\VisualStudio\Git\LoanManagement\LoanManage\Service\Loan.cs
	namespace

 	

LoanManage


 
.

 
Service

 
{ 
public 

class 
Loan 
: 
ILoan 
{
public 
string 
LoanList 
( 
) 
{ 	
return 
$str 
; 
} 	
} 
} �"
8D:\VisualStudio\Git\LoanManagement\LoanManage\Startup.cs
	namespace 	

LoanManage
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %

)3 4
{ 	

= 

;) *
} 	
public 
IConfiguration 

{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddDbContext !
<! "
DatabaseContext" 1
>1 2
(2 3
opts3 7
=>8 :
opts; ?
.? @
UseSqlServer@ L
(L M
$str	M �
)
� �
)
� �
;
� �
services 
. 
AddControllers #
(# $
)$ %
;% &
services!! 
.!! 

(!!" #
c!!# $
=>!!% '
{!!( )
c"" 
."" 

SwaggerDoc"" 
("" 
$str"" !
,""! "
new""# &
Info""' +
{## 
Version$$ 
=$$ 
$str$$ "
,$$" #
Title%% 
=%% 
$str%% *
,%%* +
Description&& 
=&&  !
$str&&" E
,&&E F
TermsOfService'' "
=''# $
$str''% +
,''+ ,
Contact(( 
=(( 
new(( !
Contact((" )
((() *
)((* +
{)) 
Name** 
=** 
$str** .
,**. /
Email++ 
=++ 
$str++  <
,++< =
},, 
}-- 
)-- 
;-- 
c.. 
... 

SwaggerDoc.. 
(.. 
$str.. !
,..! "
new..# &
Info..' +
{// 
Version00 
=00 
$str00 "
,00" #
Title11 
=11 
$str11 *
,11* +
Description22 
=22  !
$str22" E
,22E F
TermsOfService33 "
=33# $
$str33% +
,33+ ,
Contact44 
=44 
new44 !
Contact44" )
(44) *
)44* +
{55 
Name66 
=66 
$str66 .
,66. /
Email77 
=77 
$str77  <
,77< =
}88 
}99 
)99 
;99 
}:: 
)::
;:: 
};; 	
public>> 
void>> 
	Configure>> 
(>> 
IApplicationBuilder>> 1
app>>2 5
,>>5 6
IWebHostEnvironment>>7 J
env>>K N
)>>N O
{?? 	
if@@ 
(@@ 
env@@ 
.@@ 

(@@! "
)@@" #
)@@# $
{AA 
appBB 
.BB %
UseDeveloperExceptionPageBB -
(BB- .
)BB. /
;BB/ 0
}CC 
appEE 
.EE 

UseRoutingEE 
(EE 
)EE 
;EE 
appGG 
.GG 
UseAuthorizationGG  
(GG  !
)GG! "
;GG" #
appII 
.II 
UseEndpointsII 
(II 
	endpointsII &
=>II' )
{JJ 
	endpointsKK 
.KK 
MapControllersKK (
(KK( )
)KK) *
;KK* +
}LL 
)LL
;LL 
appNN 
.NN 

UseSwaggerNN 
(NN 
)NN 
;NN 
appOO 
.OO 
UseSwaggerUIOO 
(OO 
cOO 
=>OO !
{OO" #
cPP 
.PP 
SwaggerEndpointPP !
(PP! "
$strPP" <
,PP< =
$strPP> I
)PPI J
;PPJ K
cQQ 
.QQ 
SwaggerEndpointQQ !
(QQ! "
$strQQ" <
,QQ< =
$strQQ> I
)QQI J
;QQJ K
}RR 
)RR
;RR 
}TT 	
}UU 
}VV 