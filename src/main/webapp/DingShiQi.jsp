<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>定时器测试</title>
</head>
<body>
	<input type="text" id="clock" />
	<script type="text/javascript">
		var int = self.setInterval("clock()", 1000);
		function clock() {
			var d = new Date();
			var t = d.toLocaleTimeString();
			document.getElementById("clock").value = t;
		}
	</script>

	<button onclick="int=window.clearInterval(int)">停止</button>

	<p>点击按钮，在等待 3 秒后弹出 "Hello"。</p>
	<button onclick="myFunction()">点我</button>

	<script>
		function myFunction() {
			setTimeout(function() {
				alert("Hello")
			}, 3000);
		}
	</script>


	<!-- <input type="text" value="" name="name" >
	<input type="submit" value="sbumit" name="name1" > -->
</body>
</html>