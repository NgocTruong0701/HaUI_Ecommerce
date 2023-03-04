using Microsoft.AspNetCore.Mvc;

namespace WebApplication3
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
