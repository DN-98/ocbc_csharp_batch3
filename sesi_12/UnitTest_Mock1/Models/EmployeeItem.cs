using System.ComponentModel.DataAnnotations;

namespace UnitTest_Mock.Models
{
    public class EmployeeItem
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Designation { get; set; }
    }
}
