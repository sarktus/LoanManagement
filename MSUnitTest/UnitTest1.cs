using LoanManage;
using LoanManage.Controllers.v1;
using LoanManage.Database;
using LoanManage.Database.Entity;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Caching.Distributed;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Threading.Tasks;

namespace MSUnitTest
{
    //[TestClass]
    //public class LoanTest
    //{
    //    private LoanController controller;

    //    public LoanTest()
    //    {
    //        var webhost = Microsoft.AspNetCore.WebHost.CreateDefaultBuilder().UseStartup<Startup>().Build();
    //        var serv = webhost.Services.GetRequiredService<DatabaseContext>();
           
    //        controller = new LoanController(serv);
    //    }

    //    [TestMethod]
    //    public async Task GetTest()
    //    {
    //        int id = 1;
    //        var response = await controller.Get(id);
    //        Assert.AreEqual("10121992", ((Loan)response.Value).Startdate);
    //    }
    }
//}
