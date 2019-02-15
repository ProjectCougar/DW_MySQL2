<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="DW_MySQL2.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>


    <title>DocuWare Search</title>
</head>
<body>
    <div>
<nav class="navbar navbar-light" style="background-color: #004AE7;">
  <a class="navbar-brand" href="http://localhost:58196/Search.aspx">
    <img src="/dw2.png" width="50" height="50" class="d-inline-block align-middle" alt="">
<font color="white" face="Georgia">DocuWare Search </font>  </a>
     <a href="https://www.stargel.com/managed-services/"> <img src="/star2.jpg" width="150" height="80" class="mr-0" />
         </a>
</nav>
        
  </div>
    <br />
    <br />
 

    <form id="form1" runat="server" >
         
    <div class= "border border-primary mx-auto p-4 text-justify rounded" style="width: 600px;">
            <asp:Label ID="Label1" runat="server" Text="Patient Name:" class="pr-5"></asp:Label>
            <asp:TextBox ID="txtPatientName" runat="server"></asp:TextBox>
          <br /> <br />
            <asp:Label ID="Label2" runat="server" Text="Account Number:" class="pr-4"></asp:Label>
        
            <asp:TextBox ID="txtAccountNumber" runat="server"></asp:TextBox>  
        <br /> <br /><br />
        <div class="row">
    <div class="col text-center">
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" class="btn btn-outline-primary mx-auto" Text="Search" />
        <br />
        </div>  </div>  </div>
        <asp:GridView CssClass="table table-bordered"
                            ID="gvSearchResults" runat="server">
                        </asp:GridView>
       <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center" Width="80%">
    <Columns>

        <asp:BoundField DataField="File Cabinet" HeaderText="File Cabinet" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>

              <asp:BoundField DataField="PATIENT_NAME" HeaderText="Patient" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>

         <asp:BoundField DataField="ACCT" HeaderText="Account Number" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>

        <asp:BoundField DataField="SERVICE_DATE" HeaderText="Service Date" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>

        <asp:HyperLinkField DataTextField='ACCT' DataNavigateUrlFields="Link" HeaderText="Link" ItemStyle-Width="150" Target="_blank" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:HyperLinkField>
    </Columns>
            <HeaderStyle BackColor="#004AE7" ForeColor="White" />
</asp:GridView>  --%>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js" integrity="sha384-7aThvCh9TypR7fIc2HV4O/nFMVCBwyIUKL8XCtKE+8xgCgl/PQGuFsvShjr74PBp" crossorigin="anonymous"></script>
</body>
</html>