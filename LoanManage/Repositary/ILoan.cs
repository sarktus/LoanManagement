using LoanManage.Database.Entity;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace LoanManage.Repositary
{
   public interface ILoan 
    {

        Task<IEnumerable<LoanDetails>> LoanList();
        Task<LoanDetails> LoanListById(int Id);
        LoanDetails AddListPost(LoanDetails model);
        LoanDetails AddListPut(LoanDetails model);
        void DeleteLoan(int id);
    }
}
