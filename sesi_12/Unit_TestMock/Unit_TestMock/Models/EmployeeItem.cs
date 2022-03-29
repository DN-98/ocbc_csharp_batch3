using System.ComponentModel.DataAnnotations;

namespace Unit_TestMock.Models
{
    public class EmployeeItem
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Designation { get; set; }
    }
}
