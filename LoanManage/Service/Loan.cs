using LoanManage.Database;
using LoanManage.Database.Entity;
using LoanManage.Repositary;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LoanManage.Service
{
    public class Loan : ILoan
    {
       public string LoanList()
        {
            return "Data";
        }

    }
}
