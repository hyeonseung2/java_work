<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인된 아이디가 있는지 확인해서
	String id=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/private/game.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">게임</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
      <img src="..." class="img-thumbnail" alt="...">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="https://maplestory.nexon.com/Home/Main">메이플스토리</a>
        </li>
        <img src="..." class="img-thumbnail" alt="...">
        <li class="nav-item">
          <a class="nav-link" href="https://sa.nexon.com/main/index.aspx">서든어택</a>
        </li>
        <img src="..." class="img-thumbnail" alt="...">
        <li class="nav-item">
          <a class="nav-link" href="https://www.leagueoflegends.com/ko-kr/">롤</a>
        </li>
        <img src="..." class="img-thumbnail" alt="...">
        <li class="nav-item">
          <a class="nav-link" href="https://overwatch.blizzard.com/ko-kr/">오버워치</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>