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
            string idprovincia =  DdlProvincias.SelectedValue;/* como se sabe cual se selecciona*/
            int IdProv = int.Parse(DdlProvincias.SelectedValue);
            string url = "~/Imagenes/" + Tximagen.Text + ".jpg";
            datos.Agregarsucursal(nombre, descripcion, IdProv, url);
        }
    }
}