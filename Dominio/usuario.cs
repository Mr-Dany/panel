namespace Dominio
{
    public class usuario
    {
        public int idusuario { get; set; }
        public string primernombre { get; set; }
        public string segundonombre { get; set; }
        public string primerapellido { get; set; }
        public string segundoapellido { get; set; }
        public string telefono { get; set; }
        public string correo { get; set; }
        public string password { get; set; }
        public bool eliminado { get; set; }
        
        public int idtipousuario { get; set; }
        public tipousuario tipousuario { get; set; }
    }
}