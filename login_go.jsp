<%@ page contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cookie&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<style text="css/text">
	p { font-family: 'Nanum Myeongjo', serif; text-align: center; font-size: 20px; }
	.container { width: 500px; margin: 150px auto; }
</style>
</head>
<body>
	
	<div class="container">
	
		<p>로그인을 하셔야 이용이 가능합니다.</p>
		<p>아래의 버튼을 눌러 로그인 창으로 가주시길 바랍니다.</p>
		
		<form method="POST" action="login.pknu">
			<input type="submit" value="로그인 창으로 이동" style="margin:100px;width:287px;height:50px;font-size:20px;"/> 
		</form>
	</div>
		
</body>
</html>