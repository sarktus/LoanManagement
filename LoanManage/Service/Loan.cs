using LoanManage.Database;
using LoanManage.Database.Entity;
using LoanManage.Repositary;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LoanManage.Service
{
    public class Loan : ILoan
    {
        private static DatabaseContext DbContext = new DatabaseContext();
       public async Task<IEnumerable<LoanDetails>> LoanList()
        {
            return await DbContext.LoanDetail.ToListAsync();
        }

        public async Task<LoanDetails> LoanListById(int id)
        {
            var loan = await DbContext.LoanDetail.FindAsync(id);
            return loan;
        }

        public LoanDetails AddListPost(LoanDetails model)
        {
            DbContext.LoanDetail.Add(model);
            DbContext.SaveChanges();
            return model;
        }

        public LoanDetails AddListPut(LoanDetails model)
        {
            var LoaninDb = DbContext.LoanDetail.FirstOrDefault(a => a.Id == model.Id);
            LoaninDb.Amount = model.Amount;
            LoaninDb.Term = model.Term;
            LoaninDb.Type = model.Type;
            LoaninDb.City = model.City;
            LoaninDb.Startdate = model.Startdate;
            LoaninDb.Enddate = model.Enddate;
            
            DbContext.SaveChanges();
            return  model;
        }

       public void DeleteLoan(int id)
        {
                var customerinDb = DbContext.LoanDetail.FirstOrDefault(a => a.Id == id);
                DbContext.Remove(customerinDb);
                DbContext.SaveChanges();
        }
       
    }
}
