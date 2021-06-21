using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2ª_Avaliação
{
    public partial class Adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"insert into funcionario
                                    (nome_fun, sexo_fun, dat_fun, num_cart_fun,
                                     tel_fixo_fun, tel_cel_fun, email_fun, logra_fun, 
                                     num_endereco_fun, comple_fun, bairro_fun, cidade_fun, uf_fun)
                                    values
                                    (@nome_fun, @sexo_fun, @data_fun , @num_cart_fun, 
                                     @tel_fixo_fun, @tel_cel_fun, @email_fun, @logra_fun, 
                                     @num_endereco_fun, @comple_fun, @bairro_fun, @cidade_fun, @uf_fun)";

                cmd.Parameters.AddWithValue("@nome_fun", txtNome.Text);
                cmd.Parameters.AddWithValue("@sexo_fun", ddlSexo.Text);
                cmd.Parameters.AddWithValue("@data_fun", txtNasc.Text);
                cmd.Parameters.AddWithValue("@num_cart_fun", txtNct.Text);
                cmd.Parameters.AddWithValue("@tel_fixo_fun", txtTelFixo.Text);
                cmd.Parameters.AddWithValue("@tel_cel_fun", txtTelCel.Text);
                cmd.Parameters.AddWithValue("@email_fun", txtEmail.Text);
                cmd.Parameters.AddWithValue("@logra_fun", txtLogradouro.Text);
                cmd.Parameters.AddWithValue("@num_endereco_fun", txtNumero.Text);
                cmd.Parameters.AddWithValue("@comple_fun", txtComplemento.Text);
                cmd.Parameters.AddWithValue("@bairro_fun", txtBairro.Text);
                cmd.Parameters.AddWithValue("@cidade_fun", txtCidade.Text);
                cmd.Parameters.AddWithValue("@uf_fun", txtUF.Text);                
                Conexao.Conectar();
                cmd.ExecuteNonQuery();
                Response.Redirect("Listar.aspx");
            }
            catch (Exception ex)
            {
                lblResultado.Text = $"Erro: {ex.Message}";
            }
            finally
            {
                Conexao.Desconectar();
            }
        }       
    }
}