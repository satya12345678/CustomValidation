<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<html>
<head>
    <title>Add Employee Form</title> 
    <style>
    .error
    {
        color: #ff0000;
        font-weight: bold;
        
    }
    .error_block
    {
    color: black;
    padding: 10px;
    background-color: cyan;
    width: 400px;
    padding: 10px;
    border-radius: 20px;
    }
    
    </style>
</head>
 
<body>
    <h2><spring:message code="lbl.page" text="Add Employee"/></h2>
    <br/>
    <form:form method="GET" action="addEmployee" modelAttribute="employee">
    
     <spring:hasBindErrors name="employee">
    <div class="error_block">
       <form:errors path="*" cssClass="error"/>
    </div> 
       </spring:hasBindErrors>
   
        <table>       
            <tr>
                <td><spring:message code="lbl.fname" /></td>
                <td><form:input path="fname" /></td>
                <td><form:errors path="fname" cssClass="error" /></td>
            </tr>
            <tr>
                <td><spring:message code="lbl.lname" text="Last Name" /></td>
                <td><form:input path="lname" /></td>
                <td><form:errors path="lname" cssClass="error" /></td>
            </tr>
            <tr>
                <td><spring:message code="lbl.email" text="Email Id" /></td>
                <td><form:input path="email" /></td>
                <td><form:errors path="email" cssClass="error" /></td>
            </tr>
              <tr>
                <td><spring:message code="lbl.address.pincode" text="Pincode" /></td>
                <td><form:input path="address.pincode" /></td>
                <td><form:errors path="address.pincode" cssClass="error" /></td>
            </tr>
            <tr>
                <td><spring:message code="lbl.address.state" text="State" /></td>
                <td><form:input path="address.state" /></td>
                <td><form:errors path="address.state" cssClass="error" /></td>
            </tr>
             <tr>
                <td><spring:message code="lbl.address.district" text="District" /></td>
                <td><form:input path="address.district" /></td>
                <td><form:errors path="address.district" cssClass="error" /></td>
            </tr>
            <tr>
                <td colspan="3"><input type="submit" value="Add Employee"/></td>
            </tr>
        </table>
    </form:form>
</body>
</html>