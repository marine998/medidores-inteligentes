<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarMedidor.aspx.cs" Inherits="MedidoresInteligentes.AgregarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Ingresar Medidor</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="nombreTxt">Nombre</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nombreTxt" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingrese Nro Medidor"></asp:RequiredFieldValidator>
                    </div>

                   <div class="form-group">
                        <label for="rutTxt">Fecha</label>
                        <asp:TextBox ID="fechaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nombreTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingrese Fecha"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label for="contraTxt">Valor Consumo</label>
                        <asp:TextBox ID="valorConsumoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nombreTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingrese Valor Consumo"></asp:RequiredFieldValidator>

                    </div>

                    <asp:Button OnClick="ingresarBtn_Click" runat="server" ID="ingresarBtn" Text="Ingresar" />

                </div>
            </div>
        </div>
    </div>
</asp:Content>
