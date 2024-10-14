using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static SeleccionarSucursales.ListadoSucursales;

namespace SeleccionarSucursales
{
    public partial class SeleccionarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarSeleccionados();
            }
        }

        public void CargarSeleccionados()
        {
            var seleccionados = Session["Selecciones"] as List<DatosSucursal>;

            if (seleccionados != null && seleccionados.Count > 0)
            {
                gvMostrar.DataSource = seleccionados;
                gvMostrar.DataBind();
            }
            else
            {
                gvMostrar.DataSource = null;
                gvMostrar.DataBind();
            }
        }


    }
}