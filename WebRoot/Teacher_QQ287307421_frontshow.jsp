<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%@ page import="com.shuangyulin.domain.Teacher_QQ287307421" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    Teacher_QQ287307421 teacher_QQ287307421 = (Teacher_QQ287307421)request.getAttribute("teacher_QQ287307421");

%>
<HTML><HEAD><TITLE>�鿴��ʦ��Ϣ</TITLE>
<STYLE type=text/css>
body{margin:0px; font-size:12px; background-image:url(<%=basePath%>images/bg.jpg); background-position:bottom; background-repeat:repeat-x; background-color:#A2D5F0;}
.STYLE1 {color: #ECE9D8}
.label {font-style.:italic; }
.errorLabel {font-style.:italic;  color:red; }
.errorMessage {font-weight:bold; color:red; }
</STYLE>
 <script src="<%=basePath %>calendar.js"></script>
</HEAD>
<BODY><br/><br/>
<s:fielderror cssStyle="color:red" />
<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top ><s:form action="" method="post" onsubmit="returncheckForm();" enctype="multipart/form-data" name="form1">
<table width='100%' cellspacing='1' cellpadding='3'  class="tablewidth">
  <tr>
    <td width=30%>��ʦ���:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherNumber() %></td>
  </tr>

  <tr>
    <td width=30%>��ʦ����:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherName() %></td>
  </tr>

  <tr>
    <td width=30%>��¼����:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherPassword() %></td>
  </tr>

  <tr>
    <td width=30%>�Ա�:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherSex() %></td>
  </tr>

  <tr>
    <td width=30%>��������:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherBirthday() %></td>
  </tr>

  <tr>
    <td width=30%>��ְ����:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherArriveDate() %></td>
  </tr>

  <tr>
    <td width=30%>���֤��:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherCardNumber() %></td>
  </tr>

  <tr>
    <td width=30%>��ϵ�绰:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherPhone() %></td>
  </tr>

  <tr>
    <td width=30%>��ʦ��Ƭ:</td>
    <td width=70%><img src="<%=basePath %><%=teacher_QQ287307421.getTeacherPhoto() %>" width="200px" border="0px"/></td>
  </tr>
  <tr>
    <td width=30%>��ͥ��ַ:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherAddress() %></td>
  </tr>

  <tr>
    <td width=30%>������Ϣ:</td>
    <td width=70%><%=teacher_QQ287307421.getTeacherMemo() %></td>
  </tr>

  <tr>
      <td colspan="4" align="center">
        <input type="button" value="����" onclick="history.back();"/>
      </td>
    </tr>

</table>
</s:form>
   </TD></TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>
