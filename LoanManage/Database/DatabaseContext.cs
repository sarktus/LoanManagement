using LoanManage.Database.Entity;
using Microsoft.EntityFrameworkCore;

namespace LoanManage.Database
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext()
        {

        }

        public DatabaseContext(DbContextOptions opts) : base(opts)
        {

        }
        public DbSet<LoanDetails> LoanDetail { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=CTSDOTNET23;database=Loan;Trusted_Connection=True;MultipleActiveResultSets=true;");
        }
    }
}
