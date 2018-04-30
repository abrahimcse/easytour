<%-- 
    Document   : registration
    Created on : Mar 27, 2018, 12:02:29 AM
    Author     : Science Fidelity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body background="">
        <h1 align="center"><font face="Tahoma" size=36 color="#142a30">"Happy Journey Registration"</font></h1>
        <form name="RegistrationValidate" action="RegistrationValidate" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="Name" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="Email" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="Password" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="Cpassword" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>National ID</td>
                        <td><input type="text" name="Nid" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><textarea name="Address" rows="4" cols="20">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" name="submit" /></td>
                        <td><input type="reset" value="Reset" name="reset" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
