<%@ page contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
<%@taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cookie&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
${username}님, 환영합니다!<br/><hr/>
<h1>jjapstagram</h1>
<style type="text/css">
	.container { width: 90%; margin: 20px auto; }
	h1 { margin: 10; font-family: 'Cookie', cursive; text-align: center; font-size: 60px; }
	table { font-family: 'Nanum Myeongjo', serif; width: 100%; border-top: 1px solid #444444; border-collapse: collapse; font-size: 26px;  }
    tr { font-family: 'Nanum Myeongjo', serif; border-bottom: 1px solid #444444; text-align: center; font-size: 24px; }
    .c_content { font-family: 'Nanum Myeongjo', serif; border-bottom: 1px solid #444444; text-align: center; font-size: 18px; }
    .c_no, .c_date { font-family: 'Nanum Myeongjo', serif; border-bottom: 1px solid #444444; text-align: center; font-size: 18px; }
    label { font-family: 'Cookie', cursive; text-align: center; font-size: 40px; }
    textarea { width: 500px; height: 100px;  }
</style>
</head>
<body>
	<div class="container">
		<table align="center">
			<thead>
				<tr>
					<th>No</th>
					<th>Content</th>
					<th>Post</th>
				</tr>
			</thead>
			<q:forEach items="${list}" var="t">
				<tbody>
					<tr>
						<td class="c_no" width="5%">${t.no}</td>
						<td class="c_content" width="65%">${t.content}</td>
						<td class="c_date" align="right">
							${t.postdate.substring(2,10)} / 
							${t.postdate.substring(11,13)} :
							${t.postdate.substring(14,16)}
						</td>
					</tr>
				</tbody>
			</q:forEach>
		</table>
		</br>
		<form method="POST" action="add2.pknu">
			<label for="abcd">post</label>
			<input type="image" src="arrow.png" width="20px" height="20px"/>
			<br/>
			<textarea type="tel" placeholder="please write your coment" id="abcd" name="content" rows="5"></textarea>
		</form>
	</div>

</body>
</html><%--

좋아요 기능 구현하려다가 놔둔거. 백업
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		var list = ['heart','like'];
		$("img").click(function() {
			var idx = $(this).attr("lc");
			idx++;
			idx = idx % 2;
			$(this).attr("src","hearts/"+list[idx]+".png");
			$(this).attr("lc",idx);
		});
	});
</script>
--%>