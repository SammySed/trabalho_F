<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="_2ª_Avaliação.Listar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link  rel="shortcut icon" href="img/icon (1).ico" />
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <script src="Scripts/jquery-3.0.0.js"></script>

    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.css"></script>

    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-12">
        <div class="text-center text-primary">
            <h2>Listagem dos Funcionários</h2>
        </div>
        <br />
        <div class="text-left text-secondary">
            <h5>Funcionários</h5>
        </div>

        <p>
            <asp:Repeater ID="rptFuncionario" runat="server" OnItemDataBound="rptFuncionario_ItemDataBound">
                <HeaderTemplate>
                    <table class="table table-hover" id="sisDataTable">
                        <thead>
                            <tr>
                                <td><strong>ID</strong></td>
                                <td><strong>Nome</strong></td>
                                <td><strong>Num. Carteira</strong></td> 
                                <td><strong>Função</strong></td>
                            </tr>
                        </thead>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "id_fun") %>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "nome_fun") %>
                        </td>    
                           <td>
                            <%# DataBinder.Eval(Container.DataItem, "num_cart_fun") %>
                        </td> 
                        <td>
                            <asp:LinkButton ID="lnkDetalhes" runat="server">
                                <a href='<%# Eval("id_fun", "detalhes.aspx?id={0}") %>'>
                                    <span class="fas fa-eye"></span>
                                </a>
                            </asp:LinkButton>                          
                           
                        </td>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                    </table>
               
               
                </FooterTemplate>
            </asp:Repeater>
        </p>
    </div>

        <div class="row" style="margin-top: 15px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btnAdcionar" CssClass="btn btn-primary" runat="server" Text="Adicionar" OnClick="btnAdcionar_Click" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:Label runat="server" Text="" ID="lblMsg"></asp:Label>
        </div>
    </div>

    <script>
        $('#sisDataTable').dataTable({
            "language": {
                "url": "https://cdn.datatables.net/plug-ins/1.10.24/i18n/Portuguese-Brasil.json"
            }
        });
    </script>
</asp:Content>
