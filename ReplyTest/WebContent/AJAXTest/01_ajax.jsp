<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
 
   $(document).ready(function(){
	   $("#add").on("click",function(){
		  //ajax 통신
		   $.ajax({
			   type:"get",
			   url:"calc.jsp",
			   dataType:"text",
			   data:{
				  v1: $("#v1").val(),
				  v2: $("#v2").val()
			   },
			   success:function(responseData,status,xhr){
				   $("#result").text(responseData);
			   },
			   error:function(error){
				  console.log(error);   
			   }
		   });
		   
	   });
   });
</script>
</head>
<body>
 <input type="text" id="v1">
 <input type="text" id="v2">
 <button id="add">+</button>
 결과값:<span id="result"></span>
</body>
</html>





