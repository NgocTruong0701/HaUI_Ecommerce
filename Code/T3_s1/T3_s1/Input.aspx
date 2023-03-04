<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input.aspx.cs" Inherits="T3_s1.Input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label{
            width:120px;
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="get"
        action="Output.aspx">
        <div>
            <h1>Student Information</h1>
        </div>
        <p>
            <label>Name</label>
            <input type="text" name="name" />
        </p>
        <p>
            <label>Gender</label>
            <input type="radio" name="gender" value="male" />Male
            <input type="radio" name="gender" value="female" />Female
        </p>
        <p>
            <label>Address</label>
            <select name="address">
                <option value="hn">Ha noi</option>
                <option value="hp">Hai phong</option>
                <option value="qn">Quang ninh</option>
                </select>
        </p>
         <p>
            <label>Subject</label>
                <input type="checkbox" name="subject" value="LT.net" />LT Net
                <input type="checkbox" name="subject" value="TMDT" />TMDT
                <input type="checkbox" name="subject" value="Java" />Java
        </p>
        <input type="submit" value="Send" />
        <input type="reset" value="Cancel" />


    </form>
</body>
</html>
