using System.Web.Mvc;

namespace Core.Controllers
{
	public class CssMethodController : MethodController
	{
		public ViewResult Index()
		{
			return View("Index");
		}
	}
}