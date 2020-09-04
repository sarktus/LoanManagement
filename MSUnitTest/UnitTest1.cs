using LoanManage;
using LoanManage.Controllers.v1;
using LoanManage.Repositary;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Threading.Tasks;

namespace MSUnitTest
{
    [TestClass]
    public class LoanTest
    {
        private LoanController controller;

        public LoanTest()
        {
            var webhost = Microsoft.AspNetCore.WebHost.CreateDefaultBuilder().UseStartup<Startup>().Build();
            var serv = webhost.Services.GetRequiredService<ILoan>();

            controller = new LoanController(serv);
        }

        [TestMethod]
        public async Task GetTest()
        {
            int id = 2012;
            var response = await controller.Get(id);
            Assert.AreEqual("s", ((LoanManage.Database.Entity.LoanDetails)((Microsoft.AspNetCore.Mvc.ObjectResult)response.Result).Value).Startdate);
        }

        [TestMethod]
        public async Task DeleteTest()
        {
            int id = 2003;
            var response = await controller.Delete(id);
            //Assert.AreEqual<OkResult>(response);

            Assert.AreEqual(404, (((StatusCodeResult)response).StatusCode));
        }

    }
}
