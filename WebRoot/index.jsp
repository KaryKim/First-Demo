<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%> <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<title>�������ϵͳ</title>
<link href="<%=basePath %>css/index.css" rel="stylesheet" type="text/css" />
 </head>
<body>
<div id="container">
	<div id="banner"><img src="<%=basePath %>images/logo.gif" /></div>
	<div id="globallink">
		<ul>
			<li><a href="<%=basePath %>index.jsp">��ҳ</a></li>
			<li><a href="<%=basePath %>CollegeInfo/CollegeInfo_FrontQueryCollegeInfo.action" target="OfficeMain">ѧԺ��Ϣ</a></li> 
			<li><a href="<%=basePath %>SpecialFieldInfo/SpecialFieldInfo_FrontQuerySpecialFieldInfo.action" target="OfficeMain">רҵ��Ϣ</a></li> 
			<li><a href="<%=basePath %>ClassInfo/ClassInfo_FrontQueryClassInfo.action" target="OfficeMain">�༶��Ϣ</a></li> 
			<li><a href="<%=basePath %>Student_QQ287307421/Student_QQ287307421_FrontQueryStudent_QQ287307421.action" target="OfficeMain">ѧ����Ϣ</a></li> 
			<li><a href="<%=basePath %>Teacher_QQ287307421/Teacher_QQ287307421_FrontQueryTeacher_QQ287307421.action" target="OfficeMain">��ʦ��Ϣ</a></li> 
			<li><a href="<%=basePath %>CourseInfo_QQ254540457/CourseInfo_QQ254540457_FrontQueryCourseInfo_QQ254540457.action" target="OfficeMain">�γ���Ϣ</a></li> 
			<li><a href="<%=basePath %>StudentSelectCourseInfo/StudentSelectCourseInfo_FrontQueryStudentSelectCourseInfo.action" target="OfficeMain">ѡ����Ϣ</a></li> 
			<li><a href="<%=basePath %>ScoreInfo/ScoreInfo_FrontQueryScoreInfo.action" target="OfficeMain">�ɼ���Ϣ</a></li> 
			<li><a href="<%=basePath %>News/News_FrontQueryNews.action" target="OfficeMain">������Ϣ</a></li> 
		</ul>
		<br />
	</div> 
	<div id="main">
	 <iframe id="frame1" src="<%=basePath %>desk.jsp" name="OfficeMain" width="100%" height="100%" scrolling="yes" marginwidth=0 marginheight=0 frameborder=0 vspace=0 hspace=0 >
	 </iframe>
	</div>
	<div id="footer">
		<p>˫������� QQ:287307421��254540457 �ֻ�:13908064703 &copy;��Ȩ���� <a href="http://taochengxu.taobao.com" target="_blank">˫�����Ա���</a>&nbsp;&nbsp;<a href="<%=basePath%>login/login_view.action"><font color=red>��̨��½</font></a></p>
	</div>
</div>
</body>
</html>
