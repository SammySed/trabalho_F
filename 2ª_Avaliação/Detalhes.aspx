<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="_2ª_Avaliação.Detalhes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link  rel="shortcut icon" href="img/icon (1).ico" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">
        <h2>Detalhes dos Funcionários</h2>
    </div>

    <div class="row" style="margin-top: 15px">
        <div class="col-md-12">
            <label>Nome:</label>
            <asp:RequiredFieldValidator ID="rfvNome" ControlToValidate="txtNome" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNome" runat="server" MaxLength="50" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top: 15px">
        <div class="col-md-3">
            <label>Sexo:</label>
            <asp:RequiredFieldValidator ID="rfvSexo" ControlToValidate="ddlSexo" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control" Enabled="false">
                <asp:ListItem Selected="True" Value=""></asp:ListItem>
                <asp:ListItem Value="M">Masculino</asp:ListItem>
                <asp:ListItem Value="F">Feminino</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-5">
            <label>Data Nascimento:</label>
            <asp:RequiredFieldValidator ID="rfvNasc" ControlToValidate="txtNasc" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNasc" runat="server" MaxLength="10" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label>Numero da Carteira de Trabalho:</label>
            <asp:RequiredFieldValidator ID="rfvNct" ControlToValidate="txtNct" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNct" runat="server" MaxLength="100" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top: 15px">
        <div class="col-md-6">
            <label>Telefone Fixo:</label>
            <asp:TextBox ID="txtTelFixo" runat="server" MaxLength="50" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <label>Telefone Celular:</label>
            <asp:RequiredFieldValidator ID="rfvTelCel" ControlToValidate="txtTelCel" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtTelCel" runat="server" MaxLength="100" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top: 15px">
        <div class="col-md-12">
            <label>Email:</label>
             <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top: 15px">
        <div class="col-md-7">
            <label>Logradouro:</label>
            <asp:RequiredFieldValidator ID="rfvLogradouro" ControlToValidate="txtLogradouro" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtLogradouro" runat="server" MaxLength="100" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <label>Número:</label>
            <asp:RequiredFieldValidator ID="rfvNumero" ControlToValidate="txtNumero" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNumero" runat="server" MaxLength="100" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <label>Complemento:</label>
            <asp:TextBox ID="txtComplemento" runat="server" MaxLength="100" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
    </div>

    <div class="row" style="margin-top: 15px">
        <div class="col-md-5">
            <label>Bairro:</label>
            <asp:RequiredFieldValidator ID="rfvBairro" ControlToValidate="txtBairro" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtBairro" runat="server" MaxLength="50" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-5">
            <label>Cidade:</label>
            <asp:RequiredFieldValidator ID="rfvCidade" ControlToValidate="txtCidade" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCidade" runat="server" MaxLength="50" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <label>UF:</label>
            <asp:RequiredFieldValidator ID="rfvEstado" ControlToValidate="txtUF" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtUF" runat="server" MaxLength="2" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
    </div>

       <div class="row" style="margin-top: 15px">
        <div class="text-right col-md-12">
            <asp:Button ID="btnVoltar" CssClass="btn btn-info" runat="server" text="Voltar" OnClick="btnVoltar_Click" />           
        </div>
    </div>
</asp:Content>
