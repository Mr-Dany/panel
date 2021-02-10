using MediatR;
using Dominio;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace Aplicacion.Paneldecontrol
{
    class Consulta
    {
        public class listatipos : IRequest<List<tipo_usuarios>> { }

        public class manejador : IRequestHandler<listatipos, List<tipo_usuarios>>
        {
            public Task<List<tipo_usuarios>> Handle(listatipos request, CancellationToken cancellationToken)
            {
                throw new System.NotImplementedException();
            }
        }
    }
}
