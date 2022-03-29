using System.Threading.Tasks;
using UnitTest_Mock.Models;

namespace UnitTest_Mock.Sevices
{
    public interface IEmployeeService
    {
        Task<string> GetEmployeebyId(int id);
        Task<EmployeeItem> GetEmployeeDetails(int id);
    }

}
