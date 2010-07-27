using System.Web.Mvc;

namespace Core.Controllers
{
	public abstract class MethodController : Controller
	{
		public PartialViewResult FirstPage()
		{
			return PartialView("FirstPage");
		}

		public PartialViewResult SecondPage()
		{
			return PartialView("SecondPage", Request.HttpMethod);
		}

		public PartialViewResult ThirdPage()
		{
			return PartialView("ThirdPage");
		}
	}
}