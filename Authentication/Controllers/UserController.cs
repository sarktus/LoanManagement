using Authentication.Model;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Authentication.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        [HttpGet]
        [Route("GetUserData")]
        [Authorize(Roles = Roles.Guest)]
        public IActionResult GetUserData()
        {
            return Ok("This is a response from user method");
        }


        [HttpGet]
        [Route("GetAdminData")]
        [Authorize(Roles = Roles.Admin)]
        public IActionResult GetAdminData()
        {
            return Ok("This is a response from Admin method");
        }
    }
}
