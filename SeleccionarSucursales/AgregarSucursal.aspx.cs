using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeleccionarSucursales
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Title = "Agregar Sucursal";
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            sucursalAgregada datos = new sucursalAgregada();
            string nombre = TxtNombre.Text;
            string descripcion = TxtDescripcion.Text;
            int IdProv = Convert.ToInt32(DdlProvincias.SelectedValue);
            string url = "~/Imagenes/" + Tximagen.Text + ".jpg";
            datos.Agregarsucursal(nombre, descripcion, IdProv, url);
        }

      
        /*protected void DdlProvincias_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedProvincia= Convert.ToInt32(DdlProvincias.SelectedValue);
        }*/
    }
}