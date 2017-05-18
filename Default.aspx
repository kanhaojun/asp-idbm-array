<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Jun</title>
	<script type = "text/javascript" src = "js/main.js"></script>
	<link rel = "stylesheet" type = "text/css" href = "css/main.css" />
	<link rel = "stylesheet" href = "css/bootstrap.min.css" />
	<link rel = "stylesheet" href = "css/bootstrap.css" />
	<script src="js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<body class = "bg-color">
    <form id="form1" runat="server">
    <div style ="text-align:center;">
        <div>
        <br />
        <br />
            <h1>IDMS</h1>
        <br />
            新增、刪除、修改、查詢
        </div>
        <br />
        <div>
        <h2>Insert</h2><br />
            <asp:TextBox ID = "Ins1"  CssClass = "btn-text btn-wdt30" runat="server" >8</asp:TextBox>
        <br />
            <asp:TextBox ID = "Ins2" CssClass = "btn-text btn-wdt30" runat="server">14.58</asp:TextBox>
            
            <br />
            <asp:Button ID = "Ins3" CssClass = "btn btn-primary btn-wdt30" runat="server" Text="Insert" OnClick="imds_Click1" />
            <br />

            <asp:RangeValidator ID = "rvins1" runat = "server" Display = "Dynamic" ErrorMessage = "ERROR : 0 ~ 24" 
            ForeColor = "#CC0000" ControlToValidate="Ins1" Type="Integer" MaximumValue="24" MinimumValue="0"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="rfvins1" runat="server" ErrorMessage="Number 不得為空" ControlToValidate="Ins1" Display="Dynamic" ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvins2" runat="server" ErrorMessage="Price 不得為空" ControlToValidate="Ins2" Display="Dynamic" ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator ID = "rvins2" runat = "server" Display = "Dynamic" ErrorMessage = "ERROR : 非正確價格" 
            ForeColor = "#CC0000" ControlToValidate="Ins2" Type="double" MaximumValue="99999.9999" MinimumValue="0"></asp:RangeValidator>

        </div>
        <br />
        <div>
        <h2>Modify</h2><br/>
            <asp:TextBox ID = "Mod1"  CssClass = "btn-text btn-wdt30" runat="server">8</asp:TextBox>
            <br />
            <asp:TextBox ID = "Mod2" CssClass="btn-text btn-wdt30" runat="server">14.58</asp:TextBox>
            <br />
            <asp:Button ID = "Mod3" CssClass="btn btn-primary btn-wdt30" runat="server" Text="Modify" OnClick="imds_Click1" />
            <br />
            <asp:RangeValidator ID = "rvmod1" runat = "server" Display = "Dynamic" ErrorMessage = "ERROR : 0 ~ 24" 
            ForeColor = "#CC0000" ControlToValidate="Mod1" Type="Integer" MaximumValue="24" MinimumValue="0"></asp:RangeValidator>

            <asp:RequiredFieldValidator ID="rfmod1" runat="server" ErrorMessage="Number 不得為空" ControlToValidate="Mod1" Display="Dynamic" ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvmod2" runat="server" ErrorMessage="Price 不得為空" ControlToValidate="Mod2" Display="Dynamic" ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator ID = "rvmod2" runat = "server" Display = "Dynamic" ErrorMessage = "ERROR : 非正確價格" 
            ForeColor = "#CC0000" ControlToValidate="Mod2" Type="double" MaximumValue="99999.9999" MinimumValue="0"></asp:RangeValidator>
        </div>
        <br/>
        <div>
        <h2>Search</h2><br/>
            <asp:TextBox ID = "Sea1" CssClass="btn-text btn-wdt30"  runat="server">8</asp:TextBox>
            <br/>
            <asp:Button ID = "Sea2"  CssClass="btn btn-primary btn-wdt30" runat="server" Text="Search" OnClick="imds_Click1" />
            <br />
            <asp:RangeValidator ID = "rbsea1" runat = "server" Display = "Dynamic" ErrorMessage = "ERROR : 0 ~ 24" 
            ForeColor = "#CC0000" ControlToValidate="Sea1" Type="Integer" MaximumValue="24" MinimumValue="0"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="rfvsea1" runat="server" ErrorMessage="Number 不得為空" ControlToValidate="Sea1" Display="Dynamic" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </div>  
        <br />      
         <div>
        <h2>Delete</h2><br/>
            <asp:TextBox ID = "Det1" CssClass="btn-text btn-wdt30" runat="server">8</asp:TextBox>
            <br/>
            <asp:Button ID = "Det2" CssClass="btn btn-primary btn-wdt30" runat="server" Text="Delete" OnClick="imds_Click1" />
             <br />
             <asp:RangeValidator ID = "rvdet1" runat = "server" Display = "Dynamic" ErrorMessage = "ERROR : 0 ~ 24" 
            ForeColor = "#CC0000" ControlToValidate="Det1" Type="Integer" MaximumValue="24" MinimumValue="0"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="rfvdet1" runat="server" ErrorMessage="Number 不得為空" ControlToValidate="Det1" Display="Dynamic" ForeColor="Red">
            </asp:RequiredFieldValidator>

        </div>
        <br />
        <div>

                    <!-- 1 Panel -->
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                <div class ="alert alert-info" style = "text-align:center; width:50%; margin:0 auto;">
                    <br />
                        <asp:Label ID="Lab1" runat="server" style =" font-size:25px;" ForeColor="#31708F">
                        </asp:Label>
                    <br />
                </div>
                </asp:Panel>
		<br />
                    <!-- 2 Panel -->
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                <div class ="alert alert-danger" style = "text-align:center; width:50%; margin:0 auto;">
                    <br />
                        <asp:Label ID="Lab2" runat="server" style =" font-size:25px;" ForeColor="#A94442">
                        </asp:Label>
                    <br />
                </div>
                </asp:Panel>
		<br />
        </div>
    </div>
    </form>
</body>
</html>
