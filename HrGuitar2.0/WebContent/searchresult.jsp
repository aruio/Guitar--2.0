<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="util.Util" %>
<%@ page import="model.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Result</title>
</head>
<body>
<h2>你想要的Guitar</h2>
<style>
body{text-align: center}
</style>
<table  style="width:100%"  >
		<thead>
<tr bgcolor="#4F81BD"style="color: #fff;height:60px">
	<td align="center">SerialNumber</td>
	<td align="center">PRICE</td>
	<td align="center">BUILDER</td>
	<td align="center">MODEL</td>
	<td align="center">TYPE</td>
	<td align="center">BACKWOOD</td>
	<td align="center">TOPWOOD</td>
</tr>
		</thead>
		<tbody>
	<% 
		Inventory inventory = new Inventory();
		inventory = (Inventory)request.getAttribute("result");
		List guitars = new ArrayList();
		guitars = inventory.getGuitars();
		System.out.print(guitars.size());
		if(guitars.size()>0){
		Iterator i = guitars.iterator();
		while(i.hasNext()){
			Guitar guitar = (Guitar) i.next();
		 %>
		 <tr bgcolor="${status.index%2 == 0?'#D0D8E8':'#E9EDF4'}" style="height:60px" >

		 <td align="center">
		 <%=guitar.getSerialNumber() %>
		 </td>
		 
		 <td align="center">
		 <%=guitar.getPrice() %>
		 </td>
		 
		 <td align="center">
		 <%=guitar.getGuitarSpec().getBuilder() %>
		 </td>
		 
		 <td align="center">
		 <%=guitar.getGuitarSpec().getModel() %>
		 </td>
		 
		 <td align="center">
		 <%=guitar.getGuitarSpec().getType() %>
		 </td>
		 
		 <td align="center">
		 <%=guitar.getGuitarSpec().getBackWood() %>
		 </td>
		 
		 <td align="center">
		 <%=guitar.getGuitarSpec().getTopWood() %>
		 </td>
		 </tr>
		 
		
		 <%
			}
		%>
		
		 <%
		}else{
		%>
		无查询结果
		<% 	
		}
	%>
	</tbody>
</table>

<a href="SearchGuitar.jsp" style="display:inline-block;margin-top:20px;">继续查询 </a>
</body>
</html>