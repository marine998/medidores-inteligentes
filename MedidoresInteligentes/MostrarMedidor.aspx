<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarMedidor.aspx.cs" Inherits="MedidoresInteligentes.MostrarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="row mt-5">
            <asp:GridView ID="grillaMedidor" CssClass ="table table-hover table-bordered" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="no hay registros" runat="server" OnRowCommand="grillaMedidor_RowCommand">

                <Columns>
                    <asp:BoundField HeaderText="Nombre" DataField="nombre" />
                    <asp:BoundField HeaderText="Fecha" DataField="fecha" />
                    <asp:BoundField HeaderText="Valor Consumo" DataField="valor_consumo" />
                    <asp:TemplateField HeaderText="Acciones">
                       <ItemTemplate>
                                        <asp:Button CssClass="btn btn-danger" runat="server"
                                             CommandName="eliminar" Text="Eliminar"
                                             CommandArgument='<%# Eval("id_medidor")%>' />
                                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
