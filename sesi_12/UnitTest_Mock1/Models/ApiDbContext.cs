using Microsoft.EntityFrameworkCore;


namespace UnitTest_Mock.Models
{
    public class ApiDbContext : DbContext
    {
        public virtual DbSet<EmployeeItem> Employee { get; set; }

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {

        }
    }
}



