using MedidorModel;
using MedidorModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidoresInteligentes
{
    public partial class AgregarMedidor : System.Web.UI.Page
    {
        private IMedidorDAL medidorDAL = new MedidorDALDB();
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            medidor m = new medidor();
            m.nombre = this.nombreTxt.Text.Trim();
            m.fecha = this.fechaTxt.Text.Trim();
            m.valor_consumo = this.valorConsumoTxt.Text.Trim();
            this.medidorDAL.AgregarMedidor(m);
            Response.Redirect("MostrarMedidor.aspx");
        }
    }
}