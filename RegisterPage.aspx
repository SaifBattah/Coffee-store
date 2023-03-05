<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="CoffeWebSite.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="RegisterSheet.css" rel="stylesheet" />
    <script>
        window.onload = function () {
            var inputs = document.querySelectorAll(".fname, .lname, .uname, .email, .phonenumber, .Gender, .pw, .repw, input[type=date]");
            for (var i = 0; i < inputs.length; i++) {
                inputs[i].onblur = function () {
                    if (this.value == "") {
                        this.style.borderColor = "red";
                    }
                    if (this.classList.contains("BirthDate") && this.value) {
                        var date = new Date(this.value);
                        var age = getAge(date);
                        document.querySelector("#txtlbl").textContent = age;
                        if (age < 18) {
                            document.querySelector("#txtlbl").textContent = "You must be 18 or older to register.";
                        } else {
                            document.querySelector("#txtlbl").textContent = "";
                        }
                    }

                    if (this.classList.contains("pw")) {
                        pw1 = this.value;
                    }
                    if (this.classList.contains("repw")) {
                        pw2 = this.value;
                    }
                    if (pw1 != pw2) {
                        document.querySelector("#txtlbl").textContent = "Passwords do not match";
                    } else {
                        document.querySelector("#txtlbl").textContent = "";
                    }
                };
                inputs[i].oninput = function () {
                    if (this.style.borderColor === "red") {
                        this.style.borderColor = "";
                    }
                };
            }
        };

        function getAge(date) {
            var today = new Date();
            var age = today.getFullYear() - date.getFullYear();
            var month = today.getMonth() - date.getMonth();
            if (month < 0 || (month === 0 && today.getDate() < date.getDate())) {
                age--;
            }
            return age;
        }
    </script>



</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"></asp:ScriptManager>
        <div class="Reg-container">

            <div class="bar1">
                <asp:Label ID="lblfname" runat="server" Text="First Name" CssClass="Lblfname"></asp:Label>
                <asp:TextBox ID="txtfname" runat="server" CssClass="fname"></asp:TextBox>
                <asp:RegularExpressionValidator ID="fnameValidator1" runat="server" ControlToValidate="txtfname"
                    ValidationExpression="^[a-zA-Z]+$" ErrorMessage="First name must contain only characters." CssClass="fnerr" />
                <asp:Label ID="lbllname" runat="server" Text="Last Name" CssClass="Lbllname"></asp:Label>
                <asp:TextBox ID="txtlname" runat="server" CssClass="lname"></asp:TextBox>
                <asp:RegularExpressionValidator ID="lnameValidator1" runat="server" ControlToValidate="txtlname"
                    ValidationExpression="^[a-zA-Z]+$" ErrorMessage="Last name must contain only characters." CssClass="lnerr" />
            </div>
            <div class="bar2">
                <asp:Label ID="lbluname" runat="server" Text="User Name" CssClass="Lbluname"></asp:Label>
                <asp:TextBox ID="txtuname" runat="server" CssClass="uname"></asp:TextBox>
                <asp:RegularExpressionValidator ID="unameValidator1" runat="server" ControlToValidate="txtuname"
                    ValidationExpression="^[^!/?<>|@#$%^&*]+$"
                    ErrorMessage="User name must contain only characters, numbers and [.,_,-]." CssClass="unerr" />
                <asp:Label ID="lblemail" runat="server" Text="Email" CssClass="Lblemail"></asp:Label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="emailValidator" runat="server" ControlToValidate="txtemail"
                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                    ErrorMessage="Invalid email address" CssClass="emailerr" />
            </div>
            <div class="bar3">
                <asp:Label ID="lblgender" runat="server" Text="Gender" CssClass="Lblgender"></asp:Label>
                <asp:DropDownList ID="GenderList" runat="server" CssClass="Gender">
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                </asp:DropDownList>

            </div>
            <div class="bar4">
                <asp:Label ID="lblbd" runat="server" Text="Birth Date" CssClass="Lblbd"></asp:Label>
                <input type="date" id="birthdate" class="BirthDate"  runat="server"/>
                <asp:Label ID="lblphonenumber" runat="server" Text="Phone No." CssClass="Lblphonenumber"></asp:Label>
                <asp:TextBox ID="txtphonenumber" runat="server" CssClass="phonenumber"></asp:TextBox>
                <asp:RegularExpressionValidator ID="PhoneNumberValidator1" runat="server" ControlToValidate="txtphonenumber"
                    ValidationExpression="^05+[0-9]{8}$"
                    ErrorMessage="Enter Correct phone number." CssClass="pnerr" />
            </div>
            <div class="bar5">
                <asp:Label ID="lblpw" runat="server" Text="Password" CssClass="Lblpw"></asp:Label>
                <asp:TextBox ID="txtpw" runat="server" TextMode="Password" CssClass="pw"></asp:TextBox>
                <asp:RegularExpressionValidator ID="pwValidator1" runat="server" ControlToValidate="txtpw"
                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" CssClass="pwerr"
                    ErrorMessage="Password must be at least 8 characters and contain at least one letter and one number." />
                <asp:Label ID="lblrepw" runat="server" Text="Confirm" CssClass="Lblrepw"></asp:Label>
                <asp:TextBox ID="txtrepw" runat="server" TextMode="Password" CssClass="repw"></asp:TextBox>
            </div>
            <div class="bar6">
                <asp:Label ID="txtlbl" runat="server" Text="" CssClass="message"></asp:Label>
            </div>
            <div class="bar7">
                <asp:Button ID="txtbtnreg" runat="server" Text="Regist" CssClass="btnreg" OnClick="txtbtnreg_Click" OnClientClick="return validate()" />

            </div>
        </div>
    </form>
</body>
</html>
