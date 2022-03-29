using Unit_TestMock.Models;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace Unit_TestMock.Sevices
{
    public class EmployeeService : IEmployeeService
    {
        private readonly ApiDbContext _context;

        public EmployeeService(ApiDbContext context)
        {
            _context = context;
        }

        public async Task<string> GetEmployeebyId(int id)
        {
            var name = await _context.Employee.Where(c => c.Id == id).Select(d => d.Name).FirstOrDefaultAsync();
            return name;
        }

        public async Task<EmployeeItem> GetEmployeeDetails(int id)
        {
            var details = await _context.Employee.FirstOrDefaultAsync(c => c.Id == id);
            return details;
        }
    }
}
