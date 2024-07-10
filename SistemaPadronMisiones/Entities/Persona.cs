using static System.Collections.Specialized.BitVector32;
using static System.Runtime.InteropServices.JavaScript.JSType;
using System.Net;

namespace SistemaPadronMisiones.Entities
{

    public class Persona
    {
        private int _id;
        private string _dni;
        private int _anoNacimiento;
        private string _apellido;
        private string _nombre;
        private string _direccion;
        private string _tipoDoc;
        private string _seccion;
        private string _circuito;
        private string _mesa;
        private string _orden;
        private string _escuela;


        public Persona() {
            this._dni = string.Empty;
            this._anoNacimiento = 0;
            this._apellido = string.Empty;
            this._nombre = string.Empty;
            this._direccion = string.Empty;
            this._tipoDoc = string.Empty;
            this._seccion = string.Empty;
            this._circuito = string.Empty;
            this._mesa = string.Empty;
            this._orden = string.Empty;
            this._escuela = string.Empty;
        }

        public Persona(string dni, int anoNacimiento, string apellido, string nombre, string direccion, string tipoDoc, string seccion,
            string circuito, string mesa, string orden, string escuela)
        {
            this._dni = dni;
            this._anoNacimiento = anoNacimiento;
            this._apellido = apellido;
            this._nombre = nombre;
            this._direccion = direccion;
            this._tipoDoc = tipoDoc;
            this._seccion = seccion;
            this._circuito = circuito;
            this._mesa = mesa;
            this._orden = orden;
            this._escuela = escuela;
        }
        public Persona(int id, string dni, int anoNacimiento, string apellido, string nombre, string direccion, string tipoDoc, string seccion,
            string circuito, string mesa, string orden, string escuela)
            : this(dni, anoNacimiento, apellido, nombre, direccion, tipoDoc, seccion, circuito, mesa, orden, escuela)
        {
            this._id = id;
        }

        public int Id { get => _id; set => this._id = value; }
        public string Dni { get => _dni; set => this._dni = value; }
        public int AnoNacimiento { get => _anoNacimiento; set => this._anoNacimiento = value; }
        public string Apellido { get => _apellido; set => this._apellido = value; }
        public string Nombre { get => _nombre; set => this._nombre = value; }
        public string Direccion { get => _direccion; set => this._direccion = value; }
        public string TipoDoc { get => _tipoDoc; set => this._tipoDoc = value; }
        public string Seccion { get => _seccion; set => this._seccion = value; }
        public string Circuito { get => _circuito; set => this._circuito = value; }
        public string Mesa { get => _mesa; set => this._mesa = value; }
        public string Orden { get => _orden; set => this._orden = value; }
        public string Escuela { get => _escuela; set => this._escuela = value; }


    }

}
