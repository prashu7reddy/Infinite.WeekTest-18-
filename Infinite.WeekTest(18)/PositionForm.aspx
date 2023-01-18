<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PositionForm.aspx.cs" Inherits="Infinite.WeekTest_18_.PositionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="contents/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery.validate.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-5">
                    <div class="mb-2">
                        <h1>Create New Position</h1>
                    </div>
                    <div class="mb-2 row">

                        <label class="form-label col-md-4">Position Code</label>
                        <asp:TextBox ID="TxtPositionCode" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ID="RfvPositionCode" runat="server" ControlToValidate="TxtPositionCode"
                            ErrorMessage="please enter position code"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Description</label>
                        <asp:TextBox ID="TxtDescription" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ID="RfvTxtDescription" runat="server"
                            ControlToValidate="TxtDescription" ErrorMessage="please enter Description"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-2 row">
                       
                       <%-- <div class="col-md-8">--%>
                             <label class="form-label col-md-4">Year</label>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                 <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                                <asp:ListItem Text="2024" Value="1"></asp:ListItem>
                                <asp:ListItem Text="2025" Value="2"></asp:ListItem>
                                <asp:ListItem Text="2026" Value="3"></asp:ListItem>
                                <asp:ListItem Text="2027" Value="4"></asp:ListItem>
                                <asp:ListItem Text="2028" Value="5"></asp:ListItem>
                            </asp:DropDownList>
                          
                           
                            <%-- <asp:RequiredFieldValidator ID="RequiredYear" ErrorMessage="Please Enter Description" runat="server" />--%>
                        </div>
                        <div class="mb-2 row">
                            <label class="form-label col-md-4">Budgeted Strength</label>
                            <asp:TextBox ID="TxtBudgetedStrength" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ID="TxtBudgeted" runat="server" ControlToValidate="TxtBudgetedStrength"
                                ErrorMessage="please enter budgeted strength"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-2 row">
                            <label class="form-label col-md-4">Current Strength</label>
                            <asp:TextBox ID="TxtCurrentStrength" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ID="TxtCurrent" runat="server" ControlToValidate="TxtCurrentStrength" ErrorMessage="please enter current strength"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-2 row">
                            <div class="mb-1 col">
                                <asp:Button Text="Add New" ID="BtnAddNew" runat="server" OnClick="BtnAddNew_Click" CssClass="btn btn-primary" />
                                <asp:Button Text="Reset" ID="BtnReset" runat="server" CausesValidation="false" CssClass="btn btn-danger" onclick="BtnReset_Click"/>
                            </div>

                        </div>

                    </div>
            </div>
        </div>
    </form>
</body>
</html>
