using System.Web.Mvc;

namespace Core.Controllers
{
	public abstract class MethodController : Controller
	{
		public ViewResult Index()
		{
			return View("Index");
		}

		public PartialViewResult FirstPage()
		{
			return PartialView("FirstPage");
		}

		public PartialViewResult SecondPage()
		{
			return PartialView("SecondPage");
		}

		public PartialViewResult ThirdPage()
		{
			return PartialView("ThirdPage");
		}
	}
}