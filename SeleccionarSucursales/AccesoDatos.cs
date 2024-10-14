using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SeleccionarSucursales
{
    public class AccesoDatos : IDisposable
    {
        private string rutaDBProductos = "Data Source=localhost\\sqlexpress;Initial Catalog=BDSucursales;Integrated Security=True;TrustServerCertificate=True";
        private SqlConnection _connection;
        public AccesoDatos()
        {
            _connection = new SqlConnection(rutaDBProductos);
        }

        public SqlConnection ObtenerConexion()
        {

            try
            {
                if (_connection.State == System.Data.ConnectionState.Closed)
                {
                    _connection.Open();
                }

                return _connection;
            }
            catch (Exception ex)
            {
                throw new ApplicationException("No se pudo establecer la conexion con la base de datos", ex);
            }

        }

        public SqlDataAdapter ObtenerAdaptador(String consultaSql)
        {
            try
            {
                return new SqlDataAdapter(consultaSql, ObtenerConexion());
            }
            catch (Exception ex)
            {
                throw new ApplicationException("No se pudo realizar la consulta", ex);

            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (_connection != null)
                {
                    if (_connection.State != System.Data.ConnectionState.Closed)
                    {
                        _connection.Close();
                    }
                    _connection.Dispose();
                    _connection = null;
                }
            }
        }

        ~AccesoDatos()
        {
            Dispose(false);
        }
    }
}

