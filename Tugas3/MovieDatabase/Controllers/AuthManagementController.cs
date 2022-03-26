using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Security.Claims;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using MovieDatabaseApi.Models.DTOs.Requests;
using MovieDatabaseApi.Models.DTOs.Responses;
using MovieDatabaseApi.Configuration;


namespace MovieDatabaseApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthManagementController : ControllerBase
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly JwtConfig _jwtConfig;
        
        public AuthManagementController(UserManager<IdentityUser> userManager, IOptionsMonitor<JwtConfig> optionMonitor)
        {
            _userManager = userManager;
            _jwtConfig = optionMonitor.CurrentValue;
        }

    [HttpPost]
    [Route("Register")]
    public async Task<IActionResult> Register([FromBody] UserRegistationDto user)
    {
        if(ModelState.IsValid)
        {
            var existingUser = await _userManager.FindByEmailAsync(user.Email);

            if(existingUser != null)
            {
                return BadRequest(new RegistrationResponse(){
                    Errors = new List<string>(){
                        "Email already in use"
                    },
                    Success = false
                });
            }

            var newUser = new IdentityUser() { Email = user.Email, UserName = user.Username};
            var isCreated = await _userManager.CreateAsync(newUser, user.Password);

            if(isCreated.Succeeded)
            {
                var jwtToken = GenerateJwtToken(newUser);

                return Ok(new RegistrationResponse(){
                    Success = true,
                    Token = jwtToken
                });
            } else
            {
                return BadRequest(new RegistrationResponse(){
                    Errors = isCreated.Errors.Select(x=> x.Description).ToList(),
                    Success = false
                });
            }

        }
        return BadRequest(new RegistrationResponse(){
                Errors = new List<string>(){"Invalid Payload"},
                Success = false
            });
    }

    [HttpPost]
    [Route("Login")]
    public async Task<IActionResult> Login([FromBody] UserLoginRequest user)
    {
        if(ModelState.IsValid)
        {
            var existingUser = await _userManager.FindByEmailAsync(user.Email);

            if(existingUser == null)
            {
                return BadRequest(new RegistrationResponse(){
                    Errors = new List<string>(){
                        $"Invalid login request"
                    },
                    Success = false
                });
            }

            var isCorrect = await _userManager.CheckPasswordAsync(existingUser, user.Password);

            if(!isCorrect)
            {
                return BadRequest(new RegistrationResponse(){
                    Errors = new List<string>(){
                        "Invalid login request 2"
                    },
                    Success = false
                });   
            }
            var jwtToken = GenerateJwtToken(existingUser);
            return Ok(new RegistrationResponse(){
                    Success = true,
                    Token = jwtToken
                });

        }
        return BadRequest(new RegistrationResponse(){
                Errors = new List<string>(){"Invalid Payload"},
                Success = false
            });
    }

    private string GenerateJwtToken(IdentityUser user)
    {
        var jwtTokenHandler = new JwtSecurityTokenHandler();
        var key = Encoding.ASCII.GetBytes(_jwtConfig.Secret);
        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = new ClaimsIdentity( new []
            {
                new Claim("Id", user.Id),
                new Claim(JwtRegisteredClaimNames.Email, user.Email),
                new Claim(JwtRegisteredClaimNames.Sub, user.Email),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
            }),
            Expires = DateTime.UtcNow.AddHours(6),
            SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
        };

        var token = jwtTokenHandler.CreateToken(tokenDescriptor);
        var jwtToken = jwtTokenHandler.WriteToken(token);

        return jwtToken;
    }

    }

    
}