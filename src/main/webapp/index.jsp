<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>鑫欣汇</title>
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<h2>页面加载中</h2>
	<script type="text/javascript">
		$(document).ready(function(){
			window.location.href = "<%= request.getContextPath()%>/index";
		});
	</script>
</body>
</html>