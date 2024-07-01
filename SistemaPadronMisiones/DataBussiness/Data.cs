using Microsoft.Maui;
using OfficeOpenXml;
using SistemaPadronMisiones.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaPadronMisiones.DataBussiness
{
    public static class Data
    {


        //public static Persona FindByDNI(string dni)
        //{

        //    ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
        //    string fileName = @"E:\SistemaPadronMisiones\SistemaPadronMisionesApp\SistemaPadronMisiones\PadronMontecarlo.xlsx";
        //    string filePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, fileName);

        //    try
        //    {
        //        List<Persona> personas = LeerPersonasDeExcel(filePath);

        //        Persona personaEncontradaDNI = BuscarPersonaPorDNI(personas, dni);
        //        //Persona personaEncontradaNombre = BuscarPersonaPorNombre(personas,nombre);

        //        if (personaEncontradaDNI != null)
        //        {
        //            return personaEncontradaDNI;
        //        }
        //        else
        //        {
        //            Console.WriteLine("No se encontro una persona con ese DNI");
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine($"Error: {ex.Message}");
        //    }
        //    static List<Persona> LeerPersonasDeExcel(string filePath)
        //    {
        //        var personas = new List<Persona>();

        //        FileInfo fileInfo = new FileInfo(filePath);
        //        using (ExcelPackage package = new ExcelPackage(fileInfo))
        //        {
        //            ExcelWorksheet worksheet = package.Workbook.Worksheets[4]; // Asumiendo que los datos están en la primera hoja
        //            int rowCount = worksheet.Dimension.Rows;
        //            int colCount = worksheet.Dimension.Columns;

        //            for (int row = 2; row <= rowCount; row++) // Empezar en la fila 2, asumiendo que la fila 1 tiene los encabezados
        //            {
        //                var persona = new Persona
        //                {
        //                    Dni = worksheet.Cells[row, 2].Text, // Columna 2
        //                    AnoNacimiento = int.Parse(worksheet.Cells[row, 3].Text), // Columna 3
        //                    Apellido = worksheet.Cells[row, 4].Text, // Columna 4
        //                    Nombre = worksheet.Cells[row, 5].Text, // Columna 5
        //                    Direccion = worksheet.Cells[row, 6].Text, // Columna 6
        //                    TipoDoc = worksheet.Cells[row, 7].Text, // Columna 7
        //                    Seccion = worksheet.Cells[row, 8].Text, // Columna 8
        //                    Circuito = worksheet.Cells[row, 9].Text, // Columna 9
        //                    Mesa = worksheet.Cells[row, 10].Text, // Columna 10
        //                    Orden = worksheet.Cells[row, 11].Text, // Columna 11
        //                    Escuela = worksheet.Cells[row, 12].Text // Columna 12
        //                };

        //                personas.Add(persona);
        //            }
        //        }
        //        return personas;

        //    }

        //    return null;


        //}
        //public static Persona BuscarPersonaPorDNI(List<Persona> personas, String dni)
        //{

        //    foreach (Persona persona in personas)
        //    {
        //        if (dni.Equals(persona.Dni))
        //        {

        //            return persona;
        //            break;
        //        }
        //    }
        //    return null;


        }
        //public static Persona BuscarPersonaPorNombre(List<Persona>personas, String nombre) {
        //    foreach (Persona persona in personas) {
        //        if (nombre.ToLower().Equals(persona.Nombre.ToLower()) && nombre.ToLower().Equals(persona.Apellido.ToLower()))
        //        {
        //            return persona;
        //        }

            }
            
            
     

