
using Newtonsoft.Json;
using SistemaPadronMisiones.Entities;
using System.Globalization;
using System.Reflection;
using System.Text;



namespace SistemaPadronMisiones.DataBussiness
{
    public static class PersonaData
    {
        private static List<Persona> _personas;

        static PersonaData()
        {
            try
            {
                _personas = LeerPersonasDeJson("SistemaPadronMisiones.Resources.Raw.BDPadron.json");
            }
            catch (Exception ex)
            {
                // Manejo de excepción en el constructor estático
                throw new Exception("Error en la inicialización estática de PersonaData.", ex);
            }
        }

        private static List<Persona> LeerPersonasDeJson(string resourceName)
        {
            var assembly = Assembly.GetExecutingAssembly();

            // Lista todos los recursos para verificar la ruta
            var resourceNames = assembly.GetManifestResourceNames();
            foreach (var name in resourceNames)
            {
                Console.WriteLine(name);
            }

            using (Stream? stream = assembly.GetManifestResourceStream(resourceName))
            {
                if (stream == null)
                {
                    throw new ArgumentNullException(nameof(stream), "Recurso no encontrado.");
                }

                using (StreamReader reader = new StreamReader(stream))
                {
                    string json = reader.ReadToEnd();
                    var personas = JsonConvert.DeserializeObject<List<Persona>>(json);

                    // Si la deserialización falla y retorna null, lanzar una excepción
                    if (personas == null)
                    {
                        throw new InvalidOperationException("No se pudo deserializar el JSON a una lista de Persona.");
                    }

                    return personas;
                }
            }
        }

        public static Persona GetPersonaByDNI(string dni)
        {
            var persona = _personas.FirstOrDefault(p => p.Dni == dni.Trim());
            if (persona != null)
            {
                return new Persona(persona.Id, persona.Dni, persona.AnoNacimiento, persona.Apellido, persona.Nombre, persona.Direccion, persona.TipoDoc, persona.Seccion, persona.Circuito, persona.Mesa, persona.Orden, persona.Escuela);
            }
            return new Persona();
        }
        public static List<Persona> GetPersonaByNameAndSurname(string nombreIngresado)
        {
            // Separar el nombre ingresado por espacios
            string[] nombreIngresadoSeparado = nombreIngresado
                .Split(" ")
                .Select(part => RemoveAccents(part).ToLower())
                .ToArray();

            // Crear una lista para almacenar las personas coincidentes
            List<Persona> listaPersonasElegidas = new List<Persona>();

            // Recorrer la lista de personas y buscar coincidencias
            foreach (Persona objetoPersona in _personas)
            {
                // Verificar si alguna parte del nombre ingresado está en el nombre o apellido de la persona
                bool todasCoinciden = nombreIngresadoSeparado.All(n =>
            objetoPersona.Nombre.Contains(n, StringComparison.OrdinalIgnoreCase) ||
            objetoPersona.Apellido.Contains(n, StringComparison.OrdinalIgnoreCase));

                // Si hay coincidencia, agregar a la lista de personas elegidas
                if (todasCoinciden)
                {
                    listaPersonasElegidas.Add(objetoPersona);
                }
            }
            
            // Devolver la lista de personas que coinciden
            return listaPersonasElegidas;
        }
        private static string RemoveAccents(string input)
        {
            if (string.IsNullOrEmpty(input))
                return input;

            var normalizedString = input.Normalize(NormalizationForm.FormD);
            var stringBuilder = new StringBuilder();

            foreach (var c in normalizedString)
            {
                var unicodeCategory = CharUnicodeInfo.GetUnicodeCategory(c);
                if (unicodeCategory != UnicodeCategory.NonSpacingMark)
                {
                    stringBuilder.Append(c);
                }
            }

            return stringBuilder.ToString().Normalize(NormalizationForm.FormC);
        }
    }
}
    

    //public static Persona GetPersonaByDNI(string dni)
    //{

    //    using (SqlConnection connection = DatabaseConnection.GetConnection())
    //    {

    //        string query = "SELECT * FROM Personas WHERE Dni = @dni";

    //        SqlCommand command = new SqlCommand(query, connection);
    //        command.Parameters.AddWithValue("Dni", dni);
    //        connection.Open();
    //        SqlDataReader reader = command.ExecuteReader();

    //        if (reader.Read())
    //        {
    //            int Id = Convert.ToInt32(reader[0]);
    //            string Dni = Convert.ToString(reader[1]);
    //            int AnoNacimiento = Convert.ToInt32(reader[2]);
    //            string Apellido = Convert.ToString(reader[3]);
    //            string Nombre = Convert.ToString(reader[4]);
    //            string Direccion = Convert.ToString(reader[5]);
    //            string TipoDoc = Convert.ToString(reader[6]);
    //            string Seccion = Convert.ToString(reader[7]);
    //            string Circuito = Convert.ToString(reader[8]);
    //            string Mesa = Convert.ToString(reader[9]);
    //            string Orden = Convert.ToString(reader[10]);
    //            string Escuela = Convert.ToString(reader[11]);

    //            Persona persona = new Persona(Id, Dni, AnoNacimiento, Apellido, Nombre, Direccion, TipoDoc, Seccion, Circuito, Mesa, Orden, Escuela);

    //            return persona;
    //        }
    //        return null;
    //    }
    //}


