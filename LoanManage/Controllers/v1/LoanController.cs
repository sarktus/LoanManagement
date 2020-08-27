using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LoanManage.Database;
using LoanManage.Database.Entity;
using LoanManage.Repositary;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LoanManage.Controllers.v1
{
    [Route("api/[controller]")]
    [ApiExplorerSettings(GroupName = "v1")]
    [ApiController]
    public class LoanController : ControllerBase
    {
        private readonly DatabaseContext _context;

        private readonly ILoan _ILoan;
        public LoanController(ILoan _iLoan)
        {
            this._ILoan = _iLoan;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<LoanDetails>>> Get()
        {
            try
            {
                return Ok(await _ILoan.LoanList());
            }
            catch (Exception)
            {
                return StatusCode(StatusCodes.Status500InternalServerError,
                    "Error retrieving data from the database");
            }
        }

        // GET api/<LoanController>/5
        [HttpGet("{id}")]
        public async Task<ActionResult<LoanDetails>> Get(int id)
        {
            var loan = await _context.LoanDetail.FindAsync(id);
            if(loan == null)
            {
                return NotFound();
            }
            return loan;
        }

        // POST api/<LoanController>
        [HttpPost]
        public ActionResult Post([Bind(nameof(LoanDetails.Id), nameof(LoanDetails.Startdate), nameof(LoanDetails.Enddate), nameof(LoanDetails.Amount))][FromBody] LoanDetails model)
        {
            try
            {
                //Validation
                _context.LoanDetail.Add(model);
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
        public ActionResult Put([Bind(nameof(LoanDetails.Id), nameof(LoanDetails.Startdate), nameof(LoanDetails.Enddate), nameof(LoanDetails.Amount))][FromBody] LoanDetails model)
        {
            try
            {
                var LoaninDb = _context.LoanDetail.FirstOrDefault(a => a.Id == model.Id);
                LoaninDb.Amount = model.Amount;
                LoaninDb.Type = model.Type;
                LoaninDb.Startdate = model.Startdate;
                LoaninDb.Enddate = model.Enddate;

                _context.SaveChanges();
                return Ok(model);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, ex);
            }
        }

        // DELETE api/<LoanController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            try
            {
                var customerinDb = _context.LoanDetail.FirstOrDefault(a => a.Id == id);
                _context.Remove(customerinDb);
                _context.SaveChanges();
                return Ok(customerinDb);
            }

            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, ex);
            }
        }
        }
}
