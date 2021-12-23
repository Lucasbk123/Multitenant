using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;

namespace Multitenant.Data.ModelFactory
{
    public class SchemaModelCacheKey : IModelCacheKeyFactory
    {
        public object Create(DbContext context)
        {
            var model = new
            {
                Type = context.GetType(),
                Schema = (context as ApplicationContext)?.TenantData.TenantId
            };

            return model;
        }
    }
}
