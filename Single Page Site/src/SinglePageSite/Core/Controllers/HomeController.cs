using System.Web.Mvc;

namespace Core.Controllers
{
	public class HomeController : Controller
	{
		public ViewResult Index()
		{
			return View("Index");
		}
	}
}