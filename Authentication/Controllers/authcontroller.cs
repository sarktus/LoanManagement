
using Authentication.Model;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Authentication.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class authcontroller : ControllerBase
    {
        // GET: api/<authcontroller>
        [HttpGet]
        [BasicAuthentication]
        [MyAuthorize(Roles = "Admin")]
        public IActionResult Get()
        {
            return Ok("I can access");
        }

        // GET api/<authcontroller>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<authcontroller>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<authcontroller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<authcontroller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
