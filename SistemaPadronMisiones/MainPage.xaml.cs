
using SistemaPadronMisiones.Entities;
using SistemaPadronMisiones.DataBussiness;

namespace SistemaPadronMisiones
{
    public partial class MainPage : ContentPage
    {
        

        public MainPage()
        {
            InitializeComponent();
        }

        private void OnClickShowNameField(object sender, EventArgs e) {


            if (NameField.IsVisible == true)
            {
                NameField.IsVisible = false;
                DNIField.IsVisible = false;
                
            }
            else  {
                NameField.IsVisible = true;
                DNIField.IsVisible = false;
            }
            
            
        }
        private void OnClickShowDNIField(object sender, EventArgs e)
        {
            if (DNIField.IsVisible == true)
            {
                NameField.IsVisible = false;
                DNIField.IsVisible = false;
            }
            else
            {
                DNIField.IsVisible = true;
                NameField.IsVisible = false;
            }

        }
        private void OnClickSearch(object sender, EventArgs e)
        {
            // Implementa la lógica de búsqueda aquí
            //if (NameField.IsVisible && NameField.Text?.Length >= 3)
            //{
            //    string name = NameField.Text;
            //    // Lógica para buscar por nombre
                
            //}
            if (DNIField.IsVisible && DNIField.Text?.Length >= 7)
            {
                string dni = DNIField.Text;
                // Lógica para buscar por DNI
                MostrarPersona(Data.FindByDNI(dni));
            }
        }

        private void NameField_TextChanged(object sender, TextChangedEventArgs e)
        {

            SearchBtn.IsEnabled = (NameField.Text?.Length >= 3);

        }

        private void DNIField_TextChanged(object sender, TextChangedEventArgs e)
        {
            SearchBtn.IsEnabled = (DNIField.Text?.Length >= 7);
        }

        private void MostrarPersona(Persona persona)
        {
            DniLabel.Text = persona?.Dni;
            AnoNacimientoLabel.Text = persona?.AnoNacimiento.ToString();
            ApellidoLabel.Text = persona?.Apellido;
            NombreLabel.Text = persona?.Nombre;
            DireccionLabel.Text = persona?.Direccion;
            TipoDocLabel.Text = persona?.TipoDoc;
            SeccionLabel.Text = persona?.Seccion;
            CircuitoLabel.Text = persona?.Circuito;
            MesaLabel.Text = persona?.Mesa;
            OrdenLabel.Text = persona?.Orden;
            EscuelaLabel.Text = persona?.Escuela;

            PersonGrid.IsVisible = true;
        }



    }
    }


