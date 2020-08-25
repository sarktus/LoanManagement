using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LoanManage.Database;
using LoanManage.Database.Entity;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LoanManage.Controllers.v1
{
    [Route("api/[controller]")]
    [ApiExplorerSettings(GroupName = "v1")]
    [ApiController]
    public class LoanController : ControllerBase
    {
        private readonly DatabaseContext _context;
        public LoanController(DatabaseContext context)
        {
            _context = context;
        }

        // GET: api/<LoanController>
        [HttpGet]
        public IEnumerable<Loan> Get()
        {
            return _context.Loans.ToList();
        }

        // GET api/<LoanController>/5
        [HttpGet("{id}")]
        public Loan Get(int id)
        {
            return _context.Loans.Find(id);
        }

        // POST api/<LoanController>
        [HttpPost]
        public ActionResult Post([FromBody] Loan model)
        {
            try
            {
                //Validation
                _context.Loans.Add(model);
                _context.SaveChanges();
                return StatusCode(StatusCodes.Status201Created, model);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, ex);
            }
        }

        // PUT api/<LoanController>/5
        [HttpPut("{id}")]
        public ActionResult Put([FromBody] Loan model)
        {
            var LoaninDb = _context.Loans.FirstOrDefault(a => a.Id == model.Id);
            LoaninDb.Amount = model.Amount;
            LoaninDb.Type = model.Type;
            LoaninDb.Startdate = model.Startdate;
            LoaninDb.Enddate = model.Enddate;

            _context.SaveChanges();
            return Ok(model);
        }

        // DELETE api/<LoanController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            var customerinDb = _context.Loans.FirstOrDefault(a => a.Id == id);
            _context.Remove(customerinDb);
            _context.SaveChanges();
            return Ok(customerinDb);
        }
    }
}
