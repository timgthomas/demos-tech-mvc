using System.Web.Mvc;

namespace Core.Controllers
{
	public class AjaxMethodController : MethodController
	{
		public ViewResult Index()
		{
			return View("Index");
		}
	}
}