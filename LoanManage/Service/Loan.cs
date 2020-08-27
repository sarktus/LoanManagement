using LoanManage.Database;
using LoanManage.Database.Entity;
using LoanManage.Repositary;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections;
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

    }
}
