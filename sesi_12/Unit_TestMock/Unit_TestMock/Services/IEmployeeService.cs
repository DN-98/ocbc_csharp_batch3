using System.Threading.Tasks;
using Unit_TestMock.Models;

namespace Unit_TestMock.Sevices
{
    public interface IEmployeeService
    {
        Task<string> GetEmployeebyId(int id);
        Task<EmployeeItem> GetEmployeeDetails(int id);
    }

}
