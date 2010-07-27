using System.Web.Mvc;

namespace Core.Controllers
{
	public class HybridMethodController : MethodController
	{
		public ViewResult Index()
		{
			return View("Index");
		}
	}
}