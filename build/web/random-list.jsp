<%-- 
    Document   : date-time
    Created on : 30 de ago de 2021, 21:08:41
    Author     : root
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 int n=5;
 String error = null;
  if(request.getParameter("n") == null)
{
    error="Não foi informado o parâmetros necessário n";
 }else{
      
 try{
     n = Integer.parseInt(request.getParameter("n"));       
    }catch (Exception e) {
        error = "o valor informdo como parametro 'n' ('"
                +request.getParameter("n")+"') não é um número inteiro válido";
    }
  }

 
%>




<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Lista de Números Aleatórios</h3>
        <h4><a href="index.html">voltar</a></h4>
        <hr/>
        <%if (error !=null) {%>
        <div style="color: red"><%=error%></div>
        <%}else{%>
        <table>
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>
            <%for(int i =1; i<=n; i++){%>
            <tr>
               <td><%=i%></td>
               <td><%=((int)(Math.random()*100)) %></td>
            </tr>
        <%}%>
         </table>
         <%}%>
         </br>
    </div> <form action="random-list.jsp">
        <input type="number" name="n" value="<%= n %>"/>
            <input type="submit" value="Gerar"/>
            
        </form>
    </body>
</html>
