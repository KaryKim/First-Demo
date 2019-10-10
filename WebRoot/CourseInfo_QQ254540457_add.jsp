<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>
<%@ page import="com.shuangyulin.domain.Teacher_QQ287307421" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //获取所有的courseTeacher信息
    List<Teacher_QQ287307421> teacher_QQ287307421List = (List<Teacher_QQ287307421>)request.getAttribute("teacher_QQ287307421List");
    String username=(String)session.getAttribute("username");
    if(username==null){
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    }
%>
<HTML><HEAD><TITLE>添加课程信息</TITLE> 
<STYLE type=text/css>
BODY {
    	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
.label {font-style.:italic; }
.errorLabel {font-style.:italic;  color:red; }
.errorMessage {font-weight:bold; color:red; }
</STYLE>
 <script src="<%=basePath %>calendar.js"></script>
<script language="javascript">
/*验证表单*/
function checkForm() {
    var courseNumber = document.getElementById("courseInfo_QQ254540457.courseNumber").value;
    if(courseNumber=="") {
        alert('请输入课程编号!');
        return false;
    }
    var courseName = document.getElementById("courseInfo_QQ254540457.courseName").value;
    if(courseName=="") {
        alert('请输入课程名称!');
        return false;
    }
    return true; 
}
 </script>
</HEAD>

<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />
<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
    <s:form action="CourseInfo_QQ254540457/CourseInfo_QQ254540457_AddCourseInfo_QQ254540457.action" method="post" id="courseInfo_QQ254540457AddForm" onsubmit="returncheckForm();"  enctype="multipart/form-data" name="form1">
<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

  <tr>
    <td width=30%>课程编号:</td>
    <td width=70%><input id="courseInfo_QQ254540457.courseNumber" name="courseInfo_QQ254540457.courseNumber" type="text" /></td>
  </tr>

  <tr>
    <td width=30%>课程名称:</td>
    <td width=70%><input id="courseInfo_QQ254540457.courseName" name="courseInfo_QQ254540457.courseName" type="text" size="20" /></td>
  </tr>

  <tr>
    <td width=30%>上课老师:</td>
    <td width=70%>
      <select name="courseInfo_QQ254540457.courseTeacher.teacherNumber">
      <%
        for(Teacher_QQ287307421 teacher_QQ287307421:teacher_QQ287307421List) {
      %>
          <option value='<%=teacher_QQ287307421.getTeacherNumber() %>'><%=teacher_QQ287307421.getTeacherName() %></option>
      <%
        }
      %>
    </td>
  </tr>

  <tr>
    <td width=30%>上课时间:</td>
    <td width=70%><input id="courseInfo_QQ254540457.courseTime" name="courseInfo_QQ254540457.courseTime" type="text" size="40" /></td>
  </tr>

  <tr>
    <td width=30%>上课地点:</td>
    <td width=70%><input id="courseInfo_QQ254540457.coursePlace" name="courseInfo_QQ254540457.coursePlace" type="text" size="40" /></td>
  </tr>

  <tr>
    <td width=30%>课程学分:</td>
    <td width=70%><input id="courseInfo_QQ254540457.courseScore" name="courseInfo_QQ254540457.courseScore" type="text" size="8" /></td>
  </tr>

  <tr>
    <td width=30%>附加信息:</td>
    <td width=70%><input id="courseInfo_QQ254540457.courseMemo" name="courseInfo_QQ254540457.courseMemo" type="text" size="100" /></td>
  </tr>

  <tr bgcolor='#FFFFFF'>
      <td colspan="4" align="center">
        <input type='submit' name='button' value='保存' >
        &nbsp;&nbsp;
        <input type="reset" value='重写' />
      </td>
    </tr>

</table>
</s:form>
   </TD></TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>
