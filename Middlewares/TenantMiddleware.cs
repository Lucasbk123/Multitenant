using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Multitenant.Provider;
using System.Threading.Tasks;

namespace Multitenant.Middlewares
{
    public class TenantMiddleware
    {
        private readonly RequestDelegate _next;

        public TenantMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext httpContext)
        {
            var tenant = httpContext.RequestServices.GetRequiredService<TenantData>();

            tenant.TenantId = httpContext.Request.Path.Value.Split('/', System.StringSplitOptions.RemoveEmptyEntries)[0];

            await _next(httpContext);
        }
    }
}
