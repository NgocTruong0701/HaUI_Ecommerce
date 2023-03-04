<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Master.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Master Page
    </title>
    <link rel="stylesheet" type="text/css" href="Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="container" >
                <h1>My project Web</h1>

                <nav>
                    <ul>
                        <li><a href="#">Danh sach sinh vien</a></li>
                        <li><a href="#">Them sinh vien</a></li>
                        <li><a href="#">Sua sinh vien</a></li>
                        <li><a href="#">Xoa sinh vien</a></li>
                        <li><a href="#">Huong dan</a></li>
                    </ul>
                </nav>

                <aside>
                    <img src="x.jpg" alt="cntt" height="200px" width="200px"/>
                    <h3>Links</h3>
                    <ul>
                        <li>Home</li>
                        <li>Tutorial</li>
                        <li>Download</li>
                        <li>Help</li>
                    </ul>
                </aside>

                <section id="main">
                    <h2>Data here</h2>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
                        text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                        It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
                        It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with
                        desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                    </p>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
                        text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                        It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
                        It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with
                        desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                    </p> 
                </section>
                
                <footer>
                    Hanoi University of Industry
                </footer>
            </div>
            <!--Container-->
        </div>
    </form>
</body>
</html>
