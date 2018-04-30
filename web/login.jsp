<%-- 
    Document   : login
    Created on : Mar 26, 2018, 11:36:12 PM
    Author     : Science Fidelity
--%>

<%@page import="com.happyjourney.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Happy Journey</title>
    </head>
    <body background="https://brightcove04pmdo-a.akamaihd.net/5104226627001/5104226627001_5240580206001_5212829389001-vs.jpg?pubId=5104226627001&videoId=5212829389001">
        
        <br>
        <h1 align="center"><font face="Tahoma" size=36 color="#5ef26d">Welcome to "Happy Journey"</font></h1>
        <div>
            <form action="Login" onsubmit="return validation()" method="POST">
        <br>
        <br>
        <br>
        <br>
        <table border="0" align="center">
            <caption><h1><font face="Tahoma" size=36>Login Here</font></h1></caption>
        
                <tr>
                    <td><b>Email Address</b></td>
                    <td><input type="text" name="email" value=""/></td>
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td><input type="password" name="password" value=""/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit" name="submit"/></td>
                    <td><a href="registration.jsp" target="_blank" align="center">Sign Up</a></td>
                </tr>
            </table>
        
        </form>
            </div>
        <script type="text/javascript">
            function validation(){
                var email=document.login.email.value;
                var password=document.login.password.value;
                
                if(email===""||password===""){
                    alert("Both Fields should not be blank");
                    return;
                }
                if(password.length<6){
                    alert("Password should have alteast 6 character");
                    return;
                }
                
                
            }
            
        </script>
   
    </body>
</html>
