<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.shuangyulin.domain.ClassInfo" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //��ȡ���е�studentClassNumber��Ϣ
    List<ClassInfo> classInfoList = (List<ClassInfo>)request.getAttribute("classInfoList");
    String username=(String)session.getAttribute("username");
    if(username==null){
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    }
%>
<HTML><HEAD><TITLE>����ѧ����Ϣ</TITLE> 
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
/*��֤����*/
function checkForm() {
    var studentNumber = document.getElementById("student_QQ287307421.studentNumber").value;
    if(studentNumber=="") {
        alert('������ѧ��!');
        return false;
    }
    var studentName = document.getElementById("student_QQ287307421.studentName").value;
    if(studentName=="") {
        alert('����������!');
        return false;
    }
    var studentPassword = document.getElementById("student_QQ287307421.studentPassword").value;
    if(studentPassword=="") {
        alert('�������¼����!');
        return false;
    }
    var studentSex = document.getElementById("student_QQ287307421.studentSex").value;
    if(studentSex=="") {
        alert('�������Ա�!');
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
    <s:form action="Student_QQ287307421/Student_QQ287307421_AddStudent_QQ287307421.action" method="post" id="student_QQ287307421AddForm" onsubmit="returncheckForm();"  enctype="multipart/form-data" name="form1">
<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

  <tr>
    <td width=30%>ѧ��:</td>
    <td width=70%><input id="student_QQ287307421.studentNumber" name="student_QQ287307421.studentNumber" type="text" /></td>
  </tr>

  <tr>
    <td width=30%>����:</td>
    <td width=70%><input id="student_QQ287307421.studentName" name="student_QQ287307421.studentName" type="text" size="12" /></td>
  </tr>

  <tr>
    <td width=30%>��¼����:</td>
    <td width=70%><input id="student_QQ287307421.studentPassword" name="student_QQ287307421.studentPassword" type="text" size="30" /></td>
  </tr>

  <tr>
    <td width=30%>�Ա�:</td>
    <td width=70%><input id="student_QQ287307421.studentSex" name="student_QQ287307421.studentSex" type="text" size="2" /></td>
  </tr>

  <tr>
    <td width=30%>���ڰ༶:</td>
    <td width=70%>
      <select name="student_QQ287307421.studentClassNumber.classNumber">
      <%
        for(ClassInfo classInfo:classInfoList) {
      %>
          <option value='<%=classInfo.getClassNumber() %>'><%=classInfo.getClassName() %></option>
      <%
        }
      %>
    </td>
  </tr>

  <tr>
    <td width=30%>��������:</td>
    <td width=70%><input type="text" readonly id="student_QQ287307421.studentBirthday"  name="student_QQ287307421.studentBirthday" onclick="setDay(this);"/></td>
  </tr>

  <tr>
    <td width=30%>������ò:</td>
    <td width=70%><input id="student_QQ287307421.studentState" name="student_QQ287307421.studentState" type="text" size="20" /></td>
  </tr>

  <tr>
    <td width=30%>ѧ����Ƭ:</td>
    <td width=70%><input id="studentPhotoFile" name="studentPhotoFile" type="file" size="50" /></td>
  </tr>

  <tr>
    <td width=30%>��ϵ�绰:</td>
    <td width=70%><input id="student_QQ287307421.studentTelephone" name="student_QQ287307421.studentTelephone" type="text" size="20" /></td>
  </tr>

  <tr>
    <td width=30%>ѧ������:</td>
    <td width=70%><input id="student_QQ287307421.studentEmail" name="student_QQ287307421.studentEmail" type="text" size="30" /></td>
  </tr>

  <tr>
    <td width=30%>��ϵqq:</td>
    <td width=70%><input id="student_QQ287307421.studentQQ" name="student_QQ287307421.studentQQ" type="text" size="20" /></td>
  </tr>

  <tr>
    <td width=30%>��ͥ��ַ:</td>
    <td width=70%><input id="student_QQ287307421.studentAddress" name="student_QQ287307421.studentAddress" type="text" size="100" /></td>
  </tr>

  <tr>
    <td width=30%>������Ϣ:</td>
    <td width=70%><input id="student_QQ287307421.studentMemo" name="student_QQ287307421.studentMemo" type="text" size="100" /></td>
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