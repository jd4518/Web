<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<style type="text/css">
   
   @keyframes xxx{
      from{
         opacity : 0.0;
      }
      
      50%{
         transform : rotateX(360deg);
      }
      to{
         background-color: red;
         opacity:1.0;
         transform : rotateY(360deg);
      }
   }
   h1{
      animation : xxx 2s;
   }

</style>
</head>
<body>
<h1 id="tomcat">Virtual Tomcat Test</h1>
<script type="text/javascript">
	tomcat.onclick=function(){
		alert("Tomcat Click...");
	};
</script>
<ol>
	<li><a href="map/map2.jsp">map2.jsp</a></li>
	<li></li>
	<li></li>
</ol>
   

</body>
</html>