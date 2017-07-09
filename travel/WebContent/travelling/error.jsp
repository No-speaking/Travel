<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
	<head>
    	<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>Proton - Admin Template</title>		
	<script src="assets/js/q.js"></script>
	
		    <script src="assets/build/react.js"></script>
    <script src="assets/build/react-dom.js"></script>
    <script src="assets/build/browser.min.js"></script>
	 
	</head>
</head>
<body>
<div id="example"></div>
 <script type="text/babel">
      var arr = [
        <h1>错误!</h1>,
        <h2>大错特错</h2>,
      ];
      ReactDOM.render(
        <div>{arr}</div>,
        document.getElementById('example')
      );
    </script>
</body>
</html>