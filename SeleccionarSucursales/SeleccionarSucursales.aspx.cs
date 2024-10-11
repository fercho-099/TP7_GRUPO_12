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


        public class DatosSucursal
        {
             public string IdSucursal {get; set;}
            public string NombreSucursal {get; set;}
            public string DescripcionSucursal {get; set;}
        }
    }
}