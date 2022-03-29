﻿using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

using UnitTest_Mock.Models;
using UnitTest_Mock.Sevices;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace UnitTest_Mock.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly IEmployeeService _employeeService;

        public EmployeeController(IEmployeeService employeeService, ApiDbContext context)
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
