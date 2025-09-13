<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="FormProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="album py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="imgs/imac%20form.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"><b>IT-DEPT. IMAC-FORM</b></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                        <asp:LinkButton class="nav-link" href="Form2.aspx" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                                 <button type="button" class="btn btn-sm btn-outline-secondary">Fill form</button>   
                         </asp:LinkButton>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="imgs/request%20form.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"><b>IT DEPT. MISCELLANEOUS ITEM ISSUE REQUEST FORM</b></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                        <asp:LinkButton class="nav-link" href="FORM1.aspx" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">
                                 <button type="button" class="btn btn-sm btn-outline-secondary">Fill form</button>   
                         </asp:LinkButton>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="imgs/cartinage%20form.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"><b>IT DEPT. PRINTER CARTINAGE REQUEST FORM</b></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                        <asp:LinkButton class="nav-link" href="Form3.aspx" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
                                 <button type="button" class="btn btn-sm btn-outline-secondary">Fill form</button>   
                         </asp:LinkButton>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            
          </div>
        </div>
      </div>

</asp:Content>
