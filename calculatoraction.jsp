<%@ page errorPage="error.jsp" %>
<!DOCTYPE html> 
<html> 
    <head> 
        <center>Result for <%=request.getParameter("operation")%></center>
    </head> 
    <body> 
        <%-- Here we fetch the data using the name attribute  
             of the text from the previous page 
        --%> 
        <%  
          String Firstnumber= request.getParameter("firstnumber"); 
          String Secondnumber=request.getParameter("secondnumber");

          int i=Integer.parseInt(Firstnumber);
          int j=Integer.parseInt(Secondnumber); 

         int k=0;
         String str=request.getParameter("operation");
         if(str.equals("addition"))
         k=i+j;

         if(str.equals("subtraction"))
         k=i-j;

         if(str.equals("multiplication"))
         k=i*j;

         if(str.equals("division"))
         k=i/j;
         %> 
    </body> 
    <%-- Here we use the JSP expression tag to display value  
         stored in a variable --%> 
    <h2><b>YOUR ANSWER is  :</b> </h2><%=k%>
    
</html>