<%@page import="test.todo.dto.TodoDto"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //MemberDao 객체의 참조값을 얻어와서 
   TodoDao dao=TodoDao.getInstance();
   //할일 목록을 얻어온다.
   List<TodoDto> list=dao.getList();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="todo" name="thisPage"/>	
	</jsp:include>
	
   <div class="container">
      <a href="insertform.jsp">할일 추가</a>
      <h1>회원 목록 입니다.</h1>
      <table>
         <thead>
            <tr>
               <th>번호</th>
               <th>내용</th>
               <th>등록일</th>
               <th>수정</th>
               <th>삭제</th>
            </tr>
         </thead>
         <tbody>
         <%for(TodoDto tmp:list){ %>
            <tr>
               <td><%=tmp.getNum() %></td>
               <td><%=tmp.getContent() %></td>
               <td><%=tmp.getRegdate() %></td>
               <td><a href="updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
               <td><a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
            </tr>
         <%} %>
         </tbody>
      </table>
   </div>
</body>
</html>
