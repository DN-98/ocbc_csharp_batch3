using Xunit;
using Moq;
using Unit_TestMock.Sevices;
using Unit_TestMock.Controllers;
using Unit_TestMock.Models;

namespace UnitTesting
{
    public class EmployeeTest
    {
        public Mock<IEmployeeService> mock = new Mock<IEmployeeService>();

        [Fact]
        public async void GetEmployeebyId()
        {
            mock.Setup(p => p.GetEmployeebyId(1)).ReturnsAsync("abc");
            EmployeeController emp = new EmployeeController(mock.Object);
            string result = await emp.GetEmployeeById(1);
            Assert.Equal("abc", result);
        }

        [Fact]
        public async void GetEmployeeDetails()
        {
            var empDTO = new EmployeeItem()
            {
                Id = 1,
                Name = "abc",
                Designation = "abc"
            };

            mock.Setup(p => p.GetEmployeeDetails(1)).ReturnsAsync(empDTO);
            EmployeeController emp = new EmployeeController(mock.Object);
            var result = await emp.GetEmployeeDetails(1);
            Assert.True(empDTO.Equals(result));


        }
    }
}
