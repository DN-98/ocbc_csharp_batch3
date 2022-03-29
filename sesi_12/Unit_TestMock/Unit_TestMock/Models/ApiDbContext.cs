using Microsoft.EntityFrameworkCore;

namespace Unit_TestMock.Models
{
    public class ApiDbContext : DbContext
    {
        public virtual DbSet<EmployeeItem> Employee { get; set; }

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {

        }
    }
}
