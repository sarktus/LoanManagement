func @_APIGateway.Startup.ConfigureServices$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> () loc("D:\\VisualStudio\\Git\\LoanManagement\\APIGateway\\Startup.cs" :18 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("D:\\VisualStudio\\Git\\LoanManagement\\APIGateway\\Startup.cs" :18 :38)
cbde.store %_services, %0 : memref<none> loc("D:\\VisualStudio\\Git\\LoanManagement\\APIGateway\\Startup.cs" :18 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\APIGateway\\Startup.cs" :20 :12) // Not a variable of known type: services
%2 = cbde.unknown : none loc("D:\\VisualStudio\\Git\\LoanManagement\\APIGateway\\Startup.cs" :20 :12) // services.AddOcelot() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Configure(none, none), it contains poisonous unsupported syntaxes

