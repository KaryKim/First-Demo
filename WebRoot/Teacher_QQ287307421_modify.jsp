<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%@ page import="com.shuangyulin.domain.Teacher_QQ287307421" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    Teacher_QQ287307421 teacher_QQ287307421 = (Teacher_QQ287307421)request.getAttribute("teacher_QQ287307421");

    String username=(String)session.getAttribute("username");
    if(username==null){
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    }
%>
<HTML><HEAD><TITLE>�޸Ľ�ʦ��Ϣ</TITLE>
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
    var teacherNumber = document.getElementById("teacher_QQ287307421.teacherNumber").value;
    if(teacherNumber=="") {
        alert('�������ʦ���!');
        return false;
    }
    var teacherName = document.getElementById("teacher_QQ287307421.teacherName").value;
    if(teacherName=="") {
        alert('�������ʦ����!');
        return false;
    }
    var teacherSex = document.getElementById("teacher_QQ287307421.teacherSex").value;
    if(teacherSex=="") {
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
    <TD align="left" vAlign=top ><s:form action="Teacher_QQ287307421/Teacher_QQ287307421_ModifyTeacher_QQ287307421.action" method="post" onsubmit="returncheckForm();" enctype="multipart/form-data" name="form1">
<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">
  <tr>
    <td width=30%>��ʦ���:</td>
    <td width=70%><input id="teacher_QQ287307421.teacherNumber" name="teacher_QQ287307421.teacherNumber" type="text" value="<%=teacher_QQ287307421.getTeacherNumber() %>" readOnly /></td>
  </tr>

  <tr>
    <td width=30%>��ʦ����:</td>
    <td width=70%><input id="teacher_QQ287307421.teacherName" name="teacher_QQ287307421.teacherName" type="text" size="12" value='<%=teacher_QQ287307421.getTeacherName() %>'/></td>
  </tr>

  <tr>
    <td width=30%>��¼����:</td>
    <td width=70%><input id="teacher_QQ287307421.teacherPassword" name="teacher_QQ287307421.teacherPassword" type="text" size="30" value='<%=teacher_QQ287307421.getTeacherPassword() %>'/></td>
  </tr>

  <tr>
    <td width=30%>�Ա�:</td>
    <td width=70%><input id="teacher_QQ287307421.teacherSex" name="teacher_QQ287307421.teacherSex" type="text" size="2" value='<%=teacher_QQ287307421.getTeacherSex() %>'/></td>
  </tr>

  <tr>
    <td width=30%>��������:</td>
    <td width=70%><input type="text" readonly  id="teacher_QQ287307421.teacherBirthday"  name="teacher_QQ287307421.teacherBirthday" onclick="setDay(this);" value='<%=teacher_QQ287307421.getTeacherBirthday() %>'/></td>
  </tr>

  <tr>
    <td width=30%>��ְ����:</td>
    <td width=70%><input type="text" readonly  id="teacher_QQ287307421.teacherArriveDate"  name="teacher_QQ287307421.teacherArriveDate" onclick="setDay(this);" value='<%=teacher_QQ287307421.getTeacherArriveDate() %>'/></td>
  </tr>

  <tr>
    <td width=30%>���֤��:</td>
    <td width=70%><input id="teacher_QQ287307421.teacherCardNumber" name="teacher_QQ287307421.teacherCardNumber" type="text" size="20" value='<%=teacher_QQ287307421.getTeacherCardNumber() %>'/></td>
  </tr>

  <tr>
    <td width=30%>��ϵ�绰:</td>
    <td width=70%><input id="teacher_QQ287307421.teacherPhone" name="teacher_QQ287307421.teacherPhone" type="text" size="20" value='<%=teacher_QQ287307421.getTeacherPhone() %>'/></td>
  </tr>

  <tr>
    <td width=30%>��ʦ��Ƭ:</td>
    <td width=70%><img src="<%=basePath %><%=teacher_QQ287307421.getTeacherPhoto() %>" width="200px" border="0px"/><br/>
    <input type="hidden" name="teacher_QQ287307421.teacherPhoto" value="<%=teacher_QQ287307421.getTeacherPhoto() %>" />
    <input id="teacherPhotoFile" name="teacherPhotoFile" type="file" size="50" /></td>
  </tr>
  <tr>
    <td width=30%>��ͥ��ַ:</td>
    <td width=70%><input id="teacher_QQ287307421.teacherAddress" name="teacher_QQ287307421.teacherAddress" type="text" size="100" value='<%=teacher_QQ287307421.getTeacherAddress() %>'/></td>
  </tr>

  <tr>
    <td width=30%>������Ϣ:</td>
    <td width=70%><input id="teacher_QQ287307421.teacherMemo" name="teacher_QQ287307421.teacherMemo" type="text" size="100" value='<%=teacher_QQ287307421.getTeacherMemo() %>'/></td>
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
