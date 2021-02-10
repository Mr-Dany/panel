using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Dominio
{
    public class tipo_usuarios
    {
        [Key]
        public int IdTipoUsuarios { get; set; }
        public string tipo { get; set; }
        public bool eliminado { get; set; }

        public ICollection<usuarios> usuariolista { get; set; }
        
        
    }
}