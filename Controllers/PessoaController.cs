using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Multitenant.Data;
using Multitenant.Domain;
using System.Collections.Generic;
using System.Linq;

namespace Multitenant.Controllers
{
    [ApiController]
    [Route("{tenant}/[controller]")]
    public class PessoaController : ControllerBase
    {

        [HttpGet]
        public IEnumerable<Pessoa> Get([FromServices] ApplicationContext db)
        {
            var people = db.Pessoas.ToArray();

            return people;
        }
    }
}
