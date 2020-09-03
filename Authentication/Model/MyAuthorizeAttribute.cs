using Microsoft.AspNetCore.Http;


namespace Authentication.Model
{
    public class MyAuthorizeAttribute : System.Web.Http.AuthorizeAttribute
    {

        //public MyAuthorizeAttribute()
        //{

        //}
       
        //private readonly IHttpContextAccessor _httpcontext;

        //public MyAuthorizeAttribute(IHttpContextAccessor httpContext)
        //{
        //    _httpcontext = httpContext;

        //}

        // 401 (Unauthorized) - indicates that the request has not been applied because it lacks valid 
        // authentication credentials for the target resource.
        // 403 (Forbidden) - when the user is authenticated but isn’t authorized to perform the requested 
        // operation on the given resource.
        protected override void HandleUnauthorizedRequest(System.Web.Http.Controllers.HttpActionContext actionContext)
        {
            var _httpcontext = new HttpContextAccessor();
            if (!_httpcontext.HttpContext.User.Identity.IsAuthenticated)
            {
                base.HandleUnauthorizedRequest(actionContext);
            }
            else
            {
                actionContext.Response = new System.Net.Http.HttpResponseMessage(System.Net.HttpStatusCode.Forbidden);
            }
        }
    }
}
