using Newtonsoft.Json;
using SistemaPadronMisiones.Entities;
using System.Reflection;



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

            using (Stream stream = assembly.GetManifestResourceStream(resourceName))
            {
                if (stream == null)
                {
                    throw new ArgumentNullException(nameof(stream), "Recurso no encontrado.");
                }

                using (StreamReader reader = new StreamReader(stream))
                {
                    string json = reader.ReadToEnd();
                    return JsonConvert.DeserializeObject<List<Persona>>(json);
                }
            }
        }

        public static Persona GetPersonaByDNI(string dni)
        {
            var persona = _personas.FirstOrDefault(p => p.Dni == dni);
            if (persona != null)
            {
                return new Persona(persona.Id, persona.Dni, persona.AnoNacimiento, persona.Apellido, persona.Nombre, persona.Direccion, persona.TipoDoc, persona.Seccion, persona.Circuito, persona.Mesa, persona.Orden, persona.Escuela);
            }
            return null;
        }
        public static Persona GetPersonaByNameAndSurname(string nombre, string apellido)
        {
            // Asegurarse de que nombre y apellido no contienen espacios adicionales
            nombre = nombre.Trim();
            apellido = apellido.Trim();

            // Comparar usando StringComparison.OrdinalIgnoreCase para ignorar mayúsculas y minúsculas
            var persona = _personas.FirstOrDefault(p => p.Nombre.Equals(nombre, StringComparison.OrdinalIgnoreCase)
                                                 && p.Apellido.Equals(apellido, StringComparison.OrdinalIgnoreCase));
            if (persona != null)
            {
                return new Persona(persona.Id, persona.Dni, persona.AnoNacimiento, persona.Apellido, persona.Nombre, persona.Direccion, persona.TipoDoc, persona.Seccion, persona.Circuito, persona.Mesa, persona.Orden, persona.Escuela);
            }
            return null;
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
}

