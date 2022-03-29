using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

using Unit_TestMock.Models;
using Unit_TestMock.Sevices;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace Unit_TestMock.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : Controller
    {
        private readonly IEmployeeService _employeeService;

        public EmployeeController(IEmployeeService employeeService)
        {
            _employeeService = employeeService;
        }

        [HttpGet(nameof(GetEmployeeById))]
        public async Task<string> GetEmployeeById(int id)
        {
            var name = await _employeeService.GetEmployeebyId(id);
            return name;
        }
        [HttpGet(nameof(GetEmployeeDetails))]
        public async Task<EmployeeItem> GetEmployeeDetails(int id)
        {
            var result = await _employeeService.GetEmployeeDetails(id);
            return result;
        }
    }
}
