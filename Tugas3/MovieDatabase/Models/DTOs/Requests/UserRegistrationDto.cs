using System.ComponentModel.DataAnnotations;

namespace MovieDatabaseApi.Models.DTOs.Requests
{
    public class UserRegistationDto
    {
        [Required]
        public string Username {get; set;}
        [Required]
        [EmailAddress]
        public string Email {get;set;}
        [Required]
        public string Password {get;set;}
    }
}