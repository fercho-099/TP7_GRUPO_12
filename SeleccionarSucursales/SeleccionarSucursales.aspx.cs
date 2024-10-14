using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeleccionarSucursales
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void BtnSeleccionar_Command1(object sender, CommandEventArgs e)
        {
            string [] argumentos = e.CommandArgument.ToString().Split(';');
            if (argumentos.Length != 3) return;


            string idsucursal = argumentos[0];
            string nombresucursal = argumentos[1];
            string descripcionsucursal = argumentos[2];

            var seleccion = new DatosSucursal
            {
                IdSucursal = idsucursal,
                NombreSucursal = nombresucursal,
                DescripcionSucursal = descripcionsucursal
            };


            var seleccionados = this.ObtenerSeleccionadosDeSesion();

            if (!seleccionados.Exists(s => s.IdSucursal == idsucursal))
            {
                seleccionados.Add(seleccion);
                this.GuardarSeleccionadosEnSesion(seleccionados);
            }


        }


        public class DatosSucursal
        {
            public string IdSucursal {get; set;}
            public string NombreSucursal {get; set;}
            public string DescripcionSucursal {get; set;}
        }

        protected void DataListProvincias_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Seleccionar_provincia")
            {
                int id_provinciaseleccionada = Convert.ToInt32(e.CommandArgument);

                SqlDataSource1.SelectCommand = "SELECT * FROM Sucursal s inner join Provincia p  on s.Id_ProvinciaSucursal = p.Id_Provincia  WHERE p.Id_Provincia = @IdProvincia";
                SqlDataSource1.SelectParameters.Clear();
                SqlDataSource1.SelectParameters.Add("IdProvincia", id_provinciaseleccionada.ToString());
                ListView1.DataBind();
            }
        }

        protected void BtnSeleccionar_Command(object sender, CommandEventArgs e)
        {
            string[] argumentos = e.CommandArgument.ToString().Split(';');
            string idsucursal = argumentos[0];
            string nombresucursal = argumentos[1];
            string descripcionsucursal = argumentos[2];

            var seleccion = new DatosSucursal
            {
                IdSucursal = idsucursal,
                NombreSucursal = nombresucursal,
                DescripcionSucursal = descripcionsucursal
            };

            var seleccionados = Session["Selecciones"] as List<DatosSucursal> ?? new List<DatosSucursal>();
            seleccionados.Add(seleccion);
            Session["Selecciones"] = seleccionados;
        }


        //HELPERS
        private List<DatosSucursal> ObtenerSeleccionadosDeSesion()
        {
            return Session["Selecciones"] as List<DatosSucursal> ?? new List<DatosSucursal>();
        }

        private void GuardarSeleccionadosEnSesion(List<DatosSucursal> seleccionados)
        {
            Session["Selecciones"] = seleccionados;
        }

    }
}