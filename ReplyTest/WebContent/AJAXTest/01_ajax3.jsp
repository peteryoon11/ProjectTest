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
			   url:"test.xml",
			   dataType:"xml",
			   success:function(responseData,status,xhr){
				   var mesg = "";
				$(responseData).find("man").each(function(idx,obj){
					   var name = $(this).find("name").text();
					   var age =  $(this).find("age").text();
					   var info = "이름:"+name+" 나이:"+age;
					   mesg += info;
				   });

				   $("#result").html(mesg+"<br>");
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
 <button id="add">xml</button>
 <span id="result"></span>
</body>
</html>





