<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/js/easyui/themes/icon.css">
<script type="text/javascript" src="<%=basePath%>/js/easyui/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>字典项列表</title>
<script type="text/javascript">
var url="<%=basePath%>/CommonDicServlet?requestName=ListDicItem";
$(function(){
	$("#dataList").datagrid({
		url:url,
		fitColumns: true,
		method:"POST",
		columns:[[
		          {field:"uuid",title:"uuid",hidden:true},
		          {field:"dic_id",title:"字典标识",width:150},
		          {field:"item_key",title:"字典项标识",width:150},
		          {field:"item_value",title:"字典项值",width:150},
		          {field:"sys_id",title:"系统标识",width:100},
		          {field:"remark",title:"备注",width:200}
		          ]]
		
	});
	
});
</script>


</head>
<body>
<table id="dataList">
</table>
</body>
</html>