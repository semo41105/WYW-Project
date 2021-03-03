<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
<script type="text/javascript">
	onload = function() {
		var id = opener.document.getElementsByName("userid")[0].value;

		document.getElementsByName("id")[0].value = id;
	}

	function confirm(bool) {
		if (bool == "true") {
			opener.document.getElementsByName("userpw")[0].focus();
			opener.document.getElementsByName("userid")[0].title = "y";
		} else {
			opener.document.getElementsByName("userid")[0].focus();
		}
		self.close();
	}
</script>

</head>
<body>

   <% String idnotused = request.getParameter("idnotused"); %>

 <table border="1">
        <tr>
            <td><input type="text" name="id"></td>
        </tr>        
        <tr>
            <td><%=idnotused.equals("true") ? "아이디 생성 가능" : "중복된 아이디 존재"%></td>
        </tr>
        <tr>
            <td>
                <input type="button" value="확인" onclick="confirm('<%=idnotused%>');">
            </td>
        </tr>
    </table>

</body>
</html>