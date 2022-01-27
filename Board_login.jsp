<%@ page contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cookie&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<h1>jjapstagram</h1>
<p>로그인을 하셔야 이용이 가능합니다.</p>
<style type="text/css">
	h1 { font-family: 'Cookie', cursive; text-align: center; font-size: 120px; }
	p { font-family: 'Nanum Myeongjo', serif; text-align: center; font-size: 20px; }
	fieldset { width: 300px; margin: 20px auto; }
	.container { width: 300px; padding: 40px 200px 40px 200px; }
</style>
</head>
<body>
	<fieldset>
		<div class="container">
			<form method="POST" action="login2.pknu">
				<label for="user_id"></label>
				<input type="text" id="user_id" placeholder="  아이디를 입력하세요." name="username" style="width:280px;height:50px;font-size:20px;" autofocus/>
				<br/>
				<label for="user_pw"></label>
				<input type="password" id="user_pw" placeholder="  비밀번호를 입력하세요." name="password" style="width:280px;height:50px;font-size:20px;"/>
				<br/>
				<br/>
				<input type="submit" value="LOGIN" style="width:287px;height:50px;font-size:20px;"/> 
			</form>
		</div>
	</fieldset>
	
</body>
</html>