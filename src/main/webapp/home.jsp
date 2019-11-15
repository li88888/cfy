<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
</head>
<body>
<table id="a1" >
<tr><th>id</th><th>name</th><th>memo</th><th>state</th></tr>
<c:forEach var="user" items="${data}" >
<tr>
<td>
${user.point_id}
</td>
<td>${user.point_name}</td>
<td>${user.memo}</td>
<td>${user.state}</td>
</tr>
</c:forEach>
</table>

<input type="submit" onclick="previousPage()" value="上一页">
<i id="a2">${y}</i>
<input type="submit" onclick="nextPage()" value="下一页">

<script type="text/javascript">

var y=1;

//上一页事件
function previousPage(){
//当点击上一页按钮时就拿当前页减去1

y =y-1;
$("#a2").html("");
$("#a2").append(y);
//判断当前页减去1后是否小于1，如果是则说明当前页就是第一页然后提示用户并结束方法
if(y <= 0){
alert("已经是第一页了！", { icon: 0, title: '提示' });
$("#a2").html("");
$("#a2").append(1);
return;
}

$.getJSON("home1","y="+((y*10)-10),function(data){
	$("#a1").html("");
	var str="<tr><th>id</th><th>name</th><th>memo</th><th>state</th></tr>";
	 $("#a1").append(str);
	
	for (var o in data){
        var point_id = data[o].point_id;
        var point_name = data[o].point_name;
        var memo = data[o].memo;
        var state = data[o].state;
        /* alert(memo); */
       	var str1 = "<tr><td>"+point_id+"</td><td>"+point_name+"</td><td>"+memo+"</td><td>"+state+"</td></tr>";
        $("#a1").append(str1);
       

    } 
    

});

}
//下一页
function nextPage(){
//当点击下一页按钮时就拿当前页加1

y = y+1;
$("#a2").html("");
$("#a2").append(y);
//判断当前页加1后是否大于总页数，如果是则说明当前页就是最后一页了然后提示用户并结束方法

$.getJSON("home1","y="+((y*10)-10),function(data){
	 if(data==""){
	     	alert("没有了！", { icon: 0, title: '提示' });
	     	y=y-1;
	     	$("#a2").html("");
	     	$("#a2").append(y);
	     	
	     	return;
	     }
	$("#a1").html("");
	var str="<tr><th>id</th><th>name</th><th>memo</th><th>state</th></tr>";
	 $("#a1").append(str);
	for (var o in data){
        var point_id = data[o].point_id;
        var point_name = data[o].point_name;
        var memo = data[o].memo;
        var state = data[o].state;
        /* alert(memo); */
       	var str1 = "<tr><td>"+point_id+"</td><td>"+point_name+"</td><td>"+memo+"</td><td>"+state+"</td></tr>";
        $("#a1").append(str1);
        

    } 
    

});

}


</script>
</body>
</html>