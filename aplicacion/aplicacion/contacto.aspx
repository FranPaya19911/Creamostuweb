<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="aplicacion.contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
    
    <link rel="stylesheet" href="css/contacto.css" />
    <!-- ANIMATE CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css" />
    
<title>Contacto</title>

</head>
<body>
    
    <div class="content">

        <h1 class="logo">Contact <span>Us</span></h1>

        <div class="contact-wrapper animated bounceInUp">
            <div class="contact-form">
                <h3>Contact us</h3>
                <form action="#" >
                    <p>
                        <label>FullName</label>
                        <input type="text" name="fullname" />
                    </p>
                    <p>
                        <label>Email Adress</label>
                        <input type="email" name="email" />
                    </p>
                    <p>
                        <label>Phone Number</label>
                        <input type="tel" name="phone" />
                    </p>
                    <p>
                        <label>Affair</label>
                        <input type="text" name="affair" />
                    </p>
                    <p class="block">
                       <label>Message</label> 
                        <textarea name="message" rows="3"></textarea>
                    </p>
                    <p class="block">
                        <button>
                            Send
                        </button>
                    </p>
                </form>
            </div>
            <div class="contact-info">
                <h4>More Info</h4>
                <ul>
                    <li><i class="fas fa-map-marker-alt"></i> Baker Street</li>
                    <li><i class="fas fa-phone"></i> (111) 111 111 111</li>
                    <li><i class="fas fa-envelope-open-text"></i> contact@website.com</li>
                </ul>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero provident ipsam necessitatibus repellendus?</p>
                <p>Company.com</p>
            </div>
        </div>

    </div>

</body>
<%--<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>--%>
</html>
