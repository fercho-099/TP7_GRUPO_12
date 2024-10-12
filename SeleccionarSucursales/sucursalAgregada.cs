using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SeleccionarSucursales
{
    public class sucursalAgregada
    {

        public void Agregarsucursal(string nombre, string descripcion, int idprovincia, string url)
        {
            AccesoDatos datos = new AccesoDatos();
            SqlConnection conexion = datos.ObtenerConexion();

            try
            {
                if (conexion != null)
                {
                    string consulta = @"
                        INSERT [dbo].[Sucursal] (NombreSucursal, DescripcionSucursal,
                        Id_ProvinciaSucursal, URL_Imagen_Sucursal)
                        VALUES (@NombreSucursal, @DescripcionSucursal, @ID_ProvinciaSucursal, @URL_Imagen_Sucursal)";
                   
                    using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                    {
                        
                        cmd.Parameters.AddWithValue("@NombreSucursal", nombre);
                        cmd.Parameters.AddWithValue("@DescripcionSucursal", descripcion);
                        cmd.Parameters.AddWithValue("@ID_ProvinciaSucursal", idprovincia);
                        cmd.Parameters.AddWithValue("@URL_Imagen_Sucursal", url);

                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (SqlException ex)
            {
                throw new Exception("Error al cargar sucursal", ex);
            }
            finally
            {
               conexion.Close();                
            }
        }
    }
}