using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    public class usuarios
    {    
        [Key]
        public int IdUsuarios { get; set; }
        public string primernombre { get; set; }
        public string segundonombre { get; set; }
        public string primerapellido { get; set; }
        public string segundoapellido { get; set; }
        public string telefono { get; set; }
        public string correo { get; set; }
        public string contraseña { get; set; }
        public bool Eliminado { get; set; }
       
        public int id_Tipo_Usuario { get; set; }

        public tipo_usuarios tipo_usuarios { get; set; }
    }
}