using System.Threading;
using System.Web.Mvc;

namespace Core.Controllers
{
	public abstract class MethodController : Controller
	{
		public PartialViewResult FirstPage()
		{
			Thread.Sleep(500);
			return PartialView("FirstPage");
		}

		public PartialViewResult SecondPage()
		{
			Thread.Sleep(500);
			return PartialView("SecondPage", Request.HttpMethod);
		}

		public PartialViewResult ThirdPage()
		{
			Thread.Sleep(500);
			return PartialView("ThirdPage");
		}
	}
}