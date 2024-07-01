using System.Reflection;
using Newtonsoft.Json;
using Microsoft.Maui.Controls;
using SistemaPadronMisiones.Entities;

namespace SistemaPadronMisiones;


public partial class App : Application
{
    public App()
    {
        InitializeComponent();

        MainPage = new AppShell();
    }
}

