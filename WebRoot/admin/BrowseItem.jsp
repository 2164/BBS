<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="checkSession.jsp" %>

<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/inc/css.css" type="text/css" />
</head>
<body>
  <table width="600" border=0 align=center cellpadding=2 cellspacing=1 bordercolor="#799AE1" class=tableBorder>
    <tbody>
      <tr>
        <th align=center colspan=18 style="height: 23px">�����Ŀ</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="18" align="center" class=txlrow>&nbsp;</td>
      </tr>
      <tr align="center" bgcolor="#799AE1">
        <td align="center" class="txlHeaderBackgroundAlternate">��ĿID</td>
        <td align="center" class="txlHeaderBackgroundAlternate">��Ŀ����</td>
        <td align="center" class="txlHeaderBackgroundAlternate">��Ŀ����</td>
        <td align="center" class="txlHeaderBackgroundAlternate">��Ŀ����</td>
        <td align="center" class="txlHeaderBackgroundAlternate">ɾ����Ŀ</td>
      </tr>
   <s:if test="items.isEmpty()">
		<tr bgcolor="#DEE5FA"><td colspan="5">�����κ��û���¼!</td></tr>
	</s:if>
	<s:else>      
	<s:iterator value="items" var="item">
      <tr bgcolor="#DEE5FA">
        <td align="center" class="txlrow">${item.itemid}</td>
        <td align="center" class="txlrow">${item.itemname}</td>
        <td align="center" class="txlrow">${item.itemdescription}</td>
        <td align="center" class="txlrow">
        
        	<s:if test="null == #attr.item.username">��ʱû�а���</s:if>
        	<s:else>
        		 ${item.username}
        	</s:else>
        	</td>
        <td align="center" class="txlrow"><a href="itemDelete?itemID=${item.itemid}">ɾ��</td>
      </tr>
    </s:iterator>
    </s:else>
      <tr bgcolor="#DEE5FA">
        <td colspan="18" align=center bgcolor="#DEE5FA" class=txlrow>&nbsp;</td>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan=18 align=center class=txlrow></td>
      </tr>
      <tr align="right" bgcolor="#F9FCEF">
				<td height="28" colspan="8" align="center">
					<center>
						<form action="findAllItem.action" method="post" id="pageForm"
							name="pageForm">
							<%@include file="../page.jsp"%>
						</form>
					</center>
					</td>
			</tr>
	</tbody></table>

</BODY>
  </HTML>