using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2ª_Avaliação
{
    public partial class Listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarFuncionario();

        }
        private void CarregarFuncionario()
        {
            string query = @"select id_fun, nome_fun, num_cart_fun from funcionario";
            DataTable dt = new DataTable();
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = Conexao.Connection;
                MySqlDataAdapter da = new MySqlDataAdapter(query, Conexao.Connection);
                da.Fill(dt);

                rptFuncionario.DataSource = dt;
                rptFuncionario.DataBind();
            }
            catch (Exception ex)
            {
                lblMsg.Text = $"Erro: {ex.Message}";
            }
            finally
            {

            }
        }
        protected void rptFuncionario_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
          
        }

        protected void btnAdcionar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adicionar.aspx");
        }
    }
}