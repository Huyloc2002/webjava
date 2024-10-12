<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Employee Page!</title>
</head>
<body>
	<h1>INSERT SRUDENT</h1>
	<h3 style="color:red">${err }</h3>
	<form:form action="insertStudent" modelAttribute="s" method="post">
		<table>
			<tr>
				<td>Student Name:</td>
				<td><form:input path="stuName"/></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td>
					<form:radiobutton path="gender" value="true"/>male
					<form:radiobutton path="gender" value="false"/>female
				</td>
			</tr>
			<tr>
				<td>Birhtday:</td>
				<td><form:input path="birthday" type="date"/></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:textarea path="address"/></td>
			</tr>
			<tr>
				<td>Classes: </td>
				<td>
					<form:select path="clas.classId">
						<form:options items="${listClas}" itemLabel="className" itemValue="classId"/>
					</form:select>
				</td>
			</tr>
					<tr>
				<td></td>
				<td>
					<input type="submit" value="Insert"/>
					<input type="reset" value="Clear"/>
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>