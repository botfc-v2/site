<%@ Page Language="C#" AutoEventWireup="true"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - Your Project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        /* Custom CSS to center the card */
        .centered-card {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* 100% of the viewport height */
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container centered-card">
            <div class="card" style="width: 18rem;">
                
                <div class="card-body">
                    <h5 class="card-title"><center>Log In</center></h5>
                    <div id="errorAlert" class="alert alert-danger" style="display: none;"></div>
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" runat="server" required>
                    <p></p>
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" runat="server" required>
                    <p></p>
                    <asp:Button ID="loginButton" runat="server" Text="Log in" CssClass="btn btn-primary" style="width: 253px" OnClientClick="return handleLogin();" />
                    <asp:Label ID="errorLabel" runat="server" CssClass="text-danger" Text=""></asp:Label>
                    <p></p>
                    <asp:Label ID="VersionText" runat="server" Text="V1.0 - made by bgr2#0001" />
                </div>
            </div>
            
        </div>
    </form>

    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
        }
    </script>

    <script>
        function handleLogin() {
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;

            // Hardcoded username and password for testing
            var hardcodedUsername = "BGR2";
            var hardcodedPassword = "QualityAssuranceAdmin";

            if (username == hardcodedUsername && password == hardcodedPassword) {
                // Authentication successful, you can redirect to a secure page
                window.location.href = "/dashboard/Default.aspx";
            } else {
                document.getElementById('errorAlert').style.display = 'block';
                document.getElementById('errorAlert').innerHTML = "Incorrect username or password. Please try again.";
            }
            return false;
        }
    </script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
