<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%@ page import="com.shuangyulin.domain.StudentSelectCourseInfo" %>
<%@ page import="com.shuangyulin.domain.Student_QQ287307421" %>
<%@ page import="com.shuangyulin.domain.CourseInfo_QQ254540457" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //��ȡ���е�studentNumber��Ϣ
    List<Student_QQ287307421> student_QQ287307421List = (List<Student_QQ287307421>)request.getAttribute("student_QQ287307421List");
    //��ȡ���е�courseNumber��Ϣ
    List<CourseInfo_QQ254540457> courseInfo_QQ254540457List = (List<CourseInfo_QQ254540457>)request.getAttribute("courseInfo_QQ254540457List");
    StudentSelectCourseInfo studentSelectCourseInfo = (StudentSelectCourseInfo)request.getAttribute("studentSelectCourseInfo");

    String username=(String)session.getAttribute("username");
    if(username==null){
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    }
%>
<HTML><HEAD><TITLE>�޸�ѡ����Ϣ</TITLE>
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
/*��֤��*/
function checkForm() {
    return true; 
}
 </script>
</HEAD>
<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />
<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top ><s:form action="StudentSelectCourseInfo/StudentSelectCourseInfo_ModifyStudentSelectCourseInfo.action" method="post" onsubmit="returncheckForm();" enctype="multipart/form-data" name="form1">
<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">
  <tr>
    <td width=30%>��¼���:</td>
    <td width=70%><input id="studentSelectCourseInfo.selectId" name="studentSelectCourseInfo.selectId" type="text" value="<%=studentSelectCourseInfo.getSelectId() %>" readOnly /></td>
  </tr>

  <tr>
    <td width=30%>ѧ������:</td>
    <td width=70%>
      <select name="studentSelectCourseInfo.studentNumber.studentNumber">
      <%
        for(Student_QQ287307421 student_QQ287307421:student_QQ287307421List) {
          String selected = "";
          if(student_QQ287307421.getStudentNumber().equals(studentSelectCourseInfo.getStudentNumber().getStudentNumber()))
            selected = "selected";
      %>
          <option value='<%=student_QQ287307421.getStudentNumber() %>' <%=selected %>><%=student_QQ287307421.getStudentName() %></option>
      <%
        }
      %>
    </td>
  </tr>

  <tr>
    <td width=30%>�γ̶���:</td>
    <td width=70%>
      <select name="studentSelectCourseInfo.courseNumber.courseNumber">
      <%
        for(CourseInfo_QQ254540457 courseInfo_QQ254540457:courseInfo_QQ254540457List) {
          String selected = "";
          if(courseInfo_QQ254540457.getCourseNumber().equals(studentSelectCourseInfo.getCourseNumber().getCourseNumber()))
            selected = "selected";
      %>
          <option value='<%=courseInfo_QQ254540457.getCourseNumber() %>' <%=selected %>><%=courseInfo_QQ254540457.getCourseName() %></option>
      <%
        }
      %>
    </td>
  </tr>

  <tr bgcolor='#FFFFFF'>
      <td colspan="4" align="center">
        <input type='submit' name='button' value='����' >
        &nbsp;&nbsp;
        <input type="reset" value='��д' />
      </td>
    </tr>

</table>
</s:form>
   </TD></TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>
