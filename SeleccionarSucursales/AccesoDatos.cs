using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SeleccionarSucursales
{
    public class AccesoDatos
    {
        String rutaDBProductos = "Data Source=localhost\\sqlexpress;Initial Catalog=BDSucursales;Integrated Security=True;TrustServerCertificate=True";
        public AccesoDatos() { }

        public SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(rutaDBProductos);

            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                throw new ApplicationException("No se pudo establecer la conexion con la base de datos", ex);
            }

        }

        public SqlDataAdapter ObtenerAdaptador(String consultaSql)
        {
            SqlDataAdapter adaptador;
            try
            {
                adaptador = new SqlDataAdapter(consultaSql, ObtenerConexion());
                return adaptador;
            }
            catch (Exception ex)
            {
                throw new ApplicationException("No se pudo realizar la consulta", ex);

            }
        }
    }
}