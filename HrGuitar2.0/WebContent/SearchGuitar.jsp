<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询吉他</title>
</head>
<body>
	<h1 align="center">搜索你想要的Guitar</h1></p>
	<form method="get"action="SearchGuitarServlet">
		
		<label>&emsp;制造商：&emsp;</label><input type="text" name="builder"><br /> 
		<br> 
		<label>&emsp;型&emsp;号：&emsp;</label><input type="text" name="model"><br /> 
		<br> 
		<label>&emsp;类&emsp;型：&emsp;</label><input type="text" name="type"><br />
		<br>  
		<label>背面木料：&emsp;</label><input type="text" name="bw"><br />
		<br> 
		<label>正面木料：&emsp;</label><input type="text" name="tw"><br /> 
		<br> 
		&emsp;&emsp;&emsp;<input type="submit" value="查询">
	</form>
</body>
</html>