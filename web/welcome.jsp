<%-- 
    Document   : welcome
    Created on : Mar 27, 2018, 4:23:53 PM
    Author     : Science Fidelity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <h1 align="center">Happy Journey</h1>
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Progma", "no-cache");
        response.setHeader("Expire", "0");
        
        if(session.getAttribute("email")==null)
        {
        response.sendRedirect("login.jsp");
        }
        
        %>
        <%
    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
%>
You are not logged in<br/>
<a href="index.html">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("email")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>
<div>
    
    <br>
    From/Residence:<select name="place1">
        <option>BARGUNA</option>
        <option>BARISAL</option>
        <option>BHOLA</option>
        <option>JHALOKATI</option>
        <option>PATUAKHALI</option>
        <option>PIROJPUR </option>
        <option>BANDARBAN</option>
        <option>BRAHMANBARIA</option>
        <option>CHANDPUR</option>
        <option>CHITTAGONG</option>
        <option>COMILLA</option>
        <option>COX'S BAZAR</option>
        <option>FENI</option>
        <option>KHAGRACHHARI</option>
        <option>LAKSHMIPUR</option>
        <option>NOAKHALI</option>
        <option>RANGAMATI</option>
        <option>DHAKA</option>
        <option>FARIDPUR</option>
        <option>GOPALGANJ</option>
        <option>JAMALPUR</option>
        <option>KISHOREGONJ</option>
        <option>MADARIPUR</option>
        <option>MANIKGANJ</option>
        <option>MUNSHIGANJ</option>
        <option>MYMENSINGH</option>
        <option>NARAYANGANJ</option>
        <option>NARSINGDI</option>
        <option>NETRAKONA</option>
        <option>RAJBARI</option>
        <option>SHARIATPUR</option>
        <option>SHERPUR</option>
        <option>TANGAIL</option>
        <option>BAGERHAT</option>
        <option>CHUADANGA</option>
        <option>JESSORE</option>
        <option>JHENAIDAH</option>
        <option>KHULNA</option>
        <option>KUSHTIA</option>
        <option>MAGURA</option>
        <option>MEHERPUR</option>
        <option>NARAIL</option>
        <option>SATKHIRA</option>
        <option>BOGRA</option>
        <option>CHAPAINABABGANJ</option>
        <option>JOYPURHAT</option>
        <option>PABNA</option>
        <option>NAOGAON</option>
        <option>NATORE</option>
        <option>RAJSHAHI</option>
        <option>SIRAJGANJ</option>
        <option>DINAJPUR</option>
        <option>GAIBANDHA</option>
        <option>KURIGRAM</option>
        <option>LALMONIRHAT</option>
        <option>NILPHAMARI</option>
        <option>PANCHAGARH</option>
        <option>RANGPUR</option>
        <option>THAKURGAON</option>
        <option>HABIGANJ</option>
        <option>MAULVIBAZAR</option>
        <option>SUNAMGANJ</option>
        <option>SYLHET</option>
        <option>GAZIPUR</option>
    </select>
    <br>
    Where to go   :<select name="place2">
        <option>BARGUNA</option>
        <option>BORISHAL</option>
        <option>BHOLA</option>
        <option>JHALOKATI</option>
        <option>PATUAKHALI</option>
        <option>PIROJPUR </option>
        <option>BANDARBAN</option>
        <option>BRAHMANBARIA</option>
        <option>CHANDPUR</option>
        <option>CHITTAGONG</option>
        <option>COMILLA</option>
        <option>COX'S BAZAR</option>
        <option>FENI</option>
        <option>KHAGRACHHARI</option>
        <option>LAKSHMIPUR</option>
        <option>NOAKHALI</option>
        <option>RANGAMATI</option>
        <option>DHAKA</option>
        <option>FARIDPUR</option>
        <option>GOPALGANJ</option>
        <option>JAMALPUR</option>
        <option>KISHOREGONJ</option>
        <option>MADARIPUR</option>
        <option>MANIKGANJ</option>
        <option>MUNSHIGANJ</option>
        <option>MYMENSINGH</option>
        <option>NARAYANGANJ</option>
        <option>NARSINGDI</option>
        <option>NETRAKONA</option>
        <option>RAJBARI</option>
        <option>SHARIATPUR</option>
        <option>SHERPUR</option>
        <option>TANGAIL</option>
        <option>BAGERHAT</option>
        <option>CHUADANGA</option>
        <option>JESSORE</option>
        <option>JHENAIDAH</option>
        <option>KHULNA</option>
        <option>KUSHTIA</option>
        <option>MAGURA</option>
        <option>MEHERPUR</option>
        <option>NARAIL</option>
        <option>SATKHIRA</option>
        <option>BOGRA</option>
        <option>CHAPAINABABGANJ</option>
        <option>JOYPURHAT</option>
        <option>PABNA</option>
        <option>NAOGAON</option>
        <option>NATORE</option>
        <option>RAJSHAHI</option>
        <option>SIRAJGANJ</option>
        <option>DINAJPUR</option>
        <option>GAIBANDHA</option>
        <option>KURIGRAM</option>
        <option>LALMONIRHAT</option>
        <option>NILPHAMARI</option>
        <option>PANCHAGARH</option>
        <option>RANGPUR</option>
        <option>THAKURGAON</option>
        <option>HABIGANJ</option>
        <option>MAULVIBAZAR</option>
        <option>SUNAMGANJ</option>
        <option>SYLHET</option>
        <option>GAZIPUR</option>
    </select>
</div>
<div>
    <form name="Bus" action="buscheck" method="POST">
    <input type="submit" value="Bus" name="ButtonBus" /> </form>
   
        <form name="Train" action="traincheck" method="POST">
        <input type="submit" value="Train" name="ButtonTrain" /></form>
    
    <form name="Marine" action="marinecheck" method="POST">
    <input type="submit" value="Marine" name="ButtonMarine" /></form>
    
    <form name="Airline" action="airlinecheck" method="POST">
    <input type="submit" value="Airline" name="ButtonAir" /> </form>

    <form name="Self Journey" action="selfjourneycheck" method="POST">
    <input type="submit" value="Self Journey" name="ButtonSelf" /></form>
    
</div>
    </body>
</html>
