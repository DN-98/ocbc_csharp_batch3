using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TodoApp.Models;
using TodoApp.Data;


namespace TodoApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TodoController: ControllerBase
    {
        private readonly ApiDbContext _context;
        public TodoController(ApiDbContext context){
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetItems(){
            var items = await _context.Items.ToListAsync();
            return Ok(items);
        }

        [HttpPost]
        public async Task<IActionResult> CreateItem(ItemData data){
            if(ModelState.IsValid){
                await _context.Items.AddAsync(data);
                await _context.SaveChangesAsync();

                return CreatedAtAction(nameof(GetItems), new {id = data.Id}, data);
            }
                return new JsonResult("Something went wrong") {StatusCode = 500};
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetItems(int id){
            var items = await _context.Items.FirstOrDefaultAsync(x=> x.Id == id);

            if(items== null)
                return NotFound();
            return Ok(items);
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateItem(int id, ItemData item)
        {
            if(id!=item.Id){
                return BadRequest();
            }
            var existItem = await _context.Items.FirstOrDefaultAsync(x=> x.Id == id);

            if(existItem == null)
                return NotFound();

            existItem.Title = item.Title;
            existItem.Description = item.Description;
            existItem.Done = item.Done;
            
            
            await _context.SaveChangesAsync();
            return NoContent();
            
            
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteItem(int id){

            var existItem = await _context.Items.FirstOrDefaultAsync(x=> x.Id == id);

            if(existItem == null)
                return NotFound();

            _context.Items.Remove(existItem);
            await _context.SaveChangesAsync();
            return Ok(existItem);
        }

        [Route("TestRun")]
        [HttpGet]

        public ActionResult TestRun(){
            return Ok("success");
        }
    }
}