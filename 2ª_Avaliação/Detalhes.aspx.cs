using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2ª_Avaliação
{
    public partial class Detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CapturaID())
            {
                DadosConsulta();
            }
        }
        private bool CapturaID()
        {
            return Request.QueryString.AllKeys.Contains("id");
        }
        private void DadosConsulta()
        {
                        

            int IDFuncionario = ObterIDFuncionario();
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"select * from funcionario
                                    where id_fun = @IDFuncionario";

                cmd.Parameters.AddWithValue("@IDFuncionario", IDFuncionario);

                Conexao.Conectar();

                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    
                    txtNome.Text = reader["nome_fun"].ToString();
                    ddlSexo.Text = reader["sexo_fun"].ToString();
                    txtNasc.Text = reader["dat_fun"].ToString();
                    txtNct.Text = reader["num_cart_fun"].ToString();
                    txtTelFixo.Text = reader["tel_fixo_fun"].ToString();
                    txtTelCel.Text = reader["tel_cel_fun"].ToString();
                    txtEmail.Text = reader["email_fun"].ToString();
                    txtLogradouro.Text = reader["logra_fun"].ToString();
                    txtNumero.Text = reader["num_endereco_fun"].ToString();
                    txtComplemento.Text = reader["comple_fun"].ToString();
                    txtBairro.Text = reader["bairro_fun"].ToString();
                    txtCidade.Text = reader["cidade_fun"].ToString();
                    txtUF.Text = reader["uf_fun"].ToString();
                    


                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
        private int ObterIDFuncionario()
        {
            int id = 0;
            var idURL = Request.QueryString["id"];
            if (!int.TryParse(idURL, out id))
            {
                throw new Exception("ID Inválido");
            }
            if (id <= 0)
            {
                throw new Exception("ID Inválido");
            }
            return id;
        }
        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("listar.aspx");
        }
    }
}