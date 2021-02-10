using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aplicacion.Paneldecontrol
{
    class Consulta
    {
        public class listatipos : IRequest<List()>
    }
}
