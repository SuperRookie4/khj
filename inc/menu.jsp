<%@page import="welfareData.welMenu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<welMenu> menus = (ArrayList<welMenu>)request.getAttribute("menus");
%>    
<table width="100%">
<%if (menus != null) {
 for(welMenu m : menus) {%>
	<tr>
		<td><a href="?cate=<%=m.getCate() %>&main=<%=m.getMain() %>"><%=m.getTitle() %></a></td>
	</tr>
<%}} %>	

</table>