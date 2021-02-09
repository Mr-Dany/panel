using System.Collections.Generic;

namespace Dominio
{
    public class tipousuario
    {
        public int idtipousuario { get; set; }
        public string tipo { get; set; }
        public bool eliminado { get; set; }

        public List<usuario> usuariolista { get; set; }
        
        
    }
}