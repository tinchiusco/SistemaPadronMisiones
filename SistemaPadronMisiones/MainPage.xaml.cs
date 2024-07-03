
using SistemaPadronMisiones.DataBussiness;
using SistemaPadronMisiones.Entities;

namespace SistemaPadronMisiones
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            // Start changing phrases
            UpdateChangingText();
            Task.Run(async () =>
            {
                while (true)
                {
                    await Task.Delay(20000); // Wait for 20 seconds
                    UpdateChangingText();
                }
            });
        }

        private readonly List<string> phrases = new List<string>
    {
        "El 5% de la poblacion en Misiones no sabe leer ni escribir.",
        "En Misiones hay 58.000 pesonas analfabetas.",
        "En provincia 524.000 personas estan por debajo de la linea de pobreza.",
        "Hay 110.000 pesonas indigentes en Misiones.",
        "El desempleo afecta al 12% de la población activa en Misiones.",
        "Solo el 30% de los jóvenes misioneros acceden a educación universitaria.",
        "Más de 70.000 personas en Misiones viven en condiciones de hacinamiento.",
        "La falta de acceso a servicios de salud afecta a más de 150.000 misioneros.",
        "Cada año, más de 5.000 niños abandonan la escuela en Misiones.",
        "Solo el 20% de las viviendas en Misiones tienen acceso a servicios básicos de agua potable.",
        "Más del 60% de los hogares en Misiones no tienen acceso a Internet.",
        "El 40% de la población en Misiones carece de acceso a servicios de salud mental.",
        "La desnutrición infantil afecta al 15% de los niños menores de cinco años en Misiones.",
        "Más de 30.000 personas en Misiones viven en asentamientos informales sin servicios básicos.",
        "El 25% de los trabajadores en Misiones tienen empleos informales y precarios.",
        "La falta de inversión en infraestructura educativa deja a más de 100 escuelas en Misiones en condiciones precarias.",
        "Más del 70% de los ancianos en Misiones vive por debajo de la línea de pobreza.",
        "Solo el 15% de las mujeres en Misiones tienen acceso a programas de capacitación laboral.",
        "Más de 50.000 personas en Misiones carecen de acceso regular a alimentos nutritivos.",
        "La tasa de mortalidad infantil en Misiones es una de las más altas del país, con 15 niños por cada 1.000 nacidos.",
        "Más de 20.000 jóvenes en Misiones no tienen acceso a programas de desarrollo juvenil.",
        "La violencia doméstica afecta al 40% de los hogares en Misiones.",
        "Solo el 10% de los agricultores en Misiones tienen acceso a tecnologías modernas para mejorar su producción.",
        "Más de 80.000 personas mayores de 18 años en Misiones no completaron la educación primaria."
    };
        private void UpdateChangingText()
        {
            Random currentIndex = new Random();


            changingTextLabel.Text = phrases[currentIndex.Next(0, phrases.Count())];

        }

        //private void OnClickShowNameField(object sender, EventArgs e)
        //{


        //    //if (NameField.IsVisible == true)
        //    //{
        //    //    //NameField.IsVisible = false;
        //    //    DNIField.IsVisible = false;

        //    //}
        //    //else
        //    //{
        //    //    //NameField.IsVisible = true;
        //    //    DNIField.IsVisible = false;
        //    //}


        //}
        private void OnClickShowDNIField(object sender, EventArgs e)
        {
            if (DNIField.IsVisible == true)
            {
                //NameField.IsVisible = false;
                DNIField.IsVisible = false;
            }
            else
            {
                DNIField.IsVisible = true;
                //NameField.IsVisible = false;
            }

        }
        private void OnClickSearch(object sender, EventArgs e)
        {
            //if (NameField.IsVisible && NameField.Text?.Length >= 3)
            //{
            //    string nameSurname = NameField.Text.Trim();
            //    var nameParts = nameSurname.Split(' ');

            //    if (nameParts.Length >= 2)
            //    {
            //        string nombre = nameParts[0];
            //        string apellido = string.Join(" ", nameParts.Skip(1)); // Unir el resto como apellido

            //        MostrarPersona(PersonaData.GetPersonaByNameAndSurname(nombre, apellido));
            //    }
            //    else
            //    {
            //        // Manejar el caso cuando no se ingresen tanto nombre como apellido
            //        DisplayAlert("Error", "Por favor, ingrese tanto el nombre como el apellido", "OK");
            //    }
            //}

            if (DNIField.IsVisible && DNIField.Text?.Length >= 7)
                if (DNIField.IsVisible && DNIField.Text?.Length >= 7)
                {
                    string dni = DNIField.Text;
                    Persona persona = PersonaData.GetPersonaByDNI(dni);
                    MostrarPersona(persona);
                }
        }

        //private void NameField_TextChanged(object sender, TextChangedEventArgs e)
        //{

        //    //SearchBtn.IsEnabled = (NameField.Text?.Length >= 3);

        //}

        private void DNIField_TextChanged(object sender, TextChangedEventArgs e)
        {
            SearchBtn.IsEnabled = (DNIField.Text?.Length >= 7);
        }

        private void MostrarPersona(Persona persona)
        {
            if (persona != null)
            {
                DniLabel.Text = persona.Dni;
                AnoNacimientoLabel.Text = persona.AnoNacimiento.ToString();
                ApellidoLabel.Text = persona.Apellido;
                NombreLabel.Text = persona.Nombre;
                DireccionLabel.Text = persona.Direccion;
                TipoDocLabel.Text = persona.TipoDoc;
                SeccionLabel.Text = persona.Seccion;
                CircuitoLabel.Text = persona.Circuito;
                MesaLabel.Text = persona.Mesa;
                OrdenLabel.Text = persona.Orden;
                EscuelaLabel.Text = persona.Escuela;

                PersonGrid.IsVisible = true;
                PersonNotFound.IsVisible = false;
            }
            else
            {
                PersonGrid.IsVisible = false;
                PersonNotFound.IsVisible = true;
            }
        }
    }
}


