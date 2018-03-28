<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<script src="https://cdn.jsdelivr.net/npm/vue"></script>

<body>
<div id="app">
  {{ message }}
</div>
<!-- JavaScript 代码需要放在尾部（指定的HTML元素之后） -->
<script>
new Vue({
    el:'#app',
    data: {
        message:'Hello World!'
    }
});
</script>
</body>
</html>